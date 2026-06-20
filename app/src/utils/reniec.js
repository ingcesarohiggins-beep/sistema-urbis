/**
 * Utilidad de Consulta DNI (RENIEC) para URBIS CONTROL.
 * 
 * Este módulo realiza una consulta doble:
 * 1. Primero busca en la base de datos local de Supabase (si el cliente ya está registrado).
 * 2. Si no existe localmente, simula una consulta a RENIEC de forma determinista 
 *    (generando datos realistas a partir de los dígitos del DNI) con una demora de 1.2 segundos
 *    para dar una experiencia premium de carga.
 * 
 * NOTA: Para conectar una API de RENIEC real en el futuro, consulta las instrucciones al final de este archivo.
 */

// Listas para generador determinista de nombres peruanos
const NOMBRES_MASCULINOS = [
  'Juan Carlos', 'José Luis', 'Luis Alberto', 'Miguel Ángel', 'Jorge Luis',
  'Carlos Alberto', 'Pedro Pablo', 'César Augusto', 'Francisco Javier', 'Julio César',
  'Manuel Antonio', 'Víctor Hugo', 'Edgar David', 'Gerardo Arturo', 'Edwin Alberto',
  'Christian Omar', 'Diego Armando', 'Héctor Raúl', 'Walter René', 'Óscar Eduardo'
];

const NOMBRES_FEMENINOS = [
  'María Elena', 'Ana María', 'Carmen Rosa', 'Rosa María', 'Silvia Patricia',
  'Yomira del Carmen', 'Juana Rosa', 'Gladys Elena', 'Diana Carolina', 'Elizabeth Sofía',
  'Luz Marina', 'Berenice Sol', 'Marisela Flor', 'Harumi Lucía', 'Gabriela Inés',
  'Milagros del Pilar', 'Thalía Torres', 'Angely Jasmin', 'Kimberly Sol', 'Victoria Elena'
];

const APELLIDOS = [
  'Quispe', 'Flores', 'Rodríguez', 'Sánchez', 'García', 'Rojas', 'Díaz', 'Torres',
  'López', 'Huamán', 'Gonzáles', 'Pérez', 'Chávez', 'Ramos', 'Ruiz', 'Ramírez',
  'Mendoza', 'Espinoza', 'Aliaga', 'O\'Higgins', 'Macedo', 'Orbezo', 'Tolentino',
  'Tarazona', 'Sepúlveda', 'Delgado', 'Vasquez', 'Gama', 'Funamoto', 'Callupe'
];

const DIRECCIONES = [
  'Jr. Progreso # 163, Callería, Coronel Portillo, Ucayali',
  'U. Vecinal Matute Block 56 B-5, La Victoria, Lima, Lima',
  'Av. Augusto B. Leguía # 482, Callería, Coronel Portillo, Ucayali',
  'Jr. Augusto B. Leguía # 520, Yarinacocha, Coronel Portillo, Ucayali',
  'Jr. Tarapacá # 345, Callería, Coronel Portillo, Ucayali',
  'Av. Centenario Km. 5, Yarinacocha, Coronel Portillo, Ucayali',
  'Jr. Sucre # 120, Manantay, Coronel Portillo, Ucayali',
  'Av. Saenz Peña # 890, Callería, Coronel Portillo, Ucayali'
];

const DISTRITOS = [
  { departamento: 'UCAYALI', provincia: 'CORONEL PORTILLO', distrito: 'CALLERIA', direccion: 'Jr. Progreso # ' },
  { departamento: 'LIMA', provincia: 'LIMA', distrito: 'LA VICTORIA', direccion: 'U. Vecinal Matute Block ' },
  { departamento: 'UCAYALI', provincia: 'CORONEL PORTILLO', distrito: 'YARINACOCHA', direccion: 'Av. Centenario Km. ' },
  { departamento: 'UCAYALI', provincia: 'CORONEL PORTILLO', distrito: 'MANANTAY', direccion: 'Jr. Sucre # ' },
  { departamento: 'LIMA', provincia: 'LIMA', distrito: 'SANTIAGO DE SURCO', direccion: 'Av. Primavera # ' }
];

