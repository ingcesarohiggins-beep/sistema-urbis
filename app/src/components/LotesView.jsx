import React, { useState, useEffect } from 'react';
import { logActivity } from '../utils/activityLogger';

export default function LotesView({ supabase, session, selectedProject, lots, clients, sales, installments, dailyIncome, onRefreshData }) {
  const [selectedLot, setSelectedLot] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [statusFilter, setStatusFilter] = useState('');
  const [mzFilter, setMzFilter] = useState('');
  
  const [showCreateModal, setShowCreateModal] = useState(false);
  const [loading, setLoading] = useState(false);

  // New Lot form fields
  const [mz, setMz] = useState('');
  const [lt, setLt] = useState('');
  const [areaM2, setAreaM2] = useState('');
  const [pricePerM2, setPricePerM2] = useState('');
  const [boundaries, setBoundaries] = useState([
    { lado: 'Norte', medida: '20.00m', colinda: 'Calle Principal' },
    { lado: 'Sur', medida: '20.00m', colinda: 'Lote posterior' },
    { lado: 'Este', medida: '8.00m', colinda: 'Lote vecino' },
    { lado: 'Oeste', medida: '8.00m', colinda: 'Lote vecino' }
  ]);

  const userRole = session?.user ? (session.user.role || 'admin') : 'admin'; // fallback, will check profiles in App.jsx

  // Filter lots of the selected project
  const projectLots = selectedProject 
    ? lots.filter(lot => lot.project_id === selectedProject.id)
    : [];

  const filteredLots = projectLots.filter(lot => {
    const lotName = `MZ ${lot.mz} LT ${lot.lt}`.toUpperCase();
    const query = searchQuery.toUpperCase();
    
    // Find client for this lot
    const sale = sales.find(s => s.lot_id === lot.id);
    const client = sale ? clients.find(c => c.dni === sale.client_id) : null;
    const clientName = client ? client.names.toUpperCase() : '';
    const clientDni = client ? client.dni : '';

    const matchesSearch = lotName.includes(query) || clientName.includes(query) || clientDni.includes(query);
    const matchesStatus = statusFilter ? lot.status === statusFilter : true;
    const matchesMz = mzFilter ? lot.mz === mzFilter : true;

    return matchesSearch && matchesStatus && matchesMz;
  });

  // Get distinct Manzanas (MZs) for filter dropdown
  const distinctMzs = [...new Set(projectLots.map(l => l.mz))].sort();

  // Get full data for the selected lot detail view
  const getSelectedLotData = () => {
    if (!selectedLot) return null;
    const lot = lots.find(l => l.id === selectedLot);
    if (!lot) return null;
    
    const sale = sales.find(s => s.lot_id === lot.id && s.status !== 'expropiado');
    const client = sale ? clients.find(c => c.dni === sale.client_id) : null;
    
    const lotInstallments = sale 
      ? installments.filter(inst => inst.sale_id === sale.id).sort((a, b) => a.installment_number - b.installment_number)
      : [];

    const lotPayments = dailyIncome.filter(inc => inc.lot_id === lot.id && inc.approved);
      
    return { lot, sale, client, lotInstallments, lotPayments };
  };

  const lotData = getSelectedLotData();

  // WhatsApp Message Generator
  const generateWhatsAppLink = (client, lot, lotInstallments) => {
    if (!client || !client.phone) return '#';
    
    // Calculate balances
    const totalAmount = lotInstallments.reduce((sum, inst) => sum + parseFloat(inst.amount), 0);
    const paidAmount = lotInstallments.reduce((sum, inst) => sum + parseFloat(inst.amount_paid), 0);
    const pendingAmount = totalAmount - paidAmount;
    
    const overdueList = lotInstallments.filter(inst => inst.status === 'vencido');
    const overdueCount = overdueList.length;
    const overdueAmount = overdueList.reduce((sum, inst) => sum + (parseFloat(inst.amount) - parseFloat(inst.amount_paid)), 0);
    
    const nextPending = lotInstallments.find(inst => inst.status === 'pendiente');
    
    let text = `*ESTADO DE CUENTA INMOBILIARIO*\n`;
    text += `Estimado(a) *${client.names}*,\n`;
    text += `Le enviamos el resumen de pagos para el lote *MZ ${lot.mz} LT ${lot.lt}*:\n\n`;
    text += `• *Monto Total:* S/. ${totalAmount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}\n`;
    text += `• *Monto Pagado:* S/. ${paidAmount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}\n`;
    text += `• *Saldo Restante:* S/. ${pendingAmount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}\n\n`;
    
    if (overdueCount > 0) {
      text += `⚠️ *ALERTA:* Cuenta con *${overdueCount} cuota(s) vencida(s)* por un total de *S/. ${overdueAmount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}*.\n\n`;
    } else {
      text += `✅ *Al Día:* Su cuenta se encuentra al día.\n`;
    }
    
    if (nextPending) {
      text += `📅 Próximo vencimiento: *${nextPending.due_date}* por *S/. ${parseFloat(nextPending.amount).toLocaleString('es-PE', { minimumFractionDigits: 2 })}*.\n\n`;
    }
    
    text += `Por favor, conserve sus vouchers y repórtelos para su validación. ¡Gracias por su preferencia!`;
    
    const cleanPhone = client.phone.replace(/\D/g, '');
    const formattedPhone = cleanPhone.startsWith('51') ? cleanPhone : `51${cleanPhone}`;
    
    return `https://api.whatsapp.com/send?phone=${formattedPhone}&text=${encodeURIComponent(text)}`;
  };

  const printFinancialReport = (client, lot, lotInstallments) => {
    const printWindow = window.open('', '_blank');
    
    const totalAmount = lotInstallments.reduce((sum, inst) => sum + parseFloat(inst.amount), 0);
    const paidAmount = lotInstallments.reduce((sum, inst) => sum + parseFloat(inst.amount_paid), 0);
    const pendingAmount = totalAmount - paidAmount;
    
    const htmlContent = `
      <html>
        <head>
          <title>Estado de Cuenta - MZ ${lot.mz} LT ${lot.lt}</title>
          <style>
            body { font-family: 'Helvetica', Arial, sans-serif; padding: 40px; color: #333; }
            .header { display: flex; justify-content: space-between; border-bottom: 2px solid #333; padding-bottom: 20px; margin-bottom: 30px; }
            .project-title { font-size: 24px; font-weight: bold; }
            .client-info { margin-bottom: 30px; }
            table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            th, td { border: 1px solid #ddd; padding: 10px; text-align: left; font-size: 14px; }
            th { background-color: #f2f2f2; }
            .totals { margin-top: 30px; float: right; width: 300px; }
            .totals-row { display: flex; justify-content: space-between; padding: 8px 0; border-bottom: 1px solid #eee; }
            .totals-row.final { font-weight: bold; border-top: 2px solid #333; }
            @media print { .no-print { display: none; } }
          </style>
        </head>
        <body>
          <button class="no-print" onclick="window.print()" style="padding: 10px 20px; margin-bottom: 20px; cursor: pointer;">Imprimir Reporte</button>
          
          <div class="header">
            <div>
              <div class="project-title">URBIS GROUP - PROYECTO ${selectedProject.name.toUpperCase()}</div>
              <div>Reporte Financiero del Lote</div>
            </div>
            <div style="text-align: right;">
              <div><strong>Lote:</strong> MZ ${lot.mz} LT ${lot.lt}</div>
              <div><strong>Fecha Emisión:</strong> ${new Date().toLocaleDateString('es-PE')}</div>
            </div>
          </div>
          
          <div class="client-info">
            <h3>DATOS DEL COMPRADOR</h3>
            <div><strong>Cliente:</strong> ${client ? client.names : 'Sin Asignar'}</div>
            <div><strong>DNI:</strong> ${client ? client.dni : '-'}</div>
            <div><strong>Celular:</strong> ${client ? client.phone : '-'}</div>
            <div><strong>Dirección:</strong> ${client ? `${client.address}, ${client.district} - ${client.province}` : '-'}</div>
          </div>
          
          <h3>CRONOGRAMA DE CUOTAS Y PAGOS</h3>
          <table>
            <thead>
              <tr>
                <th>N° Cuota</th>
                <th>Vencimiento</th>
                <th>Monto Pactado</th>
                <th>Monto Pagado</th>
                <th>Estado</th>
              </tr>
            </thead>
            <tbody>
              ${lotInstallments.map(inst => `
                <tr>
                  <td>${inst.installment_number === 0 ? 'Inicial/Separación' : `Cuota ${inst.installment_number}`}</td>
                  <td>${inst.due_date}</td>
                  <td>S/. ${parseFloat(inst.amount).toLocaleString('es-PE', { minimumFractionDigits: 2 })}</td>
                  <td>S/. ${parseFloat(inst.amount_paid).toLocaleString('es-PE', { minimumFractionDigits: 2 })}</td>
                  <td style="font-weight: bold; color: ${inst.status === 'pagado' ? 'green' : inst.status === 'vencido' ? 'red' : '#666'}">
                    ${inst.status.toUpperCase()}
                  </td>
                </tr>
              `).join('')}
            </tbody>
          </table>
          
          <div class="totals">
            <div class="totals-row">
              <span>Total Pactado:</span>
              <span>S/. ${totalAmount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}</span>
            </div>
            <div class="totals-row">
              <span>Total Recaudado:</span>
              <span>S/. ${paidAmount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}</span>
            </div>
            <div class="totals-row final">
              <span>Pendiente de Pago:</span>
              <span>S/. ${pendingAmount.toLocaleString('es-PE', { minimumFractionDigits: 2 })}</span>
            </div>
          </div>
        </body>
      </html>
    `;
    
    printWindow.document.write(htmlContent);
    printWindow.document.close();
  };

  const downloadContractDraft = (client, lot) => {
    const draftText = `
CONTRATO PRIVADO DE COMPRA VENTA DE LOTE DE TERRENO

Conste por el presente documento, el Contrato de Compraventa que celebran de una parte URBIS GROUP, representado por titular ${selectedProject.titular_name}, con DNI N° ${selectedProject.titular_dni} y domicilio en ${selectedProject.titular_address}, a quien en adelante se le denominará EL VENDEDOR, y de la otra parte don(ña) ${client ? client.names.toUpperCase() : '__________'}, con DNI N° ${client ? client.dni : '__________'}, domiciliado(a) en ${client ? client.address.toUpperCase() : '__________'}, distrito de ${client ? client.district.toUpperCase() : '__________'}, a quien en adelante se le denominará EL COMPRADOR, bajo los términos y condiciones siguientes:

PRIMERA: EL VENDEDOR es propietario de un lote de terreno rústico denominado Proyecto "${selectedProject.name}", ubicado en el distrito de Campo Verde, provincia de Coronel Portillo, departamento de Ucayali.

SEGUNDA: Por el presente, EL VENDEDOR da en compraventa a favor de EL COMPRADOR el lote de terreno identificado como:
MANZANA: "${lot.mz}"  |  LOTE: "${lot.lt}"  |  ÁREA TOTAL: ${lot.area_m2} m2.
COLINDANCIAS Y MEDIDAS PERIMÉTRICAS:
${lot.boundaries ? lot.boundaries.map(b => `- Por el ${b.lado} colinda con ${b.colinda} con una medida de ${b.medida}`).join('\n') : 'Sin límites detallados'}

TERCERA: El precio de venta del lote de terreno es de S/. ${parseFloat(lot.total_price || 0).toLocaleString('es-PE', { minimumFractionDigits: 2 })} (Soles).

PLANTILLA PROYECTO:
${selectedProject.contract_template || 'Sin cláusulas específicas adicionales'}

En señal de conformidad, firman las partes contratantes a los ${new Date().getDate()} días del mes de ${new Date().toLocaleString('es-ES', { month: 'long' })} de ${new Date().getFullYear()}.


EL VENDEDOR                                EL COMPRADOR
    `;
    
    const blob = new Blob([draftText], { type: 'text/plain;charset=utf-8' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = `CONTRATO_BORRADOR_MZ${lot.mz}_LT${lot.lt}.txt`;
    link.click();
  };

  const handleUploadSignedContract = async (e) => {
    if (!lotData?.sale) return;
    if (e.target.files && e.target.files[0]) {
      const file = e.target.files[0];
      setLoading(true);
      try {
        const fileExt = file.name.split('.').pop();
        const fileName = `${lotData.sale.id}_signed_${Date.now()}.${fileExt}`;
        const filePath = `contracts/${lotData.sale.id}/${fileName}`;

        const { error: uploadError } = await supabase.storage
          .from('urbis-files')
          .upload(filePath, file);

        if (uploadError) throw uploadError;

        const { data } = supabase.storage.from('urbis-files').getPublicUrl(filePath);
        const signedUrl = data.publicUrl;

        const { error } = await supabase
          .from('sales')
          .update({ signed_contract_url: signedUrl })
          .eq('id', lotData.sale.id);

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'subir_contrato_firmado',
          entityType: 'sale',
          entityId: lotData.sale.id,
          details: `Contrato firmado cargado para lote MZ ${lotData.lot.mz} LT ${lotData.lot.lt}.`,
        });

        alert("Contrato firmado subido con éxito.");
        if (onRefreshData) onRefreshData();
      } catch (err) {
        console.error(err);
        alert("Error cargando contrato: " + err.message);
      } finally {
        setLoading(false);
      }
    }
  };

  const handleStatusChange = async (e) => {
    const newStatus = e.target.value;
    if (!lotData?.lot) return;

    if (!window.confirm(`¿Está seguro de cambiar el estado del lote a '${newStatus}' manualmente?`)) {
      return;
    }

    setLoading(true);
    try {
      const { error } = await supabase
        .from('lots')
        .update({ status: newStatus })
        .eq('id', lotData.lot.id);

      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'cambiar_estado_lote',
        entityType: 'lot',
        entityId: lotData.lot.id,
        details: `Lote MZ ${lotData.lot.mz} LT ${lotData.lot.lt} cambiado a estado '${newStatus}' manualmente por Admin.`,
      });

      alert("Estado de lote actualizado.");
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al cambiar estado: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  const handleBoundaryChange = (index, field, value) => {
    const newBoundaries = [...boundaries];
    newBoundaries[index][field] = value;
    setBoundaries(newBoundaries);
  };

  const handleAddBoundary = () => {
    setBoundaries([...boundaries, { lado: '', medida: '', colinda: '' }]);
  };

  const handleRemoveBoundary = (index) => {
    setBoundaries(boundaries.filter((_, i) => i !== index));
  };

  const handleCreateLot = async (e) => {
    e.preventDefault();
    if (!mz || !lt || !areaM2 || !pricePerM2) {
      alert("Complete todos los campos obligatorios.");
      return;
    }

    setLoading(true);
    try {
      const lotData = {
        project_id: selectedProject.id,
        mz: mz.toUpperCase().trim(),
        lt: lt.toUpperCase().trim(),
        area_m2: parseFloat(areaM2),
        price_per_m2: parseFloat(pricePerM2),
        status: 'disponible',
        boundaries
      };

      const { data, error } = await supabase
        .from('lots')
        .insert(lotData)
        .select()
        .single();

      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'crear_lote',
        entityType: 'lot',
        entityId: data.id,
        details: `Lote MZ ${mz} LT ${lt} creado en proyecto ${selectedProject.name}.`,
      });

      alert("Lote creado con éxito.");
      setMz('');
      setLt('');
      setAreaM2('');
      setPricePerM2('');
      setShowCreateModal(false);
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error creando lote: " + err.message);
    } finally {
      setLoading(false);
    }
  };

  if (!selectedProject) {
    return (
      <div className="glass-panel" style={{ padding: '40px', textAlign: 'center', color: 'var(--text-muted)' }}>
        ⚠️ Por favor, seleccione un proyecto en la barra lateral para ver y gestionar su inventario de lotes.
      </div>
    );
  }

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '24px' }}>
        <div>
          <h1 style={{ margin: 0, fontSize: '2rem' }}>Inventario de Lotes</h1>
          <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>
            Proyecto seleccionado: <strong style={{ color: 'var(--primary)' }}>{selectedProject.name}</strong>
          </p>
        </div>
        <button className="btn-primary" onClick={() => setShowCreateModal(true)}>
          + Crear Nuevo Lote
        </button>
      </div>

      {/* Filters Form */}
      <div className="glass-panel" style={{ padding: '20px', display: 'flex', gap: '16px', marginBottom: '24px', flexWrap: 'wrap' }}>
        <div style={{ flexGrow: 1, display: 'flex', flexDirection: 'column', gap: '6px' }}>
          <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600' }}>BUSCAR CLIENTE, DNI O LOTE (MZ/LT)</label>
          <input 
            type="text" 
            placeholder="Ej: Mz A Lt 4 o Sergio Riega..." 
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            style={{ width: '100%', boxSizing: 'border-box' }}
          />
        </div>
        
        <div style={{ width: '150px', display: 'flex', flexDirection: 'column', gap: '6px' }}>
          <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600' }}>MANZANA</label>
          <select value={mzFilter} onChange={(e) => setMzFilter(e.target.value)}>
            <option value="">Todas</option>
            {distinctMzs.map(mz => (
              <option key={mz} value={mz}>Manzana {mz}</option>
            ))}
          </select>
        </div>

        <div style={{ width: '180px', display: 'flex', flexDirection: 'column', gap: '6px' }}>
          <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600' }}>ESTADO</label>
          <select value={statusFilter} onChange={(e) => setStatusFilter(e.target.value)}>
            <option value="">Todos los estados</option>
            <option value="disponible">Disponible</option>
            <option value="separado">Separado</option>
            <option value="vendido">Vendido</option>
            <option value="invadido">Invadido</option>
            <option value="expropiado">Expropiado</option>
          </select>
        </div>
      </div>

      {/* Main Grid View */}
      <div style={{ display: 'grid', gridTemplateColumns: selectedLot ? '1.2fr 1fr' : '1fr', gap: '24px', alignItems: 'start' }}>
        
        {/* Lots List Grid */}
        <div className="glass-panel" style={{ padding: '20px' }}>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(130px, 1fr))', gap: '12px' }}>
            {filteredLots.map(lot => {
              let badgeClass = 'badge-disponible';
              if (lot.status === 'separado') badgeClass = 'badge-separado';
              if (lot.status === 'vendido') badgeClass = 'badge-vendido';
              if (lot.status === 'invadido') badgeClass = 'badge-invadido';
              if (lot.status === 'expropiado') badgeClass = 'badge-expropiado';

              const isSelected = selectedLot === lot.id;

              return (
                <div 
                  key={lot.id} 
                  className="glass-panel"
                  style={{ 
                    padding: '14px', 
                    cursor: 'pointer', 
                    textAlign: 'center',
                    border: isSelected ? '2px solid var(--primary)' : '1px solid var(--border-color)',
                    background: isSelected ? 'var(--bg-card-hover)' : 'var(--bg-card)',
                    display: 'flex',
                    flexDirection: 'column',
                    justifyContent: 'space-between',
                    height: '95px',
                    boxSizing: 'border-box'
                  }}
                  onClick={() => {
                    setSelectedLot(lot.id);
                  }}
                >
                  <div style={{ fontWeight: '700', fontSize: '0.95rem', fontFamily: 'Outfit' }}>
                    MZ {lot.mz} LT {lot.lt}
                  </div>
                  <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }}>
                    {lot.area_m2} m²
                  </div>
                  <div className={`badge ${badgeClass}`} style={{ fontSize: '0.65rem', padding: '2px 6px', justifyContent: 'center', textTransform: 'capitalize' }}>
                    {lot.status}
                  </div>
                </div>
              );
            })}
          </div>
          {filteredLots.length === 0 && (
            <div style={{ textAlign: 'center', padding: '40px', color: 'var(--text-muted)' }}>
              No se encontraron lotes que coincidan con la búsqueda.
            </div>
          )}
        </div>

        {/* Lot Detail Drawer */}
        {lotData && (
          <div className="glass-panel" style={{ padding: '24px', position: 'sticky', top: '24px', maxHeight: 'calc(100vh - 120px)', overflowY: 'auto' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px' }}>
              <h2 style={{ margin: 0, fontFamily: 'Outfit', fontSize: '1.5rem' }}>
                Detalle: MZ {lotData.lot.mz} LT {lotData.lot.lt}
              </h2>
              <button 
                className="btn-secondary" 
                style={{ padding: '6px 12px', fontSize: '0.75rem' }} 
                onClick={() => setSelectedLot(null)}
              >
                Cerrar
              </button>
            </div>

            {/* Badges and Price info */}
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', background: 'var(--bg-sidebar)', padding: '16px', borderRadius: '12px', marginBottom: '20px' }}>
              <div>
                <span style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }}>Precio de Venta</span>
                <div style={{ fontSize: '1.25rem', fontWeight: '700', color: 'var(--primary)' }}>
                  S/. {parseFloat(lotData.lot.total_price || 0).toLocaleString('es-PE', { minimumFractionDigits: 2 })}
                </div>
              </div>
              <div style={{ textAlign: 'right' }}>
                <span style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }}>Área del Lote</span>
                <div style={{ fontSize: '1.15rem', fontWeight: '600' }}>{lotData.lot.area_m2} m²</div>
              </div>
            </div>

            {/* Status Change Dropdown */}
            <div style={{ marginBottom: '24px' }}>
              <label style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontWeight: '600', display: 'block', marginBottom: '6px' }}>ESTADO DEL LOTE (CAMBIO MANUAL)</label>
              <select value={lotData.lot.status} onChange={handleStatusChange} disabled={loading} style={{ width: '100%' }}>
                <option value="disponible">Disponible</option>
                <option value="separado">Separado</option>
                <option value="vendido">Vendido</option>
                <option value="invadido">Invadido</option>
                <option value="expropiado">Expropiado</option>
              </select>
            </div>

            {/* Boundaries (Límites > 4 Lados dinámico) */}
            <div style={{ marginBottom: '24px' }}>
              <h4 style={{ margin: '0 0 10px 0', fontSize: '0.875rem', color: 'var(--text-muted)' }}>PLANO PERIMÉTRICO / COLINDANCIAS</h4>
              <div style={{ background: 'var(--bg-sidebar)', padding: '14px', borderRadius: '8px', fontSize: '0.8rem' }}>
                {lotData.lot.boundaries && lotData.lot.boundaries.map((b, idx) => (
                  <div key={idx} style={{ display: 'flex', justifyContent: 'space-between', padding: '6px 0', borderBottom: idx < lotData.lot.boundaries.length - 1 ? '1px solid hsla(217, 30%, 20%, 0.3)' : 'none' }}>
                    <span style={{ fontWeight: '600' }}>{b.lado}:</span>
                    <span style={{ color: 'var(--text-muted)' }}>{b.medida} (colinda con {b.colinda})</span>
                  </div>
                ))}
                {(!lotData.lot.boundaries || lotData.lot.boundaries.length === 0) && (
                  <div style={{ color: 'var(--text-muted)' }}>No se registraron límites perimétricos.</div>
                )}
              </div>
            </div>

            {/* Client Info */}
            <div style={{ marginBottom: '24px' }}>
              <h4 style={{ margin: '0 0 10px 0', fontSize: '0.875rem', color: 'var(--text-muted)' }}>DATOS DEL CLIENTE</h4>
              {lotData.client ? (
                <div className="glass-panel" style={{ padding: '16px', background: 'hsla(222, 25%, 8%, 0.5)' }}>
                  <div style={{ fontWeight: '700', fontSize: '1rem', marginBottom: '8px' }}>{lotData.client.names}</div>
                  <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '8px', fontSize: '0.8rem', color: 'var(--text-muted)' }}>
                    <div><strong>DNI:</strong> {lotData.client.dni}</div>
                    <div><strong>Celular:</strong> {lotData.client.phone || '-'}</div>
                    <div style={{ gridColumn: 'span 2' }}>
                      <strong>Ubigeo:</strong> {lotData.client.district}, {lotData.client.province} - {lotData.client.department}
                    </div>
                  </div>

                  {/* Client actions: WhatsApp and Statement PDF */}
                  <div style={{ display: 'flex', gap: '8px', marginTop: '16px' }}>
                    <a 
                      href={generateWhatsAppLink(lotData.client, lotData.lot, lotData.lotInstallments)} 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="btn-primary" 
                      style={{ fontSize: '0.75rem', padding: '8px 12px', flexGrow: 1, textDecoration: 'none', background: '#25D366', color: '#000', textAlign: 'center', boxShadow: 'none' }}
                    >
                      💬 WhatsApp Directo
                    </a>
                    <button 
                      className="btn-secondary" 
                      style={{ fontSize: '0.75rem', padding: '8px 12px', flexGrow: 1 }}
                      onClick={() => printFinancialReport(lotData.client, lotData.lot, lotData.lotInstallments)}
                    >
                      📄 Reporte PDF
                    </button>
                  </div>
                </div>
              ) : (
                <div style={{ color: 'var(--text-muted)', fontStyle: 'italic', fontSize: '0.875rem' }}>
                  Lote disponible sin cliente asignado actualmente.
                </div>
              )}
            </div>

            {/* Doble Contrato (Template draft + Upload Signed File) */}
            {lotData.client && (
              <div style={{ marginBottom: '24px' }}>
                <h4 style={{ margin: '0 0 10px 0', fontSize: '0.875rem', color: 'var(--text-muted)' }}>CONTRATO COMPRA-VENTA (VISOR DUAL)</h4>
                
                <div style={{ display: 'flex', flexDirection: 'column', gap: '10px' }}>
                  <button 
                    className="btn-secondary" 
                    style={{ fontSize: '0.8rem', width: '100%' }}
                    onClick={() => downloadContractDraft(lotData.client, lotData.lot)}
                  >
                    ⬇️ Descargar Borrador (Minuta)
                  </button>

                  <div style={{ border: '1px dashed var(--border-color)', borderRadius: '8px', padding: '12px', textAlign: 'center', background: 'var(--bg-sidebar)' }}>
                    <label style={{ fontSize: '0.75rem', display: 'block', marginBottom: '8px', color: 'var(--text-muted)' }}>
                      SUBIR CONTRATO ESCANEADO FIRMADO (PDF)
                    </label>
                    <input 
                      type="file" 
                      accept=".pdf" 
                      onChange={handleUploadSignedContract} 
                      style={{ display: 'none' }}
                      id="signed-contract-file"
                      disabled={loading}
                    />
                    <label 
                      htmlFor="signed-contract-file"
                      className="btn-primary" 
                      style={{ fontSize: '0.75rem', padding: '6px 12px', cursor: 'pointer' }}
                    >
                      {loading ? 'Subiendo...' : 'Seleccionar Archivo'}
                    </label>
                    
                    {lotData.sale && lotData.sale.signed_contract_url && (
                      <div style={{ marginTop: '10px' }}>
                        <a href={lotData.sale.signed_contract_url} target="_blank" rel="noopener noreferrer" style={{ color: 'var(--primary)', fontSize: '0.75rem', fontWeight: '500', textDecoration: 'none' }}>
                          ✓ Ver Contrato Firmado
                        </a>
                      </div>
                    )}
                  </div>
                </div>
              </div>
            )}

            {/* Payment Schedule (Cronograma) */}
            {lotData.client && (
              <div>
                <h4 style={{ margin: '0 0 10px 0', fontSize: '0.875rem', color: 'var(--text-muted)' }}>CRONOGRAMA DE PAGOS (CUOTAS)</h4>
                <div className="table-container" style={{ maxHeight: '250px', overflowY: 'auto' }}>
                  <table>
                    <thead>
                      <tr>
                        <th>Cuota</th>
                        <th>Vencimiento</th>
                        <th>Importe</th>
                        <th>Abonado</th>
                        <th>Estado</th>
                      </tr>
                    </thead>
                    <tbody>
                      {lotData.lotInstallments.map((inst, idx) => {
                        let statusColor = 'var(--text-muted)';
                        if (inst.status === 'pagado') statusColor = 'var(--color-disponible)';
                        if (inst.status === 'vencido') statusColor = 'var(--color-perdida)';

                        return (
                          <tr key={idx}>
                            <td style={{ fontSize: '0.75rem' }}>{inst.installment_number === 0 ? 'Inicial' : `Cuota ${inst.installment_number}`}</td>
                            <td style={{ fontSize: '0.75rem' }}>{inst.due_date}</td>
                            <td style={{ fontSize: '0.75rem' }}>S/. {parseFloat(inst.amount).toLocaleString('es-PE')}</td>
                            <td style={{ fontSize: '0.75rem' }}>S/. {parseFloat(inst.amount_paid).toLocaleString('es-PE')}</td>
                            <td style={{ fontSize: '0.75rem', fontWeight: '600', color: statusColor, textTransform: 'uppercase' }}>
                              {inst.status}
                            </td>
                          </tr>
                        );
                      })}
                    </tbody>
                  </table>
                </div>
              </div>
            )}

          </div>
        )}

      </div>

      {/* Create Lot Modal */}
      {showCreateModal && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100, backdropFilter: 'blur(4px)' }}>
          <div className="glass-panel" style={{ width: '550px', padding: '32px', maxHeight: '90vh', overflowY: 'auto' }}>
            <h2 style={{ margin: '0 0 20px 0', fontFamily: 'Outfit' }}>Crear Lote en {selectedProject.name}</h2>
            <form onSubmit={handleCreateLot} style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>MANZANA (MZ) *</label>
                  <input type="text" value={mz} onChange={(e) => setMz(e.target.value)} placeholder="Ej: A" required />
                </div>
                <div className="form-group">
                  <label>LOTE (LT) *</label>
                  <input type="text" value={lt} onChange={(e) => setLt(e.target.value)} placeholder="Ej: 5" required />
                </div>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px' }}>
                <div className="form-group">
                  <label>ÁREA EN M2 *</label>
                  <input type="number" step="0.01" value={areaM2} onChange={(e) => setAreaM2(e.target.value)} placeholder="Ej: 160" required />
                </div>
                <div className="form-group">
                  <label>PRECIO POR M2 (S/.) *</label>
                  <input type="number" step="0.01" value={pricePerM2} onChange={(e) => setPricePerM2(e.target.value)} placeholder="Ej: 120" required />
                </div>
              </div>

              <h4 style={{ margin: '8px 0 4px 0', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px' }}>Límites y Colindancias (Opcional)</h4>
              
              {boundaries.map((boundary, index) => (
                <div key={index} style={{ display: 'grid', gridTemplateColumns: '1.2fr 1fr 1.5fr 40px', gap: '8px', alignItems: 'center' }}>
                  <input 
                    type="text" 
                    placeholder="Lado (Norte...)" 
                    value={boundary.lado} 
                    onChange={(e) => handleBoundaryChange(index, 'lado', e.target.value)} 
                  />
                  <input 
                    type="text" 
                    placeholder="Medida (20m)" 
                    value={boundary.medida} 
                    onChange={(e) => handleBoundaryChange(index, 'medida', e.target.value)} 
                  />
                  <input 
                    type="text" 
                    placeholder="Colinda con" 
                    value={boundary.colinda} 
                    onChange={(e) => handleBoundaryChange(index, 'colinda', e.target.value)} 
                  />
                  <button type="button" className="btn-secondary" onClick={() => handleRemoveBoundary(index)} style={{ padding: '8px', color: 'red' }}>
                    ✕
                  </button>
                </div>
              ))}
              
              <button type="button" className="btn-secondary" onClick={handleAddBoundary} style={{ fontSize: '0.8rem', padding: '6px' }}>
                + Añadir Lado
              </button>

              <div style={{ display: 'flex', gap: '12px', marginTop: '10px' }}>
                <button type="button" className="btn-secondary" onClick={() => setShowCreateModal(false)} style={{ flexGrow: 1 }} disabled={loading}>
                  Cancelar
                </button>
                <button type="submit" className="btn-primary" style={{ flexGrow: 1 }} disabled={loading}>
                  {loading ? 'Creando...' : 'Crear Lote'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
