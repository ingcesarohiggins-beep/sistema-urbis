import React, { useState, useEffect } from 'react';
import { logActivity } from '../utils/activityLogger';

// Helper para convertir números a letras en español (moneda Soles)
function numeroALetras(num) {
  const Unidades = (num) => {
    switch (num) {
      case 1: return 'UN';
      case 2: return 'DOS';
      case 3: return 'TRES';
      case 4: return 'CUATRO';
      case 5: return 'CINCO';
      case 6: return 'SEIS';
      case 7: return 'SIETE';
      case 8: return 'OCHO';
      case 9: return 'NUEVE';
      default: return '';
    }
  };

  const Decenas = (num) => {
    const dec = Math.floor(num / 10);
    const uni = num - dec * 10;
    switch (dec) {
      case 1:
        switch (uni) {
          case 0: return 'DIEZ';
          case 1: return 'ONCE';
          case 2: return 'DOCE';
          case 3: return 'TRECE';
          case 4: return 'CATORCE';
          case 5: return 'QUINCE';
          default: return 'DIECI' + Unidades(uni);
        }
      case 2:
        if (uni === 0) return 'VEINTE';
        return 'VEINTI' + Unidades(uni);
      case 3: return DecenasY('TREINTA', uni);
      case 4: return DecenasY('CUARENTA', uni);
      case 5: return DecenasY('CINCUENTA', uni);
      case 6: return DecenasY('SESENTA', uni);
      case 7: return DecenasY('SETENTA', uni);
      case 8: return DecenasY('OCHENTA', uni);
      case 9: return DecenasY('NOVENTA', uni);
      case 0: return Unidades(uni);
    }
  };

  const DecenasY = (strDec, uni) => {
    if (uni > 0) return strDec + ' Y ' + Unidades(uni);
    return strDec;
  };

  const Centenas = (num) => {
    const cen = Math.floor(num / 100);
    const dec = num - cen * 100;
    switch (cen) {
      case 1:
        if (dec > 0) return 'CIENTO ' + Decenas(dec);
        return 'CIEN';
      case 2: return 'DOSCIENTOS ' + Decenas(dec);
      case 3: return 'TRESCIENTOS ' + Decenas(dec);
      case 4: return 'CUATROCIENTOS ' + Decenas(dec);
      case 5: return 'QUINIENTOS ' + Decenas(dec);
      case 6: return 'SEISCIENTOS ' + Decenas(dec);
      case 7: return 'SETECIENTOS ' + Decenas(dec);
      case 8: return 'OCHOCIENTOS ' + Decenas(dec);
      case 9: return 'NOVECIENTOS ' + Decenas(dec);
      case 0: return Decenas(dec);
    }
  };

  const Miles = (num) => {
    const mil = Math.floor(num / 1000);
    const cen = num - mil * 1000;
    let strMil = '';
    if (mil > 0) {
      if (mil === 1) strMil = 'MIL';
      else strMil = Centenas(mil) + ' MIL';
    }
    return (strMil + ' ' + Centenas(cen)).trim();
  };

  const Millones = (num) => {
    const mill = Math.floor(num / 1000000);
    const mil = num - mill * 1000000;
    let strMill = '';
    if (mill > 0) {
      if (mill === 1) strMill = 'UN MILLÓN';
      else strMill = Centenas(mill) + ' MILLONES';
    }
    return (strMill + ' ' + Miles(mil)).trim();
  };

  const entero = Math.floor(num);
  const centavos = Math.round((num - entero) * 100);
  const centavosStr = centavos.toString().padStart(2, '0') + '/100 SOLES';
  
  if (entero === 0) return `CERO CON ${centavosStr}`;
  if (entero === 1) return `UN CON ${centavosStr}`;
  
  return `${Millones(entero)} CON ${centavosStr}`;
}