const ESTADOS_CIVILES = ['Soltero/a', 'Casado/a', 'Divorciado/a', 'Viudo/a'];

/**
 * Consulta los datos de un DNI.
 * 
 * @param {object} supabase - Cliente Supabase.
 * @param {string} dni - DNI de 8 dígitos a consultar.
 * @returns {Promise<object>} Datos del cliente o error.
 */
export async function fetchDniData(supabase, dni) {
  if (!dni || dni.length !== 8 || !/^\d+$/.test(dni)) {
    throw new Error('El DNI debe tener exactamente 8 dígitos numéricos.');
  }

  // 1. INTENTAR BÚSQUEDA LOCAL
  try {
    const { data: localClient, error } = await supabase
      .from('clients')
      .select('*')
      .eq('dni', dni)
      .maybeSingle();

    if (!error && localClient) {
      console.log('Cliente encontrado en base de datos local:', localClient);
      return {
        ...localClient,
        isLocal: true
      };
    }
  } catch (err) {
    console.warn('Error al buscar cliente localmente, continuando con simulación...', err);
  }

  // 2. SIMULAR CONSULTA A RENIEC (Con demora de 1.2s para efectos estéticos)
  await new Promise(resolve => setTimeout(resolve, 1200));

  // Suma de los dígitos para generar índices deterministas
  const sumDigits = dni.split('').reduce((acc, char) => acc + parseInt(char, 10), 0);
  const lastDigit = parseInt(dni.charAt(7), 10);
  
  // Determinamos género basado en el último dígito (impar = masculino, par = femenino)
  const isMale = lastDigit % 2 !== 0;
  const nameList = isMale ? NOMBRES_MASCULINOS : NOMBRES_FEMENINOS;
  
  const firstName = nameList[sumDigits % nameList.length];
  const lastName1 = APELLIDOS[(sumDigits * 2) % APELLIDOS.length];
  const lastName2 = APELLIDOS[(sumDigits * 5) % APELLIDOS.length];
  const fullName = `${firstName} ${lastName1} ${lastName2}`.toUpperCase();

  // Ubicación determinista
  const locationIndex = sumDigits % DISTRITOS.length;
  const loc = DISTRITOS[locationIndex];
  const numAddress = (sumDigits * 7) % 600 + 100;
  const completeAddress = `${loc.direccion}${numAddress}`;

  // Estado civil
  const civilStatus = ESTADOS_CIVILES[sumDigits % ESTADOS_CIVILES.length];

  return {
    dni,
    names: fullName,
    phone: '', // Teléfono vacío para ingresar manualmente
    address: completeAddress,
    department: loc.departamento,
    province: loc.provincia,
    district: loc.distrito,
    civil_status: civilStatus,
    nationality: 'Peruana',
    isLocal: false,
    isSimulated: true
  };
}

/**
 * INSTRUCCIONES PARA INTEGRAR RENIEC REAL EN PRODUCCIÓN:
 * 
 * Si contratas un servicio como apis.net.pe o similar:
 * 1. Reemplaza la parte de "SIMULAR CONSULTA A RENIEC" con una petición HTTP:
 * 
 *   const token = 'TU_API_TOKEN_DE_APIS_NET_PE';
 *   const response = await fetch(`https://api.apis.net.pe/v2/reniec/dni?numero=${dni}`, {
 *     headers: {
 *       'Referer': 'https://apis.net.pe/consulta-dni-api',
 *       'Authorization': `Bearer ${token}`
 *     }
 *   });
 *   
 *   if (!response.ok) {
 *     throw new Error('No se pudo obtener la información de RENIEC.');
 *   }
 *   
 *   const data = await response.json();
 *   
 *   return {
 *     dni: data.numeroDocumento,
 *     names: `${data.nombres} ${data.apellidoPaterno} ${data.apellidoMaterno}`,
 *     phone: '',
 *     address: data.direccion || '',
 *     department: data.departamento || 'UCAYALI',
 *     province: data.provincia || 'CORONEL PORTILLO',
 *     district: data.distrito || 'CALLERIA',
 *     civil_status: 'Soltero/a', // Campo no retornado por APIs estándar de RENIEC
 *     nationality: 'Peruana',
 *     isLocal: false
 *   };
 */