export default function ContratosView({ supabase, session, selectedProject, lots, clients, sales, installments, onRefreshData, permission = 'full', preselectedLotId, clearPreselectedLotId }) {
  const [activeTab, setActiveTab] = useState('generar'); // 'plantilla' or 'generar'
  const [loading, setLoading] = useState(false);
  const [templateText, setTemplateText] = useState('');
  
  // Modal borrador states
  const [showPreviewModal, setShowPreviewModal] = useState(false);
  const [previewContent, setPreviewContent] = useState('');
  const [previewLot, setPreviewLot] = useState(null);
  const [previewClient, setPreviewClient] = useState(null);

  useEffect(() => {
    if (selectedProject) {
      setTemplateText(selectedProject.contract_template || '');
    }
  }, [selectedProject]);

  // Effect to handle redirection from Initial Payment to preview the contract
  useEffect(() => {
    if (preselectedLotId && lots.length > 0 && templateText) {
      const lot = lots.find(l => l.id === preselectedLotId);
      if (lot) {
        const sale = sales.find(s => s.lot_id === lot.id && s.status !== 'expropiado');
        const client = sale ? clients.find(c => c.dni === sale.client_id) : null;
        setActiveTab('generar');
        handleOpenPreview(lot, client, sale);
        if (clearPreselectedLotId) {
          clearPreselectedLotId();
        }
      }
    }
  }, [preselectedLotId, lots, sales, clients, templateText]);

  if (!selectedProject) {
    return (
      <div className="glass-panel" style={{ padding: '40px', textAlign: 'center', color: 'var(--text-muted)' }}>
        ⚠️ Por favor, seleccione un proyecto en la barra lateral para ver y gestionar sus plantillas y contratos.
      </div>
    );
  }

  // Filtrar lotes vendidos o separados del proyecto seleccionado
  const projectLots = lots.filter(l => l.project_id === selectedProject.id);
  const soldOrSeparatedLots = projectLots.filter(l => l.status === 'separado' || l.status === 'vendido');

  const getContractStatusLabel = (lot, sale) => {
    if (!sale) return { label: 'Sin Venta', color: 'gray' };
    if (sale.signed_contract_url) return { label: 'Firmado', color: 'var(--primary)' };
    return { label: 'Borrador Listo', color: 'orange' };
  };

  const getLotSaleAndClient = (lot) => {
    const sale = sales.find(s => s.lot_id === lot.id && s.status !== 'expropiado');
    const client = sale ? clients.find(c => c.dni === sale.client_id) : null;
    return { sale, client };
  };

  // Compilar plantilla
  const compileTemplate = (lot, client, sale) => {
    let text = templateText || `
CONTRATO PRIVADO DE COMPROMISO DE COMPRAVENTA DE BIEN INMUEBLE

Conste por el presente documento, que celebran de una parte EL VENDEDOR representado por {{vendedor_nombre}}, identificado con DNI {{vendedor_dni}}, con domicilio en {{vendedor_direccion}}, y de la otra parte EL COMPRADOR, don(ña) {{comprador_nombre}}, identificado con DNI {{comprador_dni}}, domiciliado en {{comprador_direccion}}, bajo los siguientes términos:

PRIMERA: EL VENDEDOR declara tener poderes del predio denominado {{proyecto_predio}}, inscrito en la partida {{proyecto_partida}} de la {{proyecto_zona_registral}}, sobre el cual se desarrolla el proyecto {{proyecto_nombre}}.

SEGUNDA: EL VENDEDOR da en separación/compraventa el lote ubicado en la Mz {{lote_mz}} Lote {{lote_lt}} con un área de {{lote_area}} m2, con las colindancias:
{{lote_linderos}}

TERCERA: El precio fijado es de {{precio_total}} ({{precio_total_letras}}). 
Se paga una inicial/separación de {{pago_inicial}} ({{pago_inicial_letras}}), y el saldo de {{saldo_financiar}} ({{saldo_financiar_letras}}) en {{cuotas_cantidad}} cuotas.
Los depósitos se realizarán en la cuenta {{cuenta_bancaria}}.

La firma se realiza en {{fecha_firma}}.
    `;

    // Formatear linderos
    let linderosStr = 'Sin límites detallados';
    if (lot.boundaries && Array.isArray(lot.boundaries) && lot.boundaries.length > 0) {
      linderosStr = lot.boundaries.map(b => `* Por el ${b.lado}: ${b.medida}, colinda con ${b.colinda}`).join('\n');
    }

    // Cronograma
    let cronogramaStr = 'No generado';
    if (sale) {
      const lotInstallments = installments
        .filter(inst => inst.sale_id === sale.id)
        .sort((a, b) => a.installment_number - b.installment_number);
      if (lotInstallments.length > 0) {
        cronogramaStr = lotInstallments.map(inst => 
          `Cuota N° ${inst.installment_number.toString().padStart(2, '0')}: S/. ${parseFloat(inst.amount).toFixed(2)} | Vencimiento: ${inst.due_date}`
        ).join('\n');
      }
    }

    // Calcular montos
    const precioTotal = parseFloat(lot.total_price || 0);
    const inicial = sale ? parseFloat(sale.initial_amount_paid || 0) : 500.00; // por defecto inicial o separacion
    const saldo = precioTotal - inicial;
    const cuotasCant = sale ? sale.installments_count : 48;
    const cuotaMonto = cuotasCant > 0 ? (saldo / cuotasCant) : 0;

    const fechaFirma = new Date().toLocaleDateString('es-ES', {
      day: 'numeric',
      month: 'long',
      year: 'numeric'
    });

    const variables = {
      '{{proyecto_nombre}}': selectedProject.name || '',
      '{{proyecto_predio}}': selectedProject.predio_name || 'PREDIO FINCA NATALIA',
      '{{proyecto_uucc}}': selectedProject.predio_uucc || '',
      '{{proyecto_predio_area}}': selectedProject.predio_area || '',
      '{{proyecto_distrito}}': selectedProject.predio_district || 'Yarinacocha',
      '{{proyecto_partida}}': selectedProject.predio_partida || '',
      '{{proyecto_zona_registral}}': selectedProject.predio_zona_registral || 'Zona Registral N.º VI Sede Pucallpa',
      '{{vendedor_nombre}}': selectedProject.titular_name || '',
      '{{vendedor_dni}}': selectedProject.titular_dni || '',
      '{{vendedor_direccion}}': selectedProject.titular_address || '',
      '{{vendedor_nacionalidad}}': selectedProject.titular_nationality || 'Peruana',
      '{{vendedor_estado_civil}}': selectedProject.titular_civil_status || 'Soltera',
      '{{vendedor_celular}}': selectedProject.titular_phone || '',
      '{{vendedor_email}}': selectedProject.titular_email || '',
      '{{vendedor_oficina}}': selectedProject.titular_office_address || '',
      '{{bank_name}}': selectedProject.bank_name || '',
      '{{bank_account}}': selectedProject.bank_account || '',
      '{{bank_cci}}': selectedProject.bank_cci || '',
      '{{cuenta_bancaria}}': selectedProject.bank_name ? `Cuenta Ahorros Soles del Banco ${selectedProject.bank_name} N.° ${selectedProject.bank_account} (CCI: ${selectedProject.bank_cci})` : 'No configurada',
      '{{comprador_nombre}}': client ? client.names.toUpperCase() : '__________',
      '{{comprador_dni}}': client ? client.dni : '__________',
      '{{comprador_direccion}}': client ? client.address.toUpperCase() : '__________',
      '{{comprador_celular}}': client ? client.phone || '__________' : '__________',
      '{{comprador_nacionalidad}}': client ? client.nationality || 'Peruana' : 'Peruana',
      '{{comprador_estado_civil}}': client ? (client.civil_status || 'SOLTERO/A').toUpperCase() : '__________',
      '{{comprador_departamento}}': client ? client.department.toUpperCase() : '__________',
      '{{comprador_provincia}}': client ? client.province.toUpperCase() : '__________',
      '{{comprador_distrito}}': client ? client.district.toUpperCase() : '__________',
      '{{lote_mz}}': lot.mz,
      '{{lote_lt}}': lot.lt,
      '{{lote_area}}': lot.area_m2,
      '{{lote_linderos}}': linderosStr,
      '{{precio_total}}': `S/. ${precioTotal.toLocaleString('es-PE', { minimumFractionDigits: 2 })}`,
      '{{precio_total_letras}}': numeroALetras(precioTotal),
      '{{pago_inicial}}': `S/. ${inicial.toLocaleString('es-PE', { minimumFractionDigits: 2 })}`,
      '{{pago_inicial_letras}}': numeroALetras(inicial),
      '{{saldo_financiar}}': `S/. ${saldo.toLocaleString('es-PE', { minimumFractionDigits: 2 })}`,
      '{{saldo_financiar_letras}}': numeroALetras(saldo),
      '{{cuotas_cantidad}}': cuotasCant,
      '{{cuotas_monto}}': `S/. ${cuotaMonto.toLocaleString('es-PE', { minimumFractionDigits: 2 })}`,
      '{{cuotas_monto_letras}}': numeroALetras(cuotaMonto),
      '{{fecha_firma}}': `${selectedProject.predio_district || 'Pucallpa'}, ${fechaFirma}`,
      '{{cronograma_pagos}}': cronogramaStr,
      '{{mora_diaria}}': `S/. ${parseFloat(selectedProject.late_penalty_rate || 1.50).toFixed(2)}`
    };

    // Reemplazar cada variable en el texto
    let compiled = text;
    Object.keys(variables).forEach(key => {
      // Regex global para reemplazar todas las ocurrencias
      const regex = new RegExp(key, 'g');
      compiled = compiled.replace(regex, variables[key]);
    });

    return compiled;
  };

  const handleSaveTemplate = async () => {
    setLoading(true);
    try {
      const { error } = await supabase
        .from('projects')
        .update({ contract_template: templateText })
        .eq('id', selectedProject.id);

      if (error) throw error;

      await logActivity(supabase, {
        userId: session.user.id,
        userEmail: session.user.email,
        action: 'guardar_plantilla_contrato',
        entityType: 'project',
        entityId: selectedProject.id,
        details: `Plantilla de contrato actualizada para el proyecto ${selectedProject.name}.`,
      });

      alert("Plantilla de contrato guardada exitosamente.");
      if (onRefreshData) onRefreshData();
    } catch (err) {
      console.error(err);
      alert("Error al guardar plantilla: " + err.message);
    } finally {
      setLoading(true); // Se reiniciará con el refresh de props
      setLoading(false);
    }
  };

  const handleOpenPreview = (lot, client, sale) => {
    const compiled = compileTemplate(lot, client, sale);
    setPreviewContent(compiled);
    setPreviewLot(lot);
    setPreviewClient(client);
    setShowPreviewModal(true);
  };

  const downloadContractText = (lot, client, sale) => {
    const compiled = compileTemplate(lot, client, sale);
    const blob = new Blob([compiled], { type: 'text/plain;charset=utf-8' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = `CONTRATO_${selectedProject.name.toUpperCase().replace(/\s+/g, '_')}_MZ${lot.mz}_LT${lot.lt}.txt`;
    link.click();
  };

  const handlePrintContract = () => {
    const printWindow = window.open('', '_blank');
    
    const htmlContent = `
      <html>
        <head>
          <title>Contrato Privado - MZ ${previewLot.mz} LT ${previewLot.lt}</title>
          <style>
            body { 
              font-family: 'Times New Roman', Times, serif; 
              padding: 50px; 
              color: #000; 
              font-size: 13pt; 
              line-height: 1.6;
              text-align: justify;
            }
            .title {
              font-weight: bold;
              text-align: center;
              font-size: 14pt;
              margin-bottom: 24px;
            }
            .content-block {
              white-space: pre-wrap;
            }
            @media print {
              body { padding: 0; }
              .no-print { display: none; }
            }
          </style>
        </head>
        <body>
          <button class="no-print" onclick="window.print()" style="padding: 10px 20px; margin-bottom: 20px; cursor: pointer; font-family: sans-serif; background: #007bff; color: #fff; border: none; border-radius: 4px; font-weight: bold;">Imprimir Contrato (PDF / Papel)</button>
          
          <div class="content-block">${previewContent}</div>
        </body>
      </html>
    `;
    
    printWindow.document.write(htmlContent);
    printWindow.document.close();
  };

  const handleUploadSignedContract = async (e, sale) => {
    if (!sale) return;
    if (e.target.files && e.target.files[0]) {
      const file = e.target.files[0];
      setLoading(true);
      try {
        const fileExt = file.name.split('.').pop();
        const fileName = `${sale.id}_signed_${Date.now()}.${fileExt}`;
        const filePath = `contracts/${sale.id}/${fileName}`;

        const { error: uploadError } = await supabase.storage
          .from('urbis-files')
          .upload(filePath, file);

        if (uploadError) throw uploadError;

        const { data } = supabase.storage.from('urbis-files').getPublicUrl(filePath);
        const signedUrl = data.publicUrl;

        const { error } = await supabase
          .from('sales')
          .update({ signed_contract_url: signedUrl })
          .eq('id', sale.id);

        if (error) throw error;

        await logActivity(supabase, {
          userId: session.user.id,
          userEmail: session.user.email,
          action: 'subir_contrato_firmado',
          entityType: 'sale',
          entityId: sale.id,
          details: `Contrato firmado cargado para venta asociada al lote.`,
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

  const handleInsertTag = (tag) => {
    setTemplateText(prev => prev + ' ' + tag);
  };

  const contractTags = [
    { tag: '{{proyecto_nombre}}', desc: 'Nombre Comercial' },
    { tag: '{{proyecto_predio}}', desc: 'Nombre del Predio Matriz' },
    { tag: '{{proyecto_uucc}}', desc: 'Código UU.CC' },
    { tag: '{{proyecto_predio_area}}', desc: 'Área Total Finca' },
    { tag: '{{proyecto_distrito}}', desc: 'Distrito del Predio' },
    { tag: '{{proyecto_partida}}', desc: 'Partida Electrónica' },
    { tag: '{{proyecto_zona_registral}}', desc: 'Zona Registral' },
    { tag: '{{vendedor_nombre}}', desc: 'Nombre Titular Vendedor' },
    { tag: '{{vendedor_dni}}', desc: 'DNI Vendedor' },
    { tag: '{{vendedor_direccion}}', desc: 'Domicilio Vendedor' },
    { tag: '{{vendedor_nacionalidad}}', desc: 'Nacionalidad Vendedor' },
    { tag: '{{vendedor_estado_civil}}', desc: 'Estado Civil Vendedor' },
    { tag: '{{vendedor_celular}}', desc: 'WhatsApp Titular' },
    { tag: '{{vendedor_email}}', desc: 'Email Comercial' },
    { tag: '{{vendedor_oficina}}', desc: 'Oficina de Atención' },
    { tag: '{{cuenta_bancaria}}', desc: 'Detalles del Banco/Cuenta/CCI' },
    { tag: '{{comprador_nombre}}', desc: 'Nombre del Comprador' },
    { tag: '{{comprador_dni}}', desc: 'DNI Comprador' },
    { tag: '{{comprador_direccion}}', desc: 'Domicilio Comprador' },
    { tag: '{{comprador_celular}}', desc: 'WhatsApp Comprador' },
    { tag: '{{comprador_nacionalidad}}', desc: 'Nacionalidad Comprador' },
    { tag: '{{comprador_estado_civil}}', desc: 'Estado Civil Comprador' },
    { tag: '{{comprador_departamento}}', desc: 'Dpto Comprador' },
    { tag: '{{comprador_provincia}}', desc: 'Prov Comprador' },
    { tag: '{{comprador_distrito}}', desc: 'Dist Comprador' },
    { tag: '{{lote_mz}}', desc: 'Manzana Lote' },
    { tag: '{{lote_lt}}', desc: 'Número Lote' },
    { tag: '{{lote_area}}', desc: 'Área Lote m2' },
    { tag: '{{lote_linderos}}', desc: 'Linderos Completos' },
    { tag: '{{precio_total}}', desc: 'Precio Total S/.' },
    { tag: '{{precio_total_letras}}', desc: 'Precio en Letras' },
    { tag: '{{pago_inicial}}', desc: 'Monto Inicial S/.' },
    { tag: '{{pago_inicial_letras}}', desc: 'Inicial en Letras' },
    { tag: '{{saldo_financiar}}', desc: 'Saldo Financiado S/.' },
    { tag: '{{saldo_financiar_letras}}', desc: 'Saldo en Letras' },
    { tag: '{{cuotas_cantidad}}', desc: 'Número de Cuotas' },
    { tag: '{{cuotas_monto}}', desc: 'Monto Cuota S/.' },
    { tag: '{{cuotas_monto_letras}}', desc: 'Cuota en Letras' },
    { tag: '{{mora_diaria}}', desc: 'Mora Diaria S/.' },
    { tag: '{{fecha_firma}}', desc: 'Fecha Firma (Formateada)' },
    { tag: '{{cronograma_pagos}}', desc: 'Tabla de Cronograma' }
  ];

  return (
    <div>
      <div style={{ marginBottom: '24px' }}>
        <h1 style={{ margin: 0, fontSize: '2rem' }}>Apartado de Contratos</h1>
        <p style={{ color: 'var(--text-muted)', margin: '4px 0 0 0' }}>
          Proyecto seleccionado: <strong style={{ color: 'var(--primary)' }}>{selectedProject.name}</strong>
        </p>
      </div>

      {/* Tabs */}
      <div style={{ display: 'flex', gap: '8px', marginBottom: '24px' }}>
        <button 
          className={activeTab === 'generar' ? 'btn-primary' : 'btn-secondary'} 
          onClick={() => setActiveTab('generar')}
          style={{ padding: '8px 16px', fontSize: '0.9rem' }}
        >
          📂 Generación y Firmas
        </button>
        <button 
          className={activeTab === 'plantilla' ? 'btn-primary' : 'btn-secondary'} 
          onClick={() => setActiveTab('plantilla')}
          style={{ padding: '8px 16px', fontSize: '0.9rem' }}
        >
          📝 Plantilla del Proyecto
        </button>
      </div>

      {/* Tab Content: Plantilla */}
      {activeTab === 'plantilla' && (
        <div style={{ display: 'grid', gridTemplateColumns: '3fr 1.5fr', gap: '24px' }}>
          {/* Editor */}
          <div className="glass-panel" style={{ padding: '24px', display: 'flex', flexDirection: 'column', gap: '16px' }}>
            <h3 style={{ margin: 0, fontFamily: 'Outfit' }}>Editor de Contrato del Proyecto</h3>
            <p style={{ fontSize: '0.8rem', color: 'var(--text-muted)', margin: 0 }}>
              Edite el contrato borrador. Use las variables del panel derecho para insertar datos automáticamente al generar el contrato para un lote.
            </p>
            <textarea
              rows={22}
              value={templateText}
              onChange={(e) => setTemplateText(e.target.value)}
              style={{ width: '100%', fontFamily: 'monospace', fontSize: '0.85rem', padding: '16px', boxSizing: 'border-box' }}
              placeholder="Escriba el borrador aquí..."
              disabled={permission === 'read'}
            />
            {permission !== 'read' && (
              <button 
                className="btn-primary" 
                onClick={handleSaveTemplate}
                disabled={loading}
                style={{ alignSelf: 'flex-start', padding: '10px 20px' }}
              >
                {loading ? 'Guardando...' : '💾 Guardar Plantilla de Contrato'}
              </button>
            )}
          </div>

          {/* Tags Sidebar */}
          <div className="glass-panel" style={{ padding: '20px', maxHeight: '78vh', overflowY: 'auto' }}>
            <h4 style={{ margin: '0 0 12px 0', fontFamily: 'Outfit', borderBottom: '1px solid var(--border-color)', paddingBottom: '6px' }}>Variables Disponibles</h4>
            <p style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginBottom: '16px' }}>
              Haga clic en cualquier variable para insertarla al final del contrato:
            </p>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
              {contractTags.map((tagObj, idx) => (
                <div 
                  key={idx} 
                  onClick={() => permission !== 'read' && handleInsertTag(tagObj.tag)}
                  style={{ 
                    padding: '8px 12px', 
                    background: 'rgba(255, 255, 255, 0.03)', 
                    border: '1px solid var(--border-color)', 
                    borderRadius: '6px', 
                    cursor: permission === 'read' ? 'default' : 'pointer',
                    fontSize: '0.75rem',
                    display: 'flex',
                    flexDirection: 'column',
                    gap: '2px',
                    transition: 'all 0.2s'
                  }}
                  onMouseOver={(e) => permission !== 'read' && (e.currentTarget.style.borderColor = 'var(--primary)')}
                  onMouseOut={(e) => e.currentTarget.style.borderColor = 'var(--border-color)'}
                >
                  <code style={{ color: 'var(--primary)', fontWeight: 'bold' }}>{tagObj.tag}</code>
                  <span style={{ color: 'var(--text-muted)', fontSize: '0.65rem' }}>{tagObj.desc}</span>
                </div>
              ))}
            </div>
          </div>
        </div>
      )}

      {/* Tab Content: Generar y Firmar */}
      {activeTab === 'generar' && (
        <div className="glass-panel" style={{ padding: '24px' }}>
          <h3 style={{ margin: '0 0 16px 0', fontFamily: 'Outfit' }}>Contratos de Lotes Vendidos / Separados</h3>
          
          {soldOrSeparatedLots.length === 0 ? (
            <div style={{ textCenter: 'center', padding: '40px', color: 'var(--text-muted)', fontStyle: 'italic' }}>
              No hay lotes vendidos ni separados registrados en este proyecto para generar contratos.
            </div>
          ) : (
            <div className="table-container">
              <table>
                <thead>
                  <tr>
                    <th>Lote</th>
                    <th>Comprador</th>
                    <th>Estado Lote</th>
                    <th>Total Precio</th>
                    <th>Estado Contrato</th>
                    <th>Acciones de Generación</th>
                    <th>Cargar Firmado</th>
                  </tr>
                </thead>
                <tbody>
                  {soldOrSeparatedLots.map((lot) => {
                    const { sale, client } = getLotSaleAndClient(lot);
                    const statusInfo = getContractStatusLabel(lot, sale);

                    return (
                      <tr key={lot.id}>
                        <td style={{ fontWeight: '600' }}>MZ {lot.mz} LT {lot.lt}</td>
                        <td>
                          {client ? (
                            <div>
                              <div>{client.names}</div>
                              <div style={{ fontSize: '0.7rem', color: 'var(--text-muted)' }}>DNI: {client.dni}</div>
                            </div>
                          ) : (
                            <span style={{ color: 'red', fontStyle: 'italic' }}>Sin Cliente</span>
                          )}
                        </td>
                        <td>
                          <span style={{ 
                            padding: '4px 8px', 
                            borderRadius: '4px', 
                            fontSize: '0.7rem', 
                            fontWeight: 'bold', 
                            background: lot.status === 'vendido' ? 'rgba(0,123,255,0.2)' : 'rgba(253,126,20,0.2)',
                            color: lot.status === 'vendido' ? 'hsl(210,100%,75%)' : 'hsl(25,100%,75%)'
                          }}>
                            {lot.status.toUpperCase()}
                          </span>
                        </td>
                        <td>S/. {parseFloat(lot.total_price || 0).toLocaleString('es-PE', { minimumFractionDigits: 2 })}</td>
                        <td>
                          <span style={{ 
                            padding: '4px 8px', 
                            borderRadius: '4px', 
                            fontSize: '0.7rem', 
                            fontWeight: 'bold', 
                            background: statusInfo.color.startsWith('var') ? 'rgba(0,229,150,0.15)' : 'rgba(255,193,7,0.15)',
                            color: statusInfo.color.startsWith('var') ? 'hsl(160,100%,75%)' : 'hsl(45,100%,75%)'
                          }}>
                            {statusInfo.label}
                          </span>
                        </td>
                        <td>
                          <div style={{ display: 'flex', gap: '8px' }}>
                            <button 
                              className="btn-secondary" 
                              onClick={() => handleOpenPreview(lot, client, sale)}
                              style={{ padding: '4px 8px', fontSize: '0.75rem' }}
                            >
                              📄 Borrador
                            </button>
                            <button 
                              className="btn-secondary" 
                              onClick={() => downloadContractText(lot, client, sale)}
                              style={{ padding: '4px 8px', fontSize: '0.75rem' }}
                            >
                              📥 Descargar
                            </button>
                          </div>
                        </td>
                        <td>
                          {sale ? (
                            <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
                              {sale.signed_contract_url ? (
                                <a 
                                  href={sale.signed_contract_url} 
                                  target="_blank" 
                                  rel="noopener noreferrer" 
                                  className="btn-secondary"
                                  style={{ padding: '4px 8px', fontSize: '0.75rem', textDecoration: 'none' }}
                                >
                                  👁️ Ver PDF
                                </a>
                              ) : (
                                <span style={{ fontSize: '0.7rem', color: 'var(--text-muted)' }}>Pendiente</span>
                              )}
                              
                              <input 
                                type="file" 
                                id={`file-upload-${lot.id}`} 
                                accept="application/pdf,image/*" 
                                onChange={(e) => handleUploadSignedContract(e, sale)}
                                style={{ display: 'none' }} 
                              />
                              {permission !== 'read' && (
                                <label 
                                  htmlFor={`file-upload-${lot.id}`} 
                                  className="btn-secondary" 
                                  style={{ padding: '4px 8px', fontSize: '0.75rem', cursor: 'pointer', display: 'inline-block', margin: 0 }}
                                >
                                  📤 Subir
                                </label>
                              )}
                            </div>
                          ) : (
                            <span style={{ fontSize: '0.7rem', color: 'var(--text-muted)' }}>Sin Venta Activa</span>
                          )}
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            </div>
          )}
        </div>
      )}

      {/* Preview Modal */}
      {showPreviewModal && (
        <div style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', backgroundColor: 'rgba(0,0,0,0.6)', display: 'flex', justifyContent: 'center', alignItems: 'center', zIndex: 100, backdropFilter: 'blur(4px)' }}>
          <div className="glass-panel" style={{ width: '800px', padding: '32px', maxHeight: '90vh', overflowY: 'auto' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '20px', borderBottom: '1px solid var(--border-color)', paddingBottom: '12px' }}>
              <h2 style={{ margin: 0, fontFamily: 'Outfit' }}>Borrador del Contrato Generado</h2>
              <button 
                type="button" 
                className="btn-secondary" 
                onClick={() => setShowPreviewModal(false)}
                style={{ padding: '4px 12px' }}
              >
                Cerrar
              </button>
            </div>

            <div style={{ display: 'flex', gap: '8px', marginBottom: '16px' }}>
              <button className="btn-primary" onClick={handlePrintContract}>
                🖨️ Imprimir Contrato (PDF / Físico)
              </button>
              <button className="btn-secondary" onClick={() => downloadContractText(previewLot, previewClient, sales.find(s => s.lot_id === previewLot.id))}>
                📥 Descargar Texto (.txt)
              </button>
            </div>

            <div 
              style={{ 
                padding: '24px', 
                background: 'rgba(255,255,255,0.02)', 
                border: '1px solid var(--border-color)', 
                borderRadius: '8px', 
                fontFamily: 'Times New Roman, serif', 
                fontSize: '12pt', 
                lineHeight: '1.5',
                color: '#ddd',
                whiteSpace: 'pre-wrap',
                textAlign: 'justify',
                maxHeight: '50vh',
                overflowY: 'auto'
              }}
            >
              {previewContent}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
