-- SEED DATA FOR REAL ESTATE SYSTEM (PROJECT: CONTROL ACTUAL)
BEGIN;

INSERT INTO projects (id, name, titular_name, titular_dni, titular_address, contract_template)
VALUES ('00000000-0000-0000-0000-000000000001', 'Control Actual', 'URBIS GROUP', '20606944463', 'Pucallpa', 'FORMATO DE CONTRATO POR DEFECTO')
ON CONFLICT (id) DO NOTHING;


INSERT INTO financial_accounts (id, project_id, name, type, account_number, holder_name)
VALUES ('00000000-0000-0000-0000-000000000010', '00000000-0000-0000-0000-000000000001', 'BBVA Cuenta Inmobiliaria', 'bank', '123-456789-0-0', 'URBIS GROUP')
ON CONFLICT (id) DO NOTHING;


INSERT INTO financial_accounts (id, project_id, name, type, account_number, holder_name)
VALUES ('00000000-0000-0000-0000-000000000011', '00000000-0000-0000-0000-000000000001', 'BCP Cuenta Inmobiliaria', 'bank', '123-456789-0-1', 'URBIS GROUP')
ON CONFLICT (id) DO NOTHING;


INSERT INTO financial_accounts (id, project_id, name, type, account_number, holder_name)
VALUES ('00000000-0000-0000-0000-000000000012', '00000000-0000-0000-0000-000000000001', 'INTERBANK Cuenta Inmobiliaria', 'bank', '123-456789-0-2', 'URBIS GROUP')
ON CONFLICT (id) DO NOTHING;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('12345678', 'URBIS GROUP-SEPARADO', '51914563585', 'Jr Saenz Peña 585', NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('47417177', 'SERGIO MAURICIO RIEGA BARTRA', '986 022 531', 'JR 09 DE DICIEMBRE 630', NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('00035198', 'MERY QUINTANA ACUY DE CACERES', '999999999', NULL, NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('73963744', 'ZULEMA AVRIL JHOSELYN CÁCERES QUINTANA', '999999999', NULL, NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('44476086', 'ALFREDO RUBÉN ALBERTO CÁCERES QUINTANA', '999999999', NULL, NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('23003116', 'MARIVEL RECAVARREN VIGIL', '999999999', NULL, NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('80246083', 'FRANK ALEJANDRO VARGAS ACUÑA', '928 460 941', NULL, NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('72681568', 'MARCOS GILBERTO ABENSUR VARGAS', '999999999', NULL, NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('45603407', 'ROMULO ARTURO BURGA PINEDO', '999999999', NULL, NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('00117872', 'PATTY LIZBETH VARGAS ACUÑA', '961 658 449', 'Jr. Putumayo N. 170', 'SOLTERA', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('48358337', 'MONICA MARISOL SANCHEZ ROBALINO', '52 998 440 5404', 'Jr Los angeles AAHH ampliacion san jose mz b lt 02', 'SOLTERA', 'YARINACOCHA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('46155068', 'SALLY VASQUEZ GONZALES', '999999999', 'Jr. Mariscal Caceres 250', 'CASADA', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('44419644', 'RAUL ROMEL REATEGUI PAUCAR', '967 608 806', 'AAHH. Corazon de Ucayali Mz 4 Lt 1', 'SOLTERO', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('72072229', 'DIANA CAROLINA RIOS GUTIERREZ', '9999999', 'PSJ. RIOS TIGRE N° 165', 'SOLTERA', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('00081726', 'MARLENI OJITOS GUETTA', NULL, NULL, NULL, 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('44175264', 'NILSSON RAMIREZ TEDDY ANTHONY', '992 990 327', 'JR. INMACULADA N°720', 'CASADO', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('73764966', 'DIEGO FRANCO MUÑOZ RECAVARREN', 'falta', 'AV. RAYMONDI N° 618', 'SOLTERO', 'RUPA RUPA', 'LEONCIO', 'HUANUCO')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('09995721', 'JOSE LUIS, LEON MESIA', '987 413 844', 'n Jr. Inmaculada N° 524', 'DIVORCIADO', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('06115804', 'CARMELA  OLIVA HUAMANLAZO BARRIOS', '902 813 695', 'AA.HH LAS BRISAS DE MANANTAY MZ. 12 LT 16', 'SOLTERA', 'MANANTAY', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('08561166', 'WALTER ALFREDO HUAMANCHUMO PASTOR', NULL, 'Jr. Manantay Mz 05 Lt 26 Asentamiento H. Nueva America', 'VIUDO', 'MANANTAY', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('61122481', 'JHON LUCIO SUAREZ SATALAY', '904 345 600', 'PSJ. HAMILTON ASENT. H. ESPERANZA DE NAZARENO MZ C LT. 9', 'SOLTERO', 'YARINACOCHA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('45579642', 'FLEKER FERNANDO YANCAPALLO CAJAHUACCHA', '961 975 497', 'ASO. PRO VIVIENDA SEÑOR DE LOS MILAGROS MZ. 38 LT 03', 'SOLTERO', 'YARINACOCHA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('06849661', 'FIDEL ANGEL DAVILA ALVAREZ', '996 507 991', 'JR. PACHACUTEC 131 4TA ZONA COLLIQUE', 'SOLTERO', 'COMAS', 'LIMA', 'LIMA')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('45359162', 'SILVANA MILAGROS DAVILA ESCOBAR', '994 720 367', 'JR. FRANCISCO LUNA PIZARRO 382', 'SOLTERA', 'LA VICTORIA', 'LIMA', 'LIMA')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('71886031', 'ALVARO GUILLERMO DAVILA ESCOBAR', '919 590 927', 'JR. PACHACUTEC 131 ZONA IV COLLIQUE', 'CASADO', 'COMAS', 'LIMA', 'LIMA')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('72534786', 'BARBARA JAHAIRA MELO DIAZ', '903 210 496', 'JR. PACHACUTEC 131 ZONA IV COLLIQUE', 'CASADA', 'COMAS', 'LIMA', 'LIMA')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('42688684', 'JOSE LUIS ORTIZ ESPINOZA', '957 291 514', 'URB. LAS LOMAS DE ZAPALLAL MZ L2 LT 23', 'SOLTERO', 'PUENTE PIEDRA', 'LIMA', 'LIMA')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('07493116', 'IGNACIO MARTIN MANRIQUE PEÑALOZA', '987 849 666', 'JR. FCO PAULA QUIROZ 289 STA.LUZMILA', 'SOLTERO', 'COMAS', 'LIMA', 'LIMA')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('77038963', 'JAIRO NICHEL VASQUEZ SABOYA', '943 378 007', 'JR. CAHUIDE S/N BARRIO MIRAFLORES', 'SOLTER', 'CAMPOS VERDE', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('75731855', 'PAOLO ESTIBER SIMA MACHUCA', '912  158 194', 'JR. AGUSTIN CAUPER N°19', 'SOLTER', 'CAMPOS VERDE', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('001971422', 'EDWIN ALBERO SEPULVEDA DELGADO', '935 431 633', 'JR.ZAVALA Nº460', 'SOLTERO', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('07530369', 'GERARDO ARTURO TOLENTINO TARAZONA', '931 894 069', 'U.VECINAL MATUTE BLOCK 56 B-5', 'CASADO', 'LA VICTORIA', 'LIMA', 'LIMA')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO clients (dni, names, phone, address, civil_status, district, province, department)
VALUES ('07530376', 'GERARDO ARTURO TOLENTINO TARAZONA', '938 894 069', 'U.VECINAL MATUTE BLOCK 56 B-12', 'CASADO', 'LA VICTORIA', 'LIMA', 'LIMA')
ON CONFLICT (dni) DO UPDATE 
SET names = EXCLUDED.names, phone = EXCLUDED.phone;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006500000001', '00000000-0000-0000-0000-000000000001', 'A', '1', 660.3, 87, 'separado', '[{"lado": "Frente", "medida": "22.24 ml", "colinda": "CARRETERA SAN JUAN"}, {"lado": "Derecha", "medida": "39.62 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "11.61 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "40.17 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006500000002', '00000000-0000-0000-0000-000000000001', 'A', '2', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "12.50 ml", "colinda": "CARRETERA SAN JUAN"}, {"lado": "Derecha", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "12.50 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006500000003', '00000000-0000-0000-0000-000000000001', 'A', '3', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "12.50 ml", "colinda": "CARRETERA SAN JUAN"}, {"lado": "Derecha", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "12.50 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000001', 'A', '4', 500, 65, 'vendido', '[{"lado": "Frente", "medida": "12.50 ml", "colinda": "CARRETERA SAN JUAN"}, {"lado": "Derecha", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "12.50 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000001', 'A', '5', 500, 65, 'vendido', '[{"lado": "Frente", "medida": "12.50 ml", "colinda": "L\u00cdMITE DE PROPIEDAD (NORTE)"}, {"lado": "Derecha", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "12.02 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "40.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000001', 'A', '6', 500, 65, 'vendido', '[{"lado": "Frente", "medida": "12.50 ml", "colinda": "PJE. MERA"}, {"lado": "Derecha", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "40.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "12.50 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006500000007', '00000000-0000-0000-0000-000000000001', 'A', '7', 829.43, 75, 'separado', '[{"lado": "Frente", "medida": "18.57 ml", "colinda": "PJE. MERA"}, {"lado": "Derecha", "medida": "24.11 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "40.17 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "22.24 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006600000001', '00000000-0000-0000-0000-000000000001', 'B', '1', 766, 75, 'separado', '[{"lado": "Frente", "medida": "26.32 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "8.93 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "39.62 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "42.95 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006600000002', '00000000-0000-0000-0000-000000000001', 'B', '2', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "11.90 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "12.08 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "40.86 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "38.17 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000001', 'B', '3', 500, 87, 'vendido', '[{"lado": "Frente", "medida": "14.14 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "12.93 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "12.08 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "38.17 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006600000004', '00000000-0000-0000-0000-000000000001', 'B', '4', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "13.70 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "16.14 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "14.14 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "19.88 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006600000005', '00000000-0000-0000-0000-000000000001', 'B', '5', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "18.70 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "15.45 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "13.70 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "19.88 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006600000006', '00000000-0000-0000-0000-000000000001', 'B', '6', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "23.28 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "32.39 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "18.70 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "19.88 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006600000007', '00000000-0000-0000-0000-000000000001', 'B', '7', 500, 75, 'separado', '[{"lado": "Frente", "medida": "29.55 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "20.85 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "32.39 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.02 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000001', '00000000-0000-0000-0000-000000000001', 'C', '1', 500, 75, 'separado', '[{"lado": "Frente", "medida": "24.10 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "26.61 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "26.61 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "14.96 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000002', '00000000-0000-0000-0000-000000000001', 'C', '2', 500, 75, 'separado', '[{"lado": "Frente", "medida": "16.35 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "25.02 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "34.51 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000001', 'C', '3', 500, 75, 'vendido', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "25.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "25.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000001', 'C', '4', 500, 75, 'vendido', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "25.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "25.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000005', '00000000-0000-0000-0000-000000000001', 'C', '5', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "25.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "25.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000006', '00000000-0000-0000-0000-000000000001', 'C', '6', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "25.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "11.59 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.99 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000007', '00000000-0000-0000-0000-000000000001', 'C', '7', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "17.70 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "17.19 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "47.83 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000008', '00000000-0000-0000-0000-000000000001', 'C', '8', 500, 87, 'disponible', '[{"lado": "Frente", "medida": "17.19 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "13.55 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "17.70 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000009', '00000000-0000-0000-0000-000000000001', 'C', '9', 477.83, 87, 'disponible', '[{"lado": "Frente", "medida": "32.56 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "23.99 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "17.19 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "39.03 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-006700000010', '00000000-0000-0000-0000-000000000001', 'C', '10', 643.98, 87, 'disponible', '[{"lado": "Frente", "medida": "44.70 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "39.03 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "32.56 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "14.83 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000001', '00000000-0000-0000-0000-000000000001', 'G', '1', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000001', 'G', '2', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000001', 'G', '3', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000004', '00000000-0000-0000-0000-000000000001', 'G', '4', 300, 77, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000005', '00000000-0000-0000-0000-000000000001', 'G', '5', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000006', '00000000-0000-0000-0000-000000000001', 'G', '6', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000001', 'G', '7', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000001', 'G', '8', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000001', 'G', '9', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000001', 'G', '10', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000001', 'G', '11', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000001', 'G', '12', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000001', '00000000-0000-0000-0000-000000000001', 'H', '1', 300, 65, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000001', 'H', '2', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000003', '00000000-0000-0000-0000-000000000001', 'H', '3', 300, 67, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000001', 'H', '4', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000001', 'H', '5', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000001', 'H', '6', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000007', '00000000-0000-0000-0000-000000000001', 'H', '7', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000001', 'H', '8', 300, 67, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000009', '00000000-0000-0000-0000-000000000001', 'H', '9', 292.25, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000010', '00000000-0000-0000-0000-000000000001', 'H', '10', 308.76, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000001', 'H', '11', 300, 65, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000001', 'H', '12', 300, 65, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000001', '00000000-0000-0000-0000-000000000001', 'I', '1', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000002', '00000000-0000-0000-0000-000000000001', 'I', '2', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000003', '00000000-0000-0000-0000-000000000001', 'I', '3', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-000000000001', 'I', '4', 300, 65, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-000000000001', 'I', '5', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000001', 'I', '6', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000001', 'I', '7', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000001', 'I', '8', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000001', 'I', '9', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000010', '00000000-0000-0000-0000-000000000001', 'I', '10', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000011', '00000000-0000-0000-0000-000000000001', 'I', '11', 300, 67, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007300000012', '00000000-0000-0000-0000-000000000001', 'I', '12', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000001', '00000000-0000-0000-0000-000000000001', 'J', '1', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000001', 'J', '2', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000001', 'J', '3', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000001', 'J', '4', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000001', 'J', '5', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000001', 'J', '6', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000007', '00000000-0000-0000-0000-000000000001', 'J', '7', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000008', '00000000-0000-0000-0000-000000000001', 'J', '8', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000009', '00000000-0000-0000-0000-000000000001', 'J', '9', 253.73, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-000000000001', 'J', '10', 270.24, 65, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-000000000001', 'J', '11', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007400000012', '00000000-0000-0000-0000-000000000001', 'J', '12', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000001', '00000000-0000-0000-0000-000000000001', 'K', '1', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000002', '00000000-0000-0000-0000-000000000001', 'K', '2', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000003', '00000000-0000-0000-0000-000000000001', 'K', '3', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000004', '00000000-0000-0000-0000-000000000001', 'K', '4', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000005', '00000000-0000-0000-0000-000000000001', 'K', '5', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000006', '00000000-0000-0000-0000-000000000001', 'K', '6', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000007', '00000000-0000-0000-0000-000000000001', 'K', '7', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000008', '00000000-0000-0000-0000-000000000001', 'K', '8', 300, 67, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000009', '00000000-0000-0000-0000-000000000001', 'K', '9', 300, 77, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000010', '00000000-0000-0000-0000-000000000001', 'K', '10', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000011', '00000000-0000-0000-0000-000000000001', 'K', '11', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007500000012', '00000000-0000-0000-0000-000000000001', 'K', '12', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000001', 'L', '1', 300, 55, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000001', 'L', '2', 300, 45, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000003', '00000000-0000-0000-0000-000000000001', 'L', '3', 300, 67, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000004', '00000000-0000-0000-0000-000000000001', 'L', '4', 300, 67, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000005', '00000000-0000-0000-0000-000000000001', 'L', '5', 300, 67, 'vendido', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000006', '00000000-0000-0000-0000-000000000001', 'L', '6', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000007', '00000000-0000-0000-0000-000000000001', 'L', '7', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000008', '00000000-0000-0000-0000-000000000001', 'L', '8', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000009', '00000000-0000-0000-0000-000000000001', 'L', '9', 212.45, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000010', '00000000-0000-0000-0000-000000000001', 'L', '10', 228.96, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000011', '00000000-0000-0000-0000-000000000001', 'L', '11', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007600000012', '00000000-0000-0000-0000-000000000001', 'L', '12', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000001', '00000000-0000-0000-0000-000000000001', 'M', '1', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000002', '00000000-0000-0000-0000-000000000001', 'M', '2', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000003', '00000000-0000-0000-0000-000000000001', 'M', '3', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000004', '00000000-0000-0000-0000-000000000001', 'M', '4', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000005', '00000000-0000-0000-0000-000000000001', 'M', '5', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000006', '00000000-0000-0000-0000-000000000001', 'M', '6', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000007', '00000000-0000-0000-0000-000000000001', 'M', '7', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000008', '00000000-0000-0000-0000-000000000001', 'M', '8', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000009', '00000000-0000-0000-0000-000000000001', 'M', '9', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000010', '00000000-0000-0000-0000-000000000001', 'M', '10', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000011', '00000000-0000-0000-0000-000000000001', 'M', '11', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007700000012', '00000000-0000-0000-0000-000000000001', 'M', '12', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA FRONTERA"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000001', '00000000-0000-0000-0000-000000000001', 'N', '1', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000002', '00000000-0000-0000-0000-000000000001', 'N', '2', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000003', '00000000-0000-0000-0000-000000000001', 'N', '3', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000004', '00000000-0000-0000-0000-000000000001', 'N', '4', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000005', '00000000-0000-0000-0000-000000000001', 'N', '5', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000006', '00000000-0000-0000-0000-000000000001', 'N', '6', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000007', '00000000-0000-0000-0000-000000000001', 'N', '7', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000008', '00000000-0000-0000-0000-000000000001', 'N', '8', 314.12, 77, 'disponible', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "15.34 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "15.83 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000009', '00000000-0000-0000-0000-000000000001', 'N', '9', 321.46, 67, 'disponible', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "15.83 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "16.26 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000010', '00000000-0000-0000-0000-000000000001', 'N', '10', 328.8, 77, 'disponible', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "16.26 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "16.22 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007800000011', '00000000-0000-0000-0000-000000000001', 'N', '11', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007900000002', '00000000-0000-0000-0000-000000000001', 'O', '2', 409.12, 77, 'disponible', '[{"lado": "Frente", "medida": "16.82", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.46", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "11", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007900000003', '00000000-0000-0000-0000-000000000001', 'O', '3', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007900000004', '00000000-0000-0000-0000-000000000001', 'O', '4', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007900000005', '00000000-0000-0000-0000-000000000001', 'O', '5', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007900000006', '00000000-0000-0000-0000-000000000001', 'O', '6', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-007900000007', '00000000-0000-0000-0000-000000000001', 'O', '7', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10", "colinda": "CA. LAS FRONTERAS"}, {"lado": "Derecha", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000001', '00000000-0000-0000-0000-000000000001', 'P', '1', 300, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "CA. LOS OPALOS"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.46 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000002', '00000000-0000-0000-0000-000000000001', 'P', '2', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000003', '00000000-0000-0000-0000-000000000001', 'P', '3', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000004', '00000000-0000-0000-0000-000000000001', 'P', '4', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000005', '00000000-0000-0000-0000-000000000001', 'P', '5', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000006', '00000000-0000-0000-0000-000000000001', 'P', '6', 346.91, 77, 'disponible', '[{"lado": "Frente", "medida": "10.00 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "10.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000007', '00000000-0000-0000-0000-000000000001', 'P', '7', 350.87, 67, 'disponible', '[{"lado": "Frente", "medida": "8.92 ml", "colinda": "JR. EL SALVADOR"}, {"lado": "Derecha", "medida": "30.00 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "30.46 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "14.21 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000008', '00000000-0000-0000-0000-000000000001', 'P', '8', 390.6, 77, 'disponible', '[{"lado": "Frente", "medida": "10.15 ml", "colinda": "CA. LA TERMINAL"}, {"lado": "Derecha", "medida": "35.97 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "34.21 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "14.21 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000009', '00000000-0000-0000-0000-000000000001', 'P', '9', 295.77, 67, 'disponible', '[{"lado": "Frente", "medida": "28.45 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "14.30 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "14.61 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "25.97 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000010', '00000000-0000-0000-0000-000000000001', 'P', '10', 303.11, 77, 'disponible', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "14.61 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "14.97 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO lots (id, project_id, mz, lt, area_m2, price_per_m2, status, boundaries)
VALUES ('00000000-0000-0000-0000-008000000011', '00000000-0000-0000-0000-000000000001', 'P', '11', 300, 67, 'disponible', '[{"lado": "Frente", "medida": "20.00 ml", "colinda": "CA. LA VECINDAD"}, {"lado": "Derecha", "medida": "14.97 ml", "colinda": "Lote colindante"}, {"lado": "Izquierda", "medida": "15.34 ml", "colinda": "Lote colindante"}, {"lado": "Fondo", "medida": "20.00 ml", "colinda": "Lote colindante"}]')
ON CONFLICT (project_id, mz, lt) DO UPDATE
SET status = EXCLUDED.status, boundaries = EXCLUDED.boundaries;


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-006500000004', '72681568', 32500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 0, '2025-03-28', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 1, '2025-04-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 2, '2025-05-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 3, '2025-06-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 4, '2025-07-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 5, '2025-08-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 6, '2025-09-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 7, '2025-10-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 8, '2025-11-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 9, '2025-12-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 10, '2026-01-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 11, '2026-02-28', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 12, '2026-03-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 13, '2026-04-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 14, '2026-05-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 15, '2026-06-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 16, '2026-07-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 17, '2026-08-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 18, '2026-09-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 19, '2026-10-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 20, '2026-11-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 21, '2026-12-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 22, '2027-01-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 23, '2027-02-28', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 24, '2027-03-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 25, '2027-04-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 26, '2027-05-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 27, '2027-06-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 28, '2027-07-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 29, '2027-08-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 30, '2027-09-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 31, '2027-10-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 32, '2027-11-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 33, '2027-12-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 34, '2028-01-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 35, '2028-02-29', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 36, '2028-03-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 37, '2028-04-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 38, '2028-05-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 39, '2028-06-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 40, '2028-07-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 41, '2028-08-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 42, '2028-09-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 43, '2028-10-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 44, '2028-11-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 45, '2028-12-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 46, '2029-01-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 47, '2029-02-28', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 48, '2029-03-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000004', 51, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-006500000005', '00117872', 32500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 0, '2025-04-10', 100, 100, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 0, '2005-04-21', 400, 400, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 1, '2025-05-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 2, '2025-06-30', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 3, '2025-07-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 4, '2025-08-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 5, '2025-09-30', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 6, '2025-10-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 7, '2025-11-30', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 8, '2025-12-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 9, '2026-01-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 10, '2026-02-28', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 11, '2026-03-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 12, '2026-04-30', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 13, '2026-05-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 14, '2026-06-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 15, '2026-07-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 16, '2026-08-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 17, '2026-09-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 18, '2026-10-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 19, '2026-11-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 20, '2026-12-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 21, '2027-01-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 22, '2027-02-28', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 23, '2027-03-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 24, '2027-04-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 25, '2027-05-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 26, '2027-06-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 27, '2027-07-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 28, '2027-08-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 29, '2027-09-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 30, '2027-10-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 31, '2027-11-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 32, '2027-12-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 33, '2028-01-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 34, '2028-02-29', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 35, '2028-03-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 36, '2028-04-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 37, '2028-05-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 38, '2028-06-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 39, '2028-07-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 40, '2028-08-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 41, '2028-09-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 42, '2029-10-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 43, '2028-11-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 44, '2028-12-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 45, '2029-01-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 46, '2029-02-28', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 47, '2029-03-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 48, '2029-04-30', 651, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000005', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-006500000006', '00117872', 32500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 0, '2025-04-10', 100, 100, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 0, '2005-04-21', 400, 400, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 1, '2025-05-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 2, '2025-06-30', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 3, '2025-07-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 4, '2025-08-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 5, '2025-09-30', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 6, '2025-10-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 7, '2025-11-30', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 8, '2025-12-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 9, '2026-01-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 10, '2026-02-28', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 11, '2026-03-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 12, '2026-04-30', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 13, '2026-05-31', 667, 667, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 14, '2026-06-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 15, '2026-07-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 16, '2026-08-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 17, '2026-09-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 18, '2026-10-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 19, '2026-11-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 20, '2026-12-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 21, '2027-01-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 22, '2027-02-28', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 23, '2027-03-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 24, '2027-04-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 25, '2027-05-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 26, '2027-06-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 27, '2027-07-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 28, '2027-08-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 29, '2027-09-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 30, '2027-10-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 31, '2027-11-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 32, '2027-12-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 33, '2028-01-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 34, '2028-02-29', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 35, '2028-03-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 36, '2028-04-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 37, '2028-05-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 38, '2028-06-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 39, '2028-07-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 40, '2028-08-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 41, '2028-09-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 42, '2029-10-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 43, '2028-11-30', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 44, '2028-12-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 45, '2029-01-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 46, '2029-02-28', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 47, '2029-03-31', 667, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 48, '2029-04-30', 651, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000006', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO clients (dni, names, phone, district, province, department)
VALUES ('GEN-24144289', 'DORELY ROSA MENDIZABAL CALIXTO', '51920475686', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO NOTHING;


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-006600000003', 'GEN-24144289', 43500, 1000, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 0, '2025-06-30', 1000, 1000, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 1, '2025-11-30', 771, 770, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 2, '2025-12-30', 771, 770, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 3, '2026-01-30', 771, 770, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 4, '2026-02-28', 771, 770, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 5, '2026-03-30', 771, 775, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 6, '2026-04-30', 771, 771, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 7, '2026-05-30', 771, 775, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 8, '2026-06-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 9, '2026-07-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 10, '2026-08-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 11, '2026-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 12, '2026-10-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 13, '2026-11-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 14, '2026-12-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 15, '2027-01-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 16, '2027-02-28', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 17, '2027-03-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 18, '2027-04-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 19, '2027-05-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 20, '2027-06-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 21, '2027-07-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 22, '2027-08-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 23, '2027-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 24, '2027-10-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 25, '2027-11-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 26, '2027-12-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 27, '2028-01-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 28, '2028-02-29', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 29, '2028-03-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 30, '2028-04-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 31, '2028-05-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 32, '2028-06-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 33, '2028-07-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 34, '2028-08-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 35, '2028-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 36, '2029-10-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 37, '2028-11-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 38, '2028-12-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 39, '2029-01-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 40, '2029-02-28', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 41, '2029-03-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 42, '2029-04-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 43, '2029-05-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 44, '2029-06-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 45, '2029-07-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 46, '2029-08-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 47, '2029-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 48, '2029-09-30', 763, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000003', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-006700000003', '06115804', 37500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 0, '2025-06-30', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 1, '2025-07-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 2, '2025-08-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 3, '2025-09-30', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 4, '2025-10-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 5, '2025-11-30', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 6, '2025-12-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 7, '2026-01-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 8, '2026-02-28', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 9, '2026-03-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 10, '2026-04-30', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 11, '2026-05-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 12, '2026-06-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 13, '2026-07-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 14, '2026-08-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 15, '2026-09-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 16, '2026-10-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 17, '2026-11-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 18, '2026-12-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 19, '2027-01-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 20, '2027-02-28', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 21, '2027-03-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 22, '2027-04-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 23, '2027-05-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 24, '2027-06-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 25, '2027-07-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 26, '2027-08-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 27, '2027-09-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 28, '2027-10-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 29, '2027-11-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 30, '2027-12-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 31, '2028-01-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 32, '2028-02-29', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 33, '2028-03-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 34, '2028-04-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 35, '2028-05-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 36, '2028-06-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 37, '2028-07-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 38, '2028-08-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 39, '2028-09-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 40, '2029-10-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 41, '2028-11-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 42, '2028-12-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 43, '2029-01-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 44, '2029-02-28', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 45, '2029-03-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 46, '2029-04-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 47, '2029-05-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 48, '2029-06-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000003', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-006700000004', '06115804', 37500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 0, '2025-06-30', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 1, '2025-07-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 2, '2025-08-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 3, '2025-09-30', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 4, '2025-10-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 5, '2025-11-30', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 6, '2025-12-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 7, '2026-01-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 8, '2026-02-28', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 9, '2026-03-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 10, '2026-04-30', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 11, '2026-05-31', 770.83, 770.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 12, '2026-06-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 13, '2026-07-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 14, '2026-08-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 15, '2026-09-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 16, '2026-10-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 17, '2026-11-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 18, '2026-12-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 19, '2027-01-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 20, '2027-02-28', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 21, '2027-03-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 22, '2027-04-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 23, '2027-05-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 24, '2027-06-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 25, '2027-07-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 26, '2027-08-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 27, '2027-09-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 28, '2027-10-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 29, '2027-11-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 30, '2027-12-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 31, '2028-01-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 32, '2028-02-29', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 33, '2028-03-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 34, '2028-04-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 35, '2028-05-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 36, '2028-06-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 37, '2028-07-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 38, '2028-08-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 39, '2028-09-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 40, '2029-10-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 41, '2028-11-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 42, '2028-12-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 43, '2029-01-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 44, '2029-02-28', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 45, '2029-03-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 46, '2029-04-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 47, '2029-05-31', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 48, '2029-06-30', 770.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006700000004', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-007100000002', '72681568', 13500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 0, '2005-04-21', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 1, '2025-05-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 2, '2025-06-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 3, '2025-07-31', 270.8, 270.85, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 4, '2025-08-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 5, '2025-09-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 6, '2025-10-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 7, '2025-11-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 8, '2025-12-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 9, '2026-01-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 10, '2026-02-28', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 11, '2026-03-16', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 12, '2026-04-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 13, '2026-05-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 14, '2026-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 15, '2026-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 16, '2026-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 17, '2026-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 18, '2026-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 19, '2026-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 20, '2026-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 21, '2027-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 22, '2027-02-28', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 23, '2027-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 24, '2027-04-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 25, '2027-05-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 26, '2027-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 27, '2027-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 28, '2027-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 29, '2027-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 30, '2027-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 31, '2027-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 32, '2027-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 33, '2028-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 34, '2028-02-29', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 35, '2028-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 36, '2028-04-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 37, '2028-05-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 38, '2028-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 39, '2028-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 40, '2028-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 41, '2028-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 42, '2029-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 43, '2028-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 44, '2028-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 45, '2029-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 46, '2029-02-28', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 47, '2029-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 48, '2029-04-30', 270.4, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000002', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-007100000003', '44175264', 13500, 600, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 0, '2025-04-13', 100, 100, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 0, '2005-04-21', 500, 400, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 1, '2025-05-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 2, '2025-06-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 3, '2025-07-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 4, '2025-08-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 5, '2025-09-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 6, '2025-10-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 7, '2025-11-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 8, '2025-12-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 9, '2026-01-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 10, '2026-02-28', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 11, '2026-03-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 12, '2026-04-30', 270.8, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 13, '2026-05-31', 270.8, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 14, '2026-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 15, '2026-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 16, '2026-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 17, '2026-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 18, '2026-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 19, '2026-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 20, '2026-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 21, '2027-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 22, '2027-02-28', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 23, '2027-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 24, '2027-04-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 25, '2027-05-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 26, '2027-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 27, '2027-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 28, '2027-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 29, '2027-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 30, '2027-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 31, '2027-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 32, '2027-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 33, '2028-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 34, '2028-02-29', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 35, '2028-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 36, '2028-04-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 37, '2028-05-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 38, '2028-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 39, '2028-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 40, '2028-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 41, '2028-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 42, '2029-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 43, '2028-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 44, '2028-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 45, '2029-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 46, '2029-02-28', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 47, '2029-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 48, '2029-04-30', 270.4, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000003', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO clients (dni, names, phone, district, province, department)
VALUES ('GEN-96659256', 'YAZMIN ATUANETH AYALA BASILIO', '51952527411', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO NOTHING;


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000004', '00000000-0000-0000-0000-007100000004', 'GEN-96659256', 23100, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 0, '2005-04-21', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 1, '2026-05-31', 471, 471, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 2, '2026-06-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 3, '2026-07-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 4, '2026-08-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 5, '2026-09-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 6, '2026-10-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 7, '2026-11-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 8, '2026-12-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 9, '2027-01-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 10, '2027-02-28', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 11, '2027-03-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 12, '2027-04-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 13, '2027-05-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 14, '2027-06-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 15, '2027-07-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 16, '2027-08-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 17, '2027-09-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 18, '2027-10-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 19, '2027-11-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 20, '2027-12-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 21, '2028-01-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 22, '2028-02-29', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 23, '2028-03-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 24, '2028-04-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 25, '2028-05-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 26, '2028-06-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 27, '2028-07-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 28, '2028-08-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 29, '2028-09-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 30, '2028-10-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 31, '2028-11-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 32, '2028-12-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 33, '2029-01-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 34, '2029-02-28', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 35, '2029-03-31', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 36, '2029-04-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 37, '2029-05-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 38, '2029-06-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 39, '2029-07-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 40, '2029-08-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 41, '2029-09-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 42, '2029-10-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 43, '2029-11-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 44, '2029-12-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 45, '2030-01-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 46, '2030-02-28', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 47, '2030-03-30', 471, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 48, '2030-04-30', 463, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-007100000007', '48358337', 13500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 0, '2025-04-10', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 1, '2025-05-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 2, '2025-06-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 3, '2025-07-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 4, '2025-08-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 5, '2025-09-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 6, '2025-10-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 7, '2025-11-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 8, '2025-12-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 9, '2026-01-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 10, '2026-02-28', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 11, '2026-03-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 12, '2026-04-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 13, '2026-05-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 14, '2026-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 15, '2026-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 16, '2026-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 17, '2026-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 18, '2026-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 19, '2026-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 20, '2026-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 21, '2027-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 22, '2027-02-28', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 23, '2027-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 24, '2027-04-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 25, '2027-05-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 26, '2027-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 27, '2027-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 28, '2027-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 29, '2027-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 30, '2027-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 31, '2027-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 32, '2027-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 33, '2028-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 34, '2028-02-29', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 35, '2028-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 36, '2028-04-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 37, '2028-05-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 38, '2028-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 39, '2028-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 40, '2028-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 41, '2028-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 42, '2028-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 43, '2028-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 44, '2028-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 45, '2029-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 46, '2029-02-28', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 47, '2029-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 48, '2029-04-30', 270.4, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000007', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-007100000008', '48358337', 13500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 0, '2025-04-10', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 1, '2025-05-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 2, '2025-06-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 3, '2025-07-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 4, '2025-08-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 5, '2025-09-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 6, '2025-10-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 7, '2025-11-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 8, '2025-12-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 9, '2026-01-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 10, '2026-02-28', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 11, '2026-03-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 12, '2026-04-30', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 13, '2026-05-31', 270.8, 270.8, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 14, '2026-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 15, '2026-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 16, '2026-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 17, '2026-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 18, '2026-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 19, '2026-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 20, '2026-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 21, '2027-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 22, '2027-02-28', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 23, '2027-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 24, '2027-04-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 25, '2027-05-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 26, '2027-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 27, '2027-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 28, '2027-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 29, '2027-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 30, '2027-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 31, '2027-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 32, '2027-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 33, '2028-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 34, '2028-02-29', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 35, '2028-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 36, '2028-04-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 37, '2028-05-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 38, '2028-06-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 39, '2028-07-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 40, '2028-08-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 41, '2028-09-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 42, '2028-10-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 43, '2028-11-30', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 44, '2028-12-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 45, '2029-01-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 46, '2029-02-28', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 47, '2029-03-31', 270.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 48, '2029-04-30', 270.4, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000008', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-007100000009', '47417177', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 0, '2025-03-19', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 0, '2025-03-19', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 1, '2025-04-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 2, '2025-05-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 3, '2025-06-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 4, '2025-07-30', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 5, '2025-08-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 6, '2025-09-30', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 7, '2025-10-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 8, '2025-11-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 9, '2025-12-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 10, '2026-01-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 11, '2026-02-28', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 12, '2026-03-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 13, '2026-04-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 14, '2026-05-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 15, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 16, '2026-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 17, '2026-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 18, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 19, '2026-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 20, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 21, '2026-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 22, '2027-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 23, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 24, '2027-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 25, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 26, '2027-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 27, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 28, '2027-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 29, '2027-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 30, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 31, '2027-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 32, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 33, '2027-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 34, '2028-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 35, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 36, '2028-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 37, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 38, '2028-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 39, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 40, '2028-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 41, '2028-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 42, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 43, '2028-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 44, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 45, '2028-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 46, '2029-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 47, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 48, '2029-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000009', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-007100000010', '23003116', 13500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 0, '2025-04-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 0, '2025-04-01', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 1, '2025-04-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 2, '2025-05-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 3, '2025-06-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 4, '2025-07-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 5, '2025-08-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 6, '2025-09-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 7, '2025-10-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 8, '2025-11-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 9, '2025-12-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 10, '2026-01-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 11, '2026-02-28', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 12, '2026-03-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 13, '2026-04-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 14, '2026-05-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 15, '2026-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 16, '2026-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 17, '2026-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 18, '2026-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 19, '2026-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 20, '2026-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 21, '2026-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 22, '2027-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 23, '2027-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 24, '2027-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 25, '2027-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 26, '2027-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 27, '2027-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 28, '2027-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 29, '2027-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 30, '2027-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 31, '2027-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 32, '2027-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 33, '2027-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 34, '2028-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 35, '2028-02-29', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 36, '2028-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 37, '2028-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 38, '2028-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 39, '2028-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 40, '2028-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 41, '2028-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 42, '2028-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 43, '2028-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 44, '2028-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 45, '2028-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 46, '2029-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 47, '2029-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 48, '2029-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000010', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-007100000011', '23003116', 13500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 0, '2025-04-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 0, '2025-04-01', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 1, '2025-04-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 2, '2025-05-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 3, '2025-06-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 4, '2025-07-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 5, '2025-08-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 6, '2025-09-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 7, '2025-10-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 8, '2025-11-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 9, '2025-12-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 10, '2026-01-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 11, '2026-02-28', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 12, '2026-03-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 13, '2026-04-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 14, '2026-05-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 15, '2026-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 16, '2026-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 17, '2026-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 18, '2026-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 19, '2026-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 20, '2026-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 21, '2026-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 22, '2027-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 23, '2027-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 24, '2027-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 25, '2027-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 26, '2027-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 27, '2027-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 28, '2027-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 29, '2027-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 30, '2027-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 31, '2027-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 32, '2027-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 33, '2027-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 34, '2028-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 35, '2028-02-29', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 36, '2028-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 37, '2028-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 38, '2028-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 39, '2028-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 40, '2028-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 41, '2028-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 42, '2028-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 43, '2028-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 44, '2028-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 45, '2028-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 46, '2029-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 47, '2029-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 48, '2029-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000011', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-007100000012', '23003116', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 0, '2025-04-03', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 0, '2025-04-03', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 1, '2025-04-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 2, '2025-05-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 3, '2025-06-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 4, '2025-07-30', 333.33, 333.3, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 5, '2025-08-30', 333.33, 333.3, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 6, '2025-09-30', 333.33, 333.6, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 7, '2025-10-30', 333.33, 333.3, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 8, '2025-11-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 9, '2025-12-30', 333.33, 333.3, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 10, '2026-01-30', 333.33, 333.3, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 11, '2026-02-28', 333.33, 333.3, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 12, '2026-03-30', 333.33, 333.3, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 13, '2026-04-30', 333.33, 333.39, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 14, '2026-05-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 15, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 16, '2026-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 17, '2026-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 18, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 19, '2026-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 20, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 21, '2026-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 22, '2027-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 23, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 24, '2027-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 25, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 26, '2027-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 27, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 28, '2027-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 29, '2027-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 30, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 31, '2027-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 32, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 33, '2027-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 34, '2028-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 35, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 36, '2028-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 37, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 38, '2028-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 39, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 40, '2028-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 41, '2028-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 42, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 43, '2028-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 44, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 45, '2028-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 46, '2029-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 47, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 48, '2029-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000012', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-007200000002', '44419644', 13500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 0, '2005-04-15', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 1, '2025-05-31', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 2, '2025-06-30', 271, 272, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 3, '2025-07-31', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 4, '2025-08-31', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 5, '2025-09-30', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 6, '2025-10-31', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 7, '2025-11-30', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 8, '2025-12-31', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 9, '2026-01-31', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 10, '2026-02-28', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 11, '2026-03-31', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 12, '2026-04-30', 271, 271, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 13, '2026-05-31', 271, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 14, '2026-06-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 15, '2026-07-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 16, '2026-08-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 17, '2026-09-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 18, '2026-10-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 19, '2026-11-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 20, '2026-12-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 21, '2027-01-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 22, '2027-02-28', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 23, '2027-03-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 24, '2027-04-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 25, '2027-05-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 26, '2027-06-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 27, '2027-07-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 28, '2027-08-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 29, '2027-09-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 30, '2027-10-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 31, '2027-11-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 32, '2027-12-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 33, '2028-01-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 34, '2028-02-29', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 35, '2028-03-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 36, '2028-04-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 37, '2028-05-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 38, '2028-06-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 39, '2028-07-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 40, '2028-08-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 41, '2028-09-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 42, '2028-10-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 43, '2028-11-30', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 44, '2028-12-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 45, '2029-01-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 46, '2029-02-28', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 47, '2029-03-31', 271, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 48, '2029-04-30', 263, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000002', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007200000003', '00000000-0000-0000-0000-007200000003', '45603407', 20100, 2800, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 0, '2026-04-25', 50, 50, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 0, '2026-04-30', 2750, 2750, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 1, '2026-05-31', 361, 361, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 2, '2026-06-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 3, '2026-07-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 4, '2026-08-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 5, '2026-09-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 6, '2026-10-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 7, '2026-11-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 8, '2026-12-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 9, '2027-01-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 10, '2027-02-28', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 11, '2027-03-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 12, '2027-04-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 13, '2027-05-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 14, '2027-06-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 15, '2027-07-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 16, '2027-08-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 17, '2027-09-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 18, '2027-10-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 19, '2027-11-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 20, '2027-12-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 21, '2028-01-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 22, '2028-02-29', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 23, '2028-03-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 24, '2028-04-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 25, '2028-05-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 26, '2028-06-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 27, '2028-07-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 28, '2028-08-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 29, '2028-09-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 30, '2028-10-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 31, '2028-11-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 32, '2028-12-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 33, '2029-01-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 34, '2029-02-28', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 35, '2029-03-31', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 36, '2029-04-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 37, '2029-05-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 38, '2029-06-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 39, '2029-07-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 40, '2029-08-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 41, '2029-09-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 42, '2029-10-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 43, '2029-11-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 44, '2029-12-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 45, '2030-01-30', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 46, '2030-02-28', 361, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 47, '2030-03-30', 333, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 48, '2030-04-30', 463, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000003', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-007200000004', '45603407', 13500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 0, '2025-03-30', 50, 50, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 0, '2025-04-05', 450, 450, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 1, '2025-04-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 2, '2025-05-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 3, '2025-06-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 4, '2025-07-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 5, '2025-08-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 6, '2025-09-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 7, '2025-10-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 8, '2025-11-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 9, '2025-12-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 10, '2026-01-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 11, '2026-02-28', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 12, '2026-03-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 13, '2026-04-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 14, '2026-05-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 15, '2026-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 16, '2026-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 17, '2026-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 18, '2026-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 19, '2026-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 20, '2026-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 21, '2026-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 22, '2027-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 23, '2027-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 24, '2027-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 25, '2027-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 26, '2027-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 27, '2027-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 28, '2027-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 29, '2027-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 30, '2027-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 31, '2027-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 32, '2027-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 33, '2027-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 34, '2028-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 35, '2028-02-29', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 36, '2028-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 37, '2028-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 38, '2028-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 39, '2028-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 40, '2028-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 41, '2028-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 42, '2028-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 43, '2028-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 44, '2028-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 45, '2028-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 46, '2029-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 47, '2029-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 48, '2029-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000004', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-007200000005', '72072229', 13500, 1584, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 0, '2025-09-25', 1584, 1584, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 1, '2025-11-30', 248, 248, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 2, '2025-12-30', 248, 248, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 3, '2026-01-30', 248, 248, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 4, '2026-02-28', 248, 248, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 5, '2026-03-30', 248, 248, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 6, '2026-04-30', 248, 248, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 7, '2026-05-30', 248, 248, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 8, '2026-06-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 9, '2026-07-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 10, '2026-08-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 11, '2026-09-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 12, '2026-10-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 13, '2026-11-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 14, '2026-12-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 15, '2027-01-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 16, '2027-02-28', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 17, '2027-03-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 18, '2027-04-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 19, '2027-05-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 20, '2027-06-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 21, '2027-07-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 22, '2027-08-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 23, '2027-09-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 24, '2027-10-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 25, '2027-11-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 26, '2027-12-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 27, '2028-01-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 28, '2028-02-29', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 29, '2028-03-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 30, '2028-04-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 31, '2028-05-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 32, '2028-06-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 33, '2028-07-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 34, '2028-08-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 35, '2028-09-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 36, '2029-10-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 37, '2028-11-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 38, '2028-12-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 39, '2029-01-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 40, '2029-02-28', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 41, '2029-03-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 42, '2029-04-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 43, '2029-05-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 44, '2029-06-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 45, '2029-07-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 46, '2029-08-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 47, '2029-09-30', 248, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 48, '2029-09-30', 260, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000005', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-007200000006', '72072229', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 0, '2005-04-21', 500, 1840, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 1, '2025-11-30', 311, 311, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 2, '2025-12-30', 311, 311, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 3, '2026-01-30', 311, 311, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 4, '2026-02-28', 311, 311, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 5, '2026-03-30', 311, 311, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 6, '2026-04-30', 311, 311, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 7, '2026-05-30', 311, 311, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 8, '2026-06-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 9, '2026-07-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 10, '2026-08-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 11, '2026-09-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 12, '2026-10-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 13, '2026-11-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 14, '2026-12-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 15, '2027-01-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 16, '2027-02-28', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 17, '2027-03-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 18, '2027-04-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 19, '2027-05-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 20, '2027-06-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 21, '2027-07-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 22, '2027-08-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 23, '2027-09-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 24, '2027-10-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 25, '2027-11-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 26, '2027-12-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 27, '2028-01-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 28, '2028-02-29', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 29, '2028-03-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 30, '2028-04-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 31, '2028-05-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 32, '2028-06-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 33, '2028-07-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 34, '2028-08-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 35, '2028-09-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 36, '2029-10-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 37, '2028-11-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 38, '2028-12-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 39, '2029-01-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 40, '2029-02-28', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 41, '2029-03-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 42, '2029-04-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 43, '2029-05-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 44, '2029-06-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 45, '2029-07-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 46, '2029-08-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 47, '2029-09-30', 311, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 48, '2029-09-30', 43, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000006', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-007200000008', '77038963', 20100, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 0, '2025-08-21', 100, 100, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 0, '2025-10-07', 400, 400, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 1, '2025-11-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 2, '2025-12-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 3, '2026-01-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 4, '2026-02-28', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 5, '2026-03-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 6, '2026-04-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 7, '2026-05-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 8, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 9, '2026-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 10, '2026-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 11, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 12, '2026-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 13, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 14, '2026-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 15, '2027-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 16, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 17, '2027-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 18, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 19, '2027-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 20, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 21, '2027-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 22, '2027-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 23, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 24, '2027-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 25, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 26, '2027-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 27, '2028-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 28, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 29, '2028-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 30, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 31, '2028-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 32, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 33, '2028-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 34, '2028-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 35, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 36, '2029-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 37, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 38, '2028-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 39, '2029-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 40, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 41, '2029-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 42, '2029-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 43, '2029-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 44, '2029-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 45, '2029-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 46, '2029-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 47, '2029-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 48, '2029-09-30', 333.49, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000008', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-007200000011', '08561166', 19500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 0, '2025-07-06', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 1, '2025-08-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 2, '2025-09-30', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 3, '2025-10-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 4, '2025-11-30', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 5, '2025-12-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 6, '2026-01-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 7, '2026-02-28', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 8, '2026-03-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 9, '2026-04-30', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 10, '2026-05-31', 395.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 11, '2026-06-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 12, '2026-07-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 13, '2026-08-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 14, '2026-09-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 15, '2026-10-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 16, '2026-11-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 17, '2026-12-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 18, '2027-01-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 19, '2027-02-28', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 20, '2027-03-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 21, '2027-04-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 22, '2027-05-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 23, '2027-06-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 24, '2027-07-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 25, '2027-08-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 26, '2027-09-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 27, '2027-10-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 28, '2027-11-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 29, '2027-12-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 30, '2028-01-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 31, '2028-02-29', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 32, '2028-03-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 33, '2028-04-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 34, '2028-05-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 35, '2028-06-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 36, '2028-07-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 37, '2028-08-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 38, '2028-09-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 39, '2029-10-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 40, '2028-11-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 41, '2028-12-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 42, '2029-01-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 43, '2029-02-28', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 44, '2029-03-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 45, '2029-04-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 46, '2029-05-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 47, '2029-06-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 48, '2029-07-31', 395.9, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000011', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-007200000012', '45579642', 19500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 0, '2025-07-18', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 1, '2025-08-31', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 2, '2025-09-30', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 3, '2025-10-31', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 4, '2025-11-30', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 5, '2025-12-31', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 6, '2026-01-31', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 7, '2026-02-28', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 8, '2026-03-31', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 9, '2026-04-30', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 10, '2026-05-31', 395, 395, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 11, '2026-06-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 12, '2026-07-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 13, '2026-08-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 14, '2026-09-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 15, '2026-10-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 16, '2026-11-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 17, '2026-12-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 18, '2027-01-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 19, '2027-02-28', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 20, '2027-03-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 21, '2027-04-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 22, '2027-05-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 23, '2027-06-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 24, '2027-07-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 25, '2027-08-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 26, '2027-09-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 27, '2027-10-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 28, '2027-11-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 29, '2027-12-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 30, '2028-01-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 31, '2028-02-29', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 32, '2028-03-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 33, '2028-04-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 34, '2028-05-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 35, '2028-06-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 36, '2028-07-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 37, '2028-08-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 38, '2028-09-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 39, '2029-10-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 40, '2028-11-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 41, '2028-12-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 42, '2029-01-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 43, '2029-02-28', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 44, '2029-03-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 45, '2029-04-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 46, '2029-05-31', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 47, '2029-06-30', 395, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 48, '2029-07-31', 434.8, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007200000012', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO clients (dni, names, phone, district, province, department)
VALUES ('GEN-20105762', 'CRISTHIAN FERNANDO RUIZ SEMINARIO', '51988605281', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO NOTHING;


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-007300000004', 'GEN-20105762', 19500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 0, '2025-10-23', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 1, '2025-11-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 2, '2025-12-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 3, '2026-01-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 4, '2026-02-28', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 5, '2026-03-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 6, '2026-04-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 7, '2026-05-30', 356, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 8, '2026-06-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 9, '2026-07-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 10, '2026-08-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 11, '2026-09-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 12, '2026-10-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 13, '2026-11-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 14, '2026-12-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 15, '2027-01-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 16, '2027-02-28', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 17, '2027-03-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 18, '2027-04-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 19, '2027-05-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 20, '2027-06-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 21, '2027-07-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 22, '2027-08-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 23, '2027-09-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 24, '2027-10-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 25, '2027-11-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 26, '2027-12-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 27, '2028-01-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 28, '2028-02-29', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 29, '2028-03-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 30, '2028-04-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 31, '2028-05-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 32, '2028-06-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 33, '2028-07-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 34, '2028-08-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 35, '2028-09-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 36, '2029-10-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 37, '2028-11-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 38, '2028-12-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 39, '2029-01-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 40, '2029-02-28', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 41, '2029-03-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 42, '2029-04-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 43, '2029-05-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 44, '2029-06-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 45, '2029-07-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 46, '2029-08-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 47, '2029-09-30', 396, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 48, '2029-09-30', 388, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000004', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-007300000005', 'GEN-20105762', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 0, '2025-06-30', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 1, '2025-11-30', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 2, '2025-01-01', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 3, '2026-01-30', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 4, '2026-02-28', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 5, '2026-03-30', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 6, '2026-04-30', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 7, '2026-05-30', 334, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 8, '2026-06-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 9, '2026-07-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 10, '2026-08-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 11, '2026-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 12, '2026-10-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 13, '2026-11-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 14, '2026-12-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 15, '2027-01-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 16, '2027-02-28', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 17, '2027-03-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 18, '2027-04-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 19, '2027-05-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 20, '2027-06-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 21, '2027-07-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 22, '2027-08-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 23, '2027-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 24, '2027-10-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 25, '2027-11-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 26, '2027-12-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 27, '2028-01-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 28, '2028-02-29', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 29, '2028-03-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 30, '2028-04-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 31, '2028-05-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 32, '2028-06-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 33, '2028-07-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 34, '2028-08-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 35, '2028-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 36, '2029-10-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 37, '2028-11-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 38, '2028-12-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 39, '2029-01-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 40, '2029-02-28', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 41, '2029-03-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 42, '2029-04-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 43, '2029-05-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 44, '2029-06-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 45, '2029-07-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 46, '2029-08-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 47, '2029-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 48, '2029-09-30', 302, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000005', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-007300000006', '06849661', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 0, '2026-08-09', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 1, '2025-09-30', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 2, '2025-10-31', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 3, '2025-11-30', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 4, '2025-12-31', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 5, '2026-01-31', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 6, '2026-02-28', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 7, '2026-03-31', 333.33, 333.4, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 8, '2026-04-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 9, '2026-05-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 10, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 11, '2026-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 12, '2026-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 13, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 14, '2026-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 15, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 16, '2026-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 17, '2027-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 18, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 19, '2027-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 20, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 21, '2027-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 22, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 23, '2027-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 24, '2027-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 25, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 26, '2027-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 27, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 28, '2027-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 29, '2028-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 30, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 31, '2028-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 32, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 33, '2028-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 34, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 35, '2028-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 36, '2028-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 37, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 38, '2029-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 39, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 40, '2028-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 41, '2029-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 42, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 43, '2029-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 44, '2029-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 45, '2029-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 46, '2029-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 47, '2029-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 48, '2029-08-31', 333.49, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000006', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO clients (dni, names, phone, district, province, department)
VALUES ('GEN-88901129', 'BARBARA MELO & ALVARO GUILLERMO DAVILA ESCOBAR', '51903210496', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO NOTHING;


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-007300000007', 'GEN-88901129', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 0, '2025-08-09', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 1, '2025-09-15', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 2, '2025-10-15', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 3, '2025-11-15', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 4, '2025-12-15', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 5, '2026-01-15', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 6, '2026-02-15', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 7, '2026-03-15', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 8, '2026-04-15', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 9, '2026-05-15', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 10, '2026-06-15', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 11, '2026-07-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 12, '2026-08-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 13, '2026-09-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 14, '2026-10-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 15, '2026-11-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 16, '2026-12-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 17, '2027-01-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 18, '2027-02-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 19, '2027-03-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 20, '2027-04-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 21, '2027-05-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 22, '2027-06-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 23, '2027-07-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 24, '2027-08-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 25, '2027-09-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 26, '2027-10-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 27, '2027-11-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 28, '2027-12-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 29, '2028-01-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 30, '2028-02-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 31, '2028-03-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 32, '2028-04-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 33, '2028-05-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 34, '2028-06-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 35, '2028-07-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 36, '2028-08-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 37, '2028-09-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 38, '2029-10-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 39, '2028-11-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 40, '2028-12-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 41, '2029-01-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 42, '2029-02-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 43, '2029-03-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 44, '2029-04-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 45, '2029-05-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 46, '2029-06-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 47, '2029-07-15', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 48, '2029-08-15', 333.49, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000007', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-007300000008', '45359162', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 0, '2025-08-09', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 1, '2025-09-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 2, '2025-10-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 3, '2025-11-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 4, '2025-12-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 5, '2026-01-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 6, '2026-02-28', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 7, '2026-03-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 8, '2026-04-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 9, '2026-05-31', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 10, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 11, '2026-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 12, '2026-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 13, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 14, '2026-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 15, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 16, '2026-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 17, '2027-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 18, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 19, '2027-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 20, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 21, '2027-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 22, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 23, '2027-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 24, '2027-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 25, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 26, '2027-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 27, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 28, '2027-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 29, '2028-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 30, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 31, '2028-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 32, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 33, '2028-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 34, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 35, '2028-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 36, '2028-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 37, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 38, '2029-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 39, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 40, '2028-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 41, '2029-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 42, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 43, '2029-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 44, '2029-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 45, '2029-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 46, '2029-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 47, '2029-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 48, '2029-08-31', 333.49, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000008', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007300000011', '00000000-0000-0000-0000-007300000011', '07530376', 20100, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 0, '2026-03-17', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 1, '2026-04-30', 409, 409, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 2, '2026-05-31', 409, 409, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 3, '2026-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 4, '2026-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 5, '2026-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 6, '2026-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 7, '2026-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 8, '2026-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 9, '2026-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 10, '2027-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 11, '2027-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 12, '2027-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 13, '2027-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 14, '2027-05-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 15, '2027-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 16, '2027-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 17, '2027-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 18, '2027-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 19, '2027-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 20, '2027-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 21, '2027-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 22, '2028-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 23, '2028-02-29', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 24, '2028-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 25, '2028-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 26, '2028-05-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 27, '2028-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 28, '2028-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 29, '2028-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 30, '2028-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 31, '2028-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 32, '2028-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 33, '2028-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 34, '2029-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 35, '2029-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 36, '2029-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 37, '2029-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 38, '2029-05-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 39, '2029-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 40, '2029-07-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 41, '2029-08-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 42, '2029-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 43, '2029-10-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 44, '2029-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 45, '2029-12-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 46, '2030-01-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 47, '2030-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 48, '2030-03-30', 377, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000011', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-007300000009', '46155068', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 0, '2025-03-25', 100, 100, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 0, '2025-04-11', 400, 400, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 1, '2025-05-31', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 2, '2025-06-30', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 3, '2025-07-31', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 4, '2025-08-31', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 5, '2025-09-30', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 6, '2025-10-31', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 7, '2025-11-30', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 8, '2025-12-31', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 9, '2026-01-31', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 10, '2026-02-28', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 11, '2026-03-31', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 12, '2026-04-30', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 13, '2026-05-31', 335, 335, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 14, '2026-06-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 15, '2026-07-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 16, '2026-08-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 17, '2026-09-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 18, '2026-10-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 19, '2026-11-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 20, '2026-12-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 21, '2027-01-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 22, '2027-02-28', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 23, '2027-03-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 24, '2027-04-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 25, '2027-05-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 26, '2027-06-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 27, '2027-07-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 28, '2027-08-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 29, '2027-09-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 30, '2027-10-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 31, '2027-11-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 32, '2027-12-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 33, '2028-01-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 34, '2028-02-29', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 35, '2028-03-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 36, '2028-04-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 37, '2028-05-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 38, '2028-06-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 39, '2028-07-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 40, '2028-08-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 41, '2028-09-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 42, '2028-10-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 43, '2028-11-30', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 44, '2028-12-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 45, '2029-01-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 46, '2029-02-28', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 47, '2029-03-31', 335, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 48, '2029-04-30', 255, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007300000009', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-007400000002', '07493116', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 0, '2025-08-25', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 1, '2025-09-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 2, '2025-10-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 3, '2025-11-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 4, '2025-12-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 5, '2026-01-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 6, '2026-02-28', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 7, '2026-03-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 8, '2026-04-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 9, '2026-05-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 10, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 11, '2026-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 12, '2026-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 13, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 14, '2026-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 15, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 16, '2026-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 17, '2027-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 18, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 19, '2027-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 20, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 21, '2027-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 22, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 23, '2027-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 24, '2027-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 25, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 26, '2027-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 27, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 28, '2027-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 29, '2028-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 30, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 31, '2028-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 32, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 33, '2028-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 34, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 35, '2028-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 36, '2028-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 37, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 38, '2029-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 39, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 40, '2028-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 41, '2029-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 42, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 43, '2029-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 44, '2029-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 45, '2029-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 46, '2029-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 47, '2029-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 48, '2029-08-31', 333.49, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000002', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-007400000003', '42688684', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 0, '2025-08-25', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 1, '2025-09-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 2, '2025-10-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 3, '2025-11-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 4, '2025-12-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 5, '2026-01-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 6, '2026-02-28', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 7, '2026-03-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 8, '2026-04-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 9, '2026-05-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 10, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 11, '2026-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 12, '2026-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 13, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 14, '2026-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 15, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 16, '2026-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 17, '2027-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 18, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 19, '2027-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 20, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 21, '2027-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 22, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 23, '2027-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 24, '2027-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 25, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 26, '2027-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 27, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 28, '2027-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 29, '2028-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 30, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 31, '2028-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 32, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 33, '2028-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 34, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 35, '2028-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 36, '2028-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 37, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 38, '2029-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 39, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 40, '2028-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 41, '2029-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 42, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 43, '2029-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 44, '2029-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 45, '2029-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 46, '2029-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 47, '2029-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 48, '2029-08-31', 333.49, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000003', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-007400000004', '42688684', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 0, '2025-08-25', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 1, '2025-09-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 2, '2025-10-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 3, '2025-11-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 4, '2025-12-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 5, '2026-01-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 6, '2026-02-28', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 7, '2026-03-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 8, '2026-04-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 9, '2026-05-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 10, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 11, '2026-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 12, '2026-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 13, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 14, '2026-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 15, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 16, '2026-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 17, '2027-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 18, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 19, '2027-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 20, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 21, '2027-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 22, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 23, '2027-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 24, '2027-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 25, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 26, '2027-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 27, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 28, '2027-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 29, '2028-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 30, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 31, '2028-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 32, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 33, '2028-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 34, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 35, '2028-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 36, '2028-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 37, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 38, '2029-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 39, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 40, '2028-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 41, '2029-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 42, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 43, '2029-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 44, '2029-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 45, '2029-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 46, '2029-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 47, '2029-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 48, '2029-08-31', 333.49, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000004', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO clients (dni, names, phone, district, province, department)
VALUES ('GEN-62597713', 'MARTIN MIGUEL CENTURION GUARDIA', '13106222625', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO NOTHING;


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-007400000005', 'GEN-62597713', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 0, '2025-08-26', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 1, '2025-09-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 2, '2025-10-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 3, '2025-11-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 4, '2025-12-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 5, '2026-01-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 6, '2026-02-28', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 7, '2026-03-31', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 8, '2026-04-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 9, '2026-05-31', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 10, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 11, '2026-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 12, '2026-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 13, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 14, '2026-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 15, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 16, '2026-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 17, '2027-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 18, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 19, '2027-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 20, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 21, '2027-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 22, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 23, '2027-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 24, '2027-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 25, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 26, '2027-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 27, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 28, '2027-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 29, '2028-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 30, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 31, '2028-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 32, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 33, '2028-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 34, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 35, '2028-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 36, '2028-08-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 37, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 38, '2029-10-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 39, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 40, '2028-12-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 41, '2029-01-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 42, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 43, '2029-03-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 44, '2029-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 45, '2029-05-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 46, '2029-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 47, '2029-07-31', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 48, '2029-08-31', 333.49, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000005', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-007400000006', 'GEN-62597713', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 0, '2025-08-26', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 1, '2025-09-30', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 2, '2025-10-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 3, '2025-11-30', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 4, '2025-12-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 5, '2026-01-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 6, '2026-02-28', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 7, '2026-03-31', 395.83, 395.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 8, '2026-04-30', 395.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 9, '2026-05-31', 395.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 10, '2026-06-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 11, '2026-07-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 12, '2026-08-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 13, '2026-09-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 14, '2026-10-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 15, '2026-11-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 16, '2026-12-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 17, '2027-01-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 18, '2027-02-28', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 19, '2027-03-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 20, '2027-04-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 21, '2027-05-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 22, '2027-06-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 23, '2027-07-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 24, '2027-08-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 25, '2027-09-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 26, '2027-10-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 27, '2027-11-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 28, '2027-12-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 29, '2028-01-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 30, '2028-02-29', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 31, '2028-03-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 32, '2028-04-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 33, '2028-05-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 34, '2028-06-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 35, '2028-07-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 36, '2028-08-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 37, '2028-09-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 38, '2029-10-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 39, '2028-11-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 40, '2028-12-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 41, '2029-01-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 42, '2029-02-28', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 43, '2029-03-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 44, '2029-04-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 45, '2029-05-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 46, '2029-06-30', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 47, '2029-07-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 48, '2029-08-31', 395.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000006', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-007400000010', '75731855', 17565.600000000002, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 0, '2025-10-07', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 1, '2025-11-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 2, '2025-12-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 3, '2026-01-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 4, '2026-02-28', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 5, '2026-03-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 6, '2026-04-30', 356, 356, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 7, '2026-05-30', 356, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 8, '2026-06-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 9, '2026-07-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 10, '2026-08-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 11, '2026-09-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 12, '2026-10-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 13, '2026-11-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 14, '2026-12-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 15, '2027-01-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 16, '2027-02-28', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 17, '2027-03-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 18, '2027-04-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 19, '2027-05-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 20, '2027-06-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 21, '2027-07-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 22, '2027-08-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 23, '2027-09-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 24, '2027-10-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 25, '2027-11-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 26, '2027-12-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 27, '2028-01-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 28, '2028-02-29', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 29, '2028-03-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 30, '2028-04-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 31, '2028-05-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 32, '2028-06-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 33, '2028-07-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 34, '2028-08-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 35, '2028-09-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 36, '2029-10-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 37, '2028-11-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 38, '2028-12-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 39, '2029-01-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 40, '2029-02-28', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 41, '2029-03-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 42, '2029-04-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 43, '2029-05-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 44, '2029-06-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 45, '2029-07-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 46, '2029-08-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 47, '2029-09-30', 356, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 48, '2029-09-30', 333.60, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000010', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-007400000011', '75731855', 16500, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 0, '2025-10-10', 100, 100, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 0, '2025-06-30', 400, 400, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 1, '2025-12-30', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 2, '2026-01-30', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 3, '2026-02-28', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 4, '2026-03-30', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 5, '2026-04-30', 334, 334, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 6, '2026-05-30', 334, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 7, '2026-06-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 8, '2026-07-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 9, '2026-08-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 10, '2026-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 11, '2026-10-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 12, '2026-11-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 13, '2026-12-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 14, '2027-01-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 15, '2027-02-28', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 16, '2027-03-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 17, '2027-04-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 18, '2027-05-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 19, '2027-06-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 20, '2027-07-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 21, '2027-08-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 22, '2027-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 23, '2027-10-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 24, '2027-11-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 25, '2027-12-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 26, '2028-01-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 27, '2028-02-29', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 28, '2028-03-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 29, '2028-04-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 30, '2028-05-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 31, '2028-06-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 32, '2028-07-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 33, '2028-08-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 34, '2028-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 35, '2029-10-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 36, '2028-11-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 37, '2028-12-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 38, '2029-01-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 39, '2029-02-28', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 40, '2029-03-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 41, '2029-04-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 42, '2029-05-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 43, '2029-06-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 44, '2029-07-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 45, '2029-08-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 46, '2029-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 47, '2029-09-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 48, '2029-10-30', 334, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007400000011', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-007600000001', '09995721', 16500, 4500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 0, '2025-05-19', 4500, 4500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 1, '2025-06-30', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 2, '2025-07-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 3, '2025-08-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 4, '2025-09-30', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 5, '2025-10-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 6, '2025-11-30', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 7, '2025-12-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 8, '2026-01-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 9, '2026-02-28', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 10, '2026-03-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 11, '2026-04-30', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 12, '2026-05-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 13, '2026-06-30', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 14, '2026-07-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 15, '2026-08-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 16, '2026-09-30', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 17, '2026-10-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 18, '2026-11-30', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 19, '2026-12-31', 187.5, 187.5, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 20, '2027-01-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 21, '2027-02-28', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 22, '2027-03-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 23, '2027-04-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 24, '2027-05-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 25, '2027-06-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 26, '2027-07-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 27, '2027-08-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 28, '2027-09-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 29, '2027-10-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 30, '2027-11-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 31, '2027-12-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 32, '2028-01-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 33, '2028-02-29', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 34, '2028-03-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 35, '2028-04-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 36, '2028-05-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 37, '2028-06-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 38, '2028-07-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 39, '2028-08-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 40, '2028-09-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 41, '2029-10-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 42, '2028-11-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 43, '2028-12-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 44, '2029-01-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 45, '2029-02-28', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 46, '2029-03-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 47, '2029-04-30', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 48, '2029-05-31', 187.5, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000001', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-007600000002', '09995721', 13500, 4500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 0, '2025-05-19', 100, 100, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 0, '2025-06-05', 4400, 4400, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 1, '2025-06-30', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 2, '2025-07-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 3, '2025-08-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 4, '2025-09-30', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 5, '2025-10-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 6, '2025-11-30', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 7, '2025-12-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 8, '2026-01-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 9, '2026-02-28', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 10, '2026-03-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 11, '2026-04-30', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 12, '2026-05-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 13, '2026-06-30', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 14, '2026-07-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 15, '2026-08-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 16, '2026-09-30', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 17, '2026-10-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 18, '2026-11-30', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 19, '2026-12-31', 250, 250, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 20, '2027-01-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 21, '2027-02-28', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 22, '2027-03-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 23, '2027-04-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 24, '2027-05-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 25, '2027-06-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 26, '2027-07-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 27, '2027-08-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 28, '2027-09-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 29, '2027-10-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 30, '2027-11-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 31, '2027-12-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 32, '2028-01-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 33, '2028-02-29', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 34, '2028-03-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 35, '2028-04-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 36, '2028-05-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 37, '2028-06-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 38, '2028-07-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 39, '2028-08-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 40, '2028-09-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 41, '2029-10-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 42, '2028-11-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 43, '2028-12-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 44, '2029-01-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 45, '2029-02-28', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 46, '2029-03-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 47, '2029-04-30', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 48, '2029-05-31', 250, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000002', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO clients (dni, names, phone, district, province, department)
VALUES ('GEN-97291913', 'ELEVI FERNANDEZ DELGADO', '51961396533', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO NOTHING;


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007600000003', '00000000-0000-0000-0000-007600000003', 'GEN-97291913', 20100, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 0, '2026-05-28', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 1, '2026-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 2, '2026-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 3, '2026-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 4, '2026-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 5, '2026-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 6, '2026-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 7, '2026-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 8, '2027-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 9, '2027-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 10, '2027-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 11, '2027-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 12, '2027-05-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 13, '2027-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 14, '2027-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 15, '2027-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 16, '2027-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 17, '2027-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 18, '2027-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 19, '2027-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 20, '2028-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 21, '2028-02-29', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 22, '2028-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 23, '2028-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 24, '2028-05-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 25, '2028-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 26, '2028-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 27, '2028-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 28, '2028-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 29, '2028-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 30, '2028-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 31, '2028-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 32, '2029-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 33, '2029-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 34, '2029-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 35, '2029-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 36, '2029-05-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 37, '2029-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 38, '2029-07-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 39, '2029-08-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 40, '2029-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 41, '2029-10-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 42, '2029-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 43, '2029-12-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 44, '2030-01-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 45, '2030-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 46, '2030-03-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 47, '2030-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 48, '2030-05-30', 377, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000003', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007600000004', '00000000-0000-0000-0000-007600000004', 'GEN-97291913', 20100, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 0, '2026-05-28', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 1, '2026-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 2, '2026-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 3, '2026-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 4, '2026-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 5, '2026-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 6, '2026-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 7, '2026-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 8, '2027-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 9, '2027-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 10, '2027-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 11, '2027-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 12, '2027-05-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 13, '2027-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 14, '2027-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 15, '2027-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 16, '2027-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 17, '2027-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 18, '2027-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 19, '2027-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 20, '2028-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 21, '2028-02-29', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 22, '2028-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 23, '2028-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 24, '2028-05-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 25, '2028-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 26, '2028-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 27, '2028-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 28, '2028-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 29, '2028-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 30, '2028-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 31, '2028-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 32, '2029-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 33, '2029-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 34, '2029-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 35, '2029-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 36, '2029-05-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 37, '2029-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 38, '2029-07-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 39, '2029-08-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 40, '2029-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 41, '2029-10-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 42, '2029-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 43, '2029-12-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 44, '2030-01-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 45, '2030-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 46, '2030-03-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 47, '2030-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 48, '2030-05-30', 377, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000004', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007600000005', '00000000-0000-0000-0000-007600000005', 'GEN-97291913', 20100, 500, 48, 'en_proceso')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 0, '2026-05-28', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 1, '2026-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 2, '2026-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 3, '2026-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 4, '2026-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 5, '2026-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 6, '2026-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 7, '2026-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 8, '2027-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 9, '2027-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 10, '2027-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 11, '2027-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 12, '2027-05-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 13, '2027-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 14, '2027-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 15, '2027-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 16, '2027-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 17, '2027-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 18, '2027-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 19, '2027-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 20, '2028-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 21, '2028-02-29', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 22, '2028-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 23, '2028-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 24, '2028-05-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 25, '2028-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 26, '2028-07-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 27, '2028-08-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 28, '2028-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 29, '2028-10-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 30, '2028-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 31, '2028-12-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 32, '2029-01-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 33, '2029-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 34, '2029-03-31', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 35, '2029-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 36, '2029-05-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 37, '2029-06-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 38, '2029-07-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 39, '2029-08-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 40, '2029-09-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 41, '2029-10-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 42, '2029-11-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 43, '2029-12-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 44, '2030-01-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 45, '2030-02-28', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 46, '2030-03-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 47, '2030-04-30', 409, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 48, '2030-05-30', 377, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007600000005', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000004', '00000000-0000-0000-0000-007100000004', 'GEN-96659256', 23100, 500, 48, 'expropiado')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 0, '2025-03-26', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 0, '2025-03-26', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 1, '2025-04-30', 333.33, 333.33, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 2, '2025-05-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 3, '2025-06-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 4, '2025-07-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 5, '2025-08-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 6, '2025-09-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 7, '2025-10-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 8, '2025-11-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 9, '2025-12-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 10, '2026-01-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 11, '2026-02-28', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 12, '2026-03-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 13, '2026-04-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 14, '2026-05-30', 333.33, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 15, '2026-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 16, '2026-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 17, '2026-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 18, '2026-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 19, '2026-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 20, '2026-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 21, '2026-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 22, '2027-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 23, '2027-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 24, '2027-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 25, '2027-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 26, '2027-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 27, '2027-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 28, '2027-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 29, '2027-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 30, '2027-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 31, '2027-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 32, '2027-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 33, '2027-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 34, '2028-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 35, '2028-02-29', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 36, '2028-03-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 37, '2028-04-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 38, '2028-05-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 39, '2028-06-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 40, '2028-07-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 41, '2028-08-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 42, '2028-09-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 43, '2028-10-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 44, '2028-11-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 45, '2028-12-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 46, '2029-01-30', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 47, '2029-02-28', 333.33, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000004', 48, '2029-03-30', 333.33, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000005', '00000000-0000-0000-0000-007100000005', '73963744', 20100, 500, 48, 'expropiado')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 0, '2025-03-26', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 0, '2025-03-26', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 1, '2025-04-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 2, '2025-05-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 3, '2025-06-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 4, '2025-07-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 5, '2025-08-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 6, '2025-09-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 7, '2025-10-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 8, '2025-11-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 9, '2025-12-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 10, '2026-01-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 11, '2026-02-28', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 12, '2026-03-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 13, '2026-04-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 14, '2026-05-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 15, '2026-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 16, '2026-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 17, '2026-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 18, '2026-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 19, '2026-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 20, '2026-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 21, '2026-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 22, '2027-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 23, '2027-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 24, '2027-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 25, '2027-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 26, '2027-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 27, '2027-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 28, '2027-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 29, '2027-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 30, '2027-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 31, '2027-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 32, '2027-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 33, '2027-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 34, '2028-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 35, '2028-02-29', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 36, '2028-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 37, '2028-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 38, '2028-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 39, '2028-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 40, '2028-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 41, '2028-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 42, '2028-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 43, '2028-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 44, '2028-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 45, '2028-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 46, '2029-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 47, '2029-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000005', 48, '2029-03-30', 270.83, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-007100000006', '00000000-0000-0000-0000-007100000006', '00035198', 20100, 500, 48, 'expropiado')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 0, '2025-03-26', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 0, '2025-03-26', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 1, '2025-04-30', 270.83, 270.83, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 2, '2025-05-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 3, '2025-06-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 4, '2025-07-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 5, '2025-08-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 6, '2025-09-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 7, '2025-10-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 8, '2025-11-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 9, '2025-12-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 10, '2026-01-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 11, '2026-02-28', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 12, '2026-03-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 13, '2026-04-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 14, '2026-05-30', 270.83, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 15, '2026-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 16, '2026-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 17, '2026-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 18, '2026-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 19, '2026-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 20, '2026-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 21, '2026-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 22, '2027-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 23, '2027-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 24, '2027-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 25, '2027-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 26, '2027-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 27, '2027-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 28, '2027-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 29, '2027-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 30, '2027-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 31, '2027-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 32, '2027-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 33, '2027-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 34, '2028-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 35, '2028-02-29', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 36, '2028-03-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 37, '2028-04-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 38, '2028-05-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 39, '2028-06-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 40, '2028-07-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 41, '2028-08-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 42, '2028-09-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 43, '2028-10-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 44, '2028-11-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 45, '2028-12-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 46, '2029-01-30', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 47, '2029-02-28', 270.83, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-007100000006', 48, '2029-03-30', 270.83, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006500000002', '00000000-0000-0000-0000-006500000002', '61122481', 43500, 500, 48, 'expropiado')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 0, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 0, '2025-06-30', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 1, '2025-08-31', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 2, '2025-09-30', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 3, '2025-10-31', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 4, '2025-11-30', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 5, '2025-12-31', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 6, '2026-01-31', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 7, '2026-02-28', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 8, '2026-03-31', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 9, '2026-04-30', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 10, '2026-05-31', 770, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 11, '2026-06-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 12, '2026-07-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 13, '2026-08-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 14, '2026-09-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 15, '2026-10-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 16, '2026-11-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 17, '2026-12-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 18, '2027-01-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 19, '2027-02-28', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 20, '2027-03-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 21, '2027-04-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 22, '2027-05-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 23, '2027-06-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 24, '2027-07-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 25, '2027-08-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 26, '2027-09-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 27, '2027-10-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 28, '2027-11-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 29, '2027-12-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 30, '2028-01-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 31, '2028-02-29', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 32, '2028-03-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 33, '2028-04-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 34, '2028-05-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 35, '2028-06-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 36, '2028-07-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 37, '2028-08-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 38, '2028-09-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 39, '2029-10-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 40, '2028-11-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 41, '2028-12-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 42, '2029-01-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 43, '2029-02-28', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 44, '2029-03-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 45, '2029-04-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 46, '2029-05-31', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 47, '2029-06-30', 770, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000002', 48, '2029-07-31', 770, 0, 'pendiente');


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006500000003', '00000000-0000-0000-0000-006500000003', '80246083', 43500, 500, 48, 'expropiado')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 0, '2025-03-28', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 0, '2025-03-28', 500, 500, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 1, '2025-04-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 2, '2025-05-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 3, '2025-06-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 4, '2025-07-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 5, '2025-08-30', 666.67, 666.67, 'pagado');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 6, '2025-09-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 7, '2025-10-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 8, '2025-11-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 9, '2025-12-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 10, '2026-01-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 11, '2026-02-28', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 12, '2026-03-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 13, '2026-04-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 14, '2026-05-30', 666.67, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 15, '2026-06-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 16, '2026-07-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 17, '2026-08-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 18, '2026-09-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 19, '2026-10-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 20, '2026-11-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 21, '2026-12-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 22, '2027-01-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 23, '2027-02-28', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 24, '2027-03-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 25, '2027-04-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 26, '2027-05-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 27, '2027-06-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 28, '2027-07-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 29, '2027-08-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 30, '2027-09-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 31, '2027-10-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 32, '2027-11-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 33, '2027-12-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 34, '2028-01-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 35, '2028-02-29', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 36, '2028-03-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 37, '2028-04-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 38, '2028-05-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 39, '2028-06-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 40, '2028-07-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 41, '2028-08-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 42, '2028-09-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 43, '2028-10-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 44, '2028-11-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 45, '2028-12-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 46, '2029-01-30', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 47, '2029-02-28', 666.67, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006500000003', 48, '2029-03-30', 666.67, 0, 'pendiente');


INSERT INTO clients (dni, names, phone, district, province, department)
VALUES ('GEN-81448118', 'EDWIN ALBERTO SEPULVEDA DELGADO', '91935431633', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO NOTHING;


INSERT INTO sales (id, lot_id, client_id, total_sale_price, initial_amount_paid, installments_count, status)
VALUES ('00000000-0000-0000-0000-006600000002', '00000000-0000-0000-0000-006600000002', 'GEN-81448118', 43500, 500, 48, 'expropiado')
ON CONFLICT (id) DO NOTHING;


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 0, '2025-10-20', 100, 100, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 0, '2025-06-30', 400, 400, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 1, '2025-12-30', 771, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 2, '2026-01-30', 771, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 3, '2026-02-28', 771, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 4, '2026-03-30', 771, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 5, '2026-04-30', 771, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 6, '2026-05-30', 771, 0, 'vencido');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 7, '2026-06-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 8, '2026-07-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 9, '2026-08-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 10, '2026-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 11, '2026-10-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 12, '2026-11-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 13, '2026-12-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 14, '2027-01-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 15, '2027-02-28', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 16, '2027-03-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 17, '2027-04-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 18, '2027-05-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 19, '2027-06-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 20, '2027-07-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 21, '2027-08-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 22, '2027-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 23, '2027-10-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 24, '2027-11-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 25, '2027-12-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 26, '2028-01-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 27, '2028-02-29', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 28, '2028-03-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 29, '2028-04-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 30, '2028-05-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 31, '2028-06-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 32, '2028-07-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 33, '2028-08-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 34, '2028-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 35, '2029-10-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 36, '2028-11-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 37, '2028-12-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 38, '2029-01-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 39, '2029-02-28', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 40, '2029-03-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 41, '2029-04-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 42, '2029-05-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 43, '2029-06-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 44, '2029-07-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 45, '2029-08-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 46, '2029-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 47, '2029-09-30', 771, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 48, '2029-10-30', 763, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 49, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO installments (sale_id, installment_number, due_date, amount, amount_paid, status)
VALUES ('00000000-0000-0000-0000-006600000002', 50, '2025-01-01', 0, 0, 'pendiente');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000009', '47417177', '00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000010', '2025-03-19', 500, '000000395', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000004', 'GEN-20105762', '00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-000000000012', '2025-03-20', 356, '01445613', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000005', 'GEN-20105762', '00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-000000000012', '2025-03-20', 334, '01444914', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2025-03-25', 100, '01102153', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000004', 'GEN-96659256', '00000000-0000-0000-0000-007100000004', '00000000-0000-0000-0000-000000000010', '2025-03-26', 500, '00000118', 'TRANSFERENCIA', 'inicial', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000005', '73963744', '00000000-0000-0000-0000-007100000005', '00000000-0000-0000-0000-000000000010', '2025-03-26', 500, '00000119', 'TRANSFERENCIA', 'inicial', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000006', '00035198', '00000000-0000-0000-0000-007100000006', '00000000-0000-0000-0000-000000000010', '2025-03-26', 500, '00000120', 'TRANSFERENCIA', 'inicial', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000010', '2025-03-28', 500, '000000563', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000003', '80246083', '00000000-0000-0000-0000-006500000003', '00000000-0000-0000-0000-000000000010', '2025-03-28', 500, '000000562', 'TRANSFERENCIA', 'inicial', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000010', '2025-03-30', 50, '000005744', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-04-01', 500, '11008-151', 'DEPOSITO', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-04-01', 500, '11008-151', 'DEPOSITO', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2025-04-03', 500, '11008-153', 'DEPOSITO', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2025-04-05', 450, '03183693', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000012', '2025-04-10', 100, '000001187', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000012', '2025-04-10', 100, '000001187', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2025-04-10', 500, '00753354', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000010', '2025-04-10', 500, 'DOLARES depo', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000010', '2025-04-11', 400, '06865-158', 'DEPOSITO', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000010', '2025-04-11', 50, '000001899', 'TRANSFERENCIA', 'separacion', TRUE, 'PERDIDA');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000012', '2025-04-13', 100, '000005780', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000012', '2025-04-15', 500, '000005787', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000012', '2025-04-19', 500, '000002824', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000012', '2025-04-19', 500, '000002826', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO clients (dni, names, phone, district, province, department)
VALUES ('URBIS GROUP', 'URBIS GROUP', '', 'CALLERIA', 'CORONEL PORTILLO', 'UCAYALI')
ON CONFLICT (dni) DO NOTHING;


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000001', 'URBIS GROUP', NULL, '00000000-0000-0000-0000-000000000012', '2025-04-20', 50, '000001904', 'TRANSFERENCIA', 'separacion', TRUE, 'PERDIDA');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000012', '2025-04-21', 400, '000005803', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000012', '2025-04-21', 400, '000005804', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000010', '2025-04-26', 50, '000001908', 'TRANSFERENCIA', 'separacion', TRUE, 'PERDIDA');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-04-28', 270.83, '1090', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-04-28', 270.83, '1901', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2025-04-29', 666.67, '000000689', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000009', '47417177', '00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000012', '2025-04-29', 333.33, '000000401', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000012', '2025-04-30', 333.33, '000001093', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2025-04-30', 500, '000000143816', 'DEPOSITO', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2025-04-30', 270.83, '03805966', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000003', '80246083', '00000000-0000-0000-0000-006500000003', '00000000-0000-0000-0000-000000000012', '2025-04-30', 666.67, '000000695', 'TRANSFERENCIA', 'cuota', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000004', 'GEN-96659256', '00000000-0000-0000-0000-007100000004', '00000000-0000-0000-0000-000000000012', '2025-04-30', 333.33, '000001138', 'TRANSFERENCIA', 'cuota', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000005', '73963744', '00000000-0000-0000-0000-007100000005', '00000000-0000-0000-0000-000000000012', '2025-04-30', 270.83, '000001137', 'TRANSFERENCIA', 'cuota', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000006', '00035198', '00000000-0000-0000-0000-007100000006', '00000000-0000-0000-0000-000000000012', '2025-04-30', 270.83, '000001136', 'TRANSFERENCIA', 'cuota', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000012', '2025-05-08', 400, '000005883', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2025-05-12', 50, '000001900', 'TRANSFERENCIA', 'separacion', TRUE, 'PERDIDA');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-05-19', 100, '00815746', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000010', '2025-05-27', 270.83, '2025052712342009224191414987', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2025-05-30', 666.67, '00439273', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2025-05-30', 333.33, '000001119', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2025-05-30', 271, '194', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000003', '80246083', '00000000-0000-0000-0000-006500000003', '00000000-0000-0000-0000-000000000010', '2025-05-30', 666.67, '000000852', 'TRANSFERENCIA', 'cuota', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-05-31', 270.83, '1121', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-05-31', 270.83, '000001122', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2025-05-31', 270.8, '000001124', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2025-05-31', 335, '00980439', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2025-05-31', 270.8, '00649909', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2025-05-31', 270.8, '00649909', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-06-05', 4400, '00815746', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000012', '2025-06-07', 667, '000001237', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000012', '2025-06-07', 667, '000001238', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2025-06-07', 271, '000003098', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2025-06-07', 335, '000003098', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2025-06-23', 270.8, '02832669', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2025-06-24', 270.8, '02832669', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-06-26', 270.83, '000001137', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-06-26', 270.83, '000001138', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2025-06-26', 333.33, '000001139', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000010', '2025-06-29', 666.67, '000000991', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2025-06-30', 500, '000000129', 'DEPOSITO', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2025-06-30', 500, '212', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2025-06-30', 270.8, '000002380', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2025-06-30', 272, '214', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000010', '2025-06-30', 270.83, '784.465.587.2618', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000010', '2025-06-30', 335, '03755090', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-06-30', 250, '03690861', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-06-30', 250, '03690861', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000003', '80246083', '00000000-0000-0000-0000-006500000003', '00000000-0000-0000-0000-000000000010', '2025-06-30', 666.67, '0000000995', 'TRANSFERENCIA', 'cuota', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2025-07-01', 271, '000003179', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2025-07-01', 335, '000003178', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2025-07-06', 500, '000000406', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000002', '61122481', '00000000-0000-0000-0000-006500000002', '00000000-0000-0000-0000-000000000011', '2025-07-17', 500, '04204429', 'TRANSFERENCIA', 'inicial', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2025-07-18', 500, '03494765', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-07-29', 270.83, '000001168', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-07-29', 270.83, '000001167', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2025-07-29', 333.3, '000001166', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2025-07-29', 271, '000003292', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2025-07-29', 335, '000003293', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000010', '2025-07-30', 666.67, '000001133', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2025-07-30', 271, '232', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2025-07-31', 335, '01439431', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000003', '80246083', '00000000-0000-0000-0000-006500000003', '00000000-0000-0000-0000-000000000010', '2025-07-31', 666.67, '000001142', 'TRANSFERENCIA', 'cuota', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2025-08-01', 667, '000001271', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2025-08-01', 667, '000001270', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2025-08-01', 270.83, '03372590', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2025-08-01', 270.8, 'OO862503', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2025-08-01', 270.8, '00864998', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000011', '2025-08-03', 270.85, '02967913', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000009', '47417177', '00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000010', '2025-08-04', 333.33, '000000424', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000009', '47417177', '00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000010', '2025-08-04', 333.33, '000000424', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-08-06', 250, '00400600', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-08-06', 250, '00400600', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000011', '2025-08-09', 500, '2597900', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000007', 'GEN-88901129', '00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000010', '2025-08-09', 500, '03621415', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000008', '45359162', '00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000012', '2025-08-09', 500, '00950170', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2025-08-14', 770.83, '0383422', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2025-08-14', 770.83, '0383422', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000002', 'GEN-81448118', '00000000-0000-0000-0000-006600000002', '00000000-0000-0000-0000-000000000010', '2025-08-18', 100, 'xxxxxxxxxx', 'TRANSFERENCIA', 'separacion', TRUE, 'PERDIDA');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000009', '47417177', '00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000010', '2025-08-21', 333.4, '000000429', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2025-08-21', 100, '000000224', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000010', '2025-08-25', 500, '000002435', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2025-08-25', 500, '000004820', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2025-08-25', 500, '000004821', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000005', 'GEN-62597713', '00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000010', '2025-08-26', 500, '000000028156', 'DEPOSITO', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000006', 'GEN-62597713', '00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000010', '2025-08-26', 500, '000000028157', 'DEPOSITO', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-08-27', 270.83, '000001192', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-08-27', 270.83, '000001193', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2025-08-27', 333.3, '000001194', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2025-08-29', 395.83, '000000448', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2025-08-30', 271, '265', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2025-08-31', 335, '02790099', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2025-09-01', 770.83, '0373834', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2025-09-01', 770.83, '0373834', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2025-09-01', 270.83, '02619611', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2025-09-01', 270.8, '03864074', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2025-09-01', 270.8, '03865857', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2025-09-02', 395, '04542449', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000012', '2025-09-04', 667, '0000001278', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000012', '2025-09-04', 667, '0000001279', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000012', '2025-09-05', 270.8, '000002409', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000011', '2025-09-05', 270.8, '03486863', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-09-06', 250, '00837495', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-09-06', 250, '00841635', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000007', 'GEN-88901129', '00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000011', '2025-09-15', 333.33, '06384073', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000011', '2025-09-15', 333.33, '06070997', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000009', '47417177', '00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000010', '2025-09-19', 333.33, '000000437', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2025-09-25', 271, '000003566', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2025-09-25', 335, '000003565', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-09-29', 270.83, '000001211', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-09-29', 270.83, '000001210', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2025-09-29', 333.6, '000001209', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2025-09-29', 333.4, '000003003', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2025-09-30', 395.83, '000000471', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2025-09-30', 271, '298', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000010', '2025-09-30', 270.83, '000000181', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000008', '45359162', '00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000011', '2025-09-30', 333.33, '06251563', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2025-09-30', 335, '01353264', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2025-09-30', 333.33, '000004995', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2025-09-30', 333.33, '000004996', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000011', '2025-09-30', 270.8, '02672138', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000010', '2025-10-01', 666.67, '000001295', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000010', '2025-10-01', 666.67, '000001299', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2025-10-01', 667, '000001288', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2025-10-01', 667, '000001289', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2025-10-01', 395, '028271138', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000003', '80246083', '00000000-0000-0000-0000-006500000003', '00000000-0000-0000-0000-000000000010', '2025-10-01', 666.67, '000001302', 'TRANSFERENCIA', 'cuota', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000011', '2025-10-02', 270.8, '02490991', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2025-10-03', 770.83, '112518251003', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2025-10-03', 770.83, '3511146', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000011', '2025-10-03', 270.8, '02612043', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000011', '2025-10-03', 270.8, '02612043', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2025-10-03', 270.8, '00520857', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000003', 'GEN-24144289', '00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000012', '2025-10-07', 1000, '01057153', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2025-10-07', 400, '000000249', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000010', '75731855', '00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-000000000010', '2025-10-07', 500, '000000250', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000011', '75731855', '00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-000000000010', '2025-10-10', 100, '00000000', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-10-15', 250, '00594876', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2025-10-15', 250, '00597503', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000012', '2025-10-16', 333.33, '000002461', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000005', 'GEN-62597713', '00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000012', '2025-10-17', 333.33, '00077219', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000006', 'GEN-62597713', '00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000012', '2025-10-17', 395.83, '00079909', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000002', 'GEN-81448118', '00000000-0000-0000-0000-006600000002', '00000000-0000-0000-0000-000000000010', '2025-10-20', 100, '000002247', 'TRANSFERENCIA', 'separacion', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000002', 'GEN-81448118', '00000000-0000-0000-0000-006600000002', '00000000-0000-0000-0000-000000000010', '2025-10-20', 100, '000002248', 'TRANSFERENCIA', 'separacion', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000007', 'GEN-88901129', '00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000011', '2025-10-22', 333.33, '00191135', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000004', 'GEN-20105762', '00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-000000000011', '2025-10-23', 500, '03034485', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000005', 'GEN-20105762', '00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-000000000011', '2025-10-23', 500, '03042729', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000012', '2025-10-27', 333.3, '000001256', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2025-10-27', 270.8, '02830981', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2025-10-27', 270.8, '02831604', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000012', '2025-10-28', 667, '000001300', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000012', '2025-10-28', 667, '000001301', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2025-10-29', 333.4, '0000003044', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000012', '2025-10-30', 395.83, '000000490', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2025-10-30', 271, '335', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2025-10-30', 335, '01226521', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2025-10-30', 333.33, '000005107', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2025-10-30', 333.33, '000005108', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2025-10-31', 333.33, '000000261', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000008', '45359162', '00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000011', '2025-10-31', 333.33, '05647550', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2025-11-01', 395, '01221442', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2025-11-03', 270.8, '784.465.587.2580', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2025-11-03', 270.83, '01920068', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2025-11-04', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2025-11-04', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000010', '2025-11-11', 270.8, '000006349', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000010', '2025-11-11', 270.8, '000006349', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000011', '75731855', '00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-000000000010', '2025-11-11', 400, '350', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000002', 'GEN-81448118', '00000000-0000-0000-0000-006600000002', '00000000-0000-0000-0000-000000000010', '2025-11-12', 300, '13717527', 'BILLETERA DIGITAL', 'inicial', TRUE, 'Expropiado');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-11-18', 270.83, '000001312', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-11-18', 270.83, '000001313', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000010', '2025-11-18', 333.33, '000002475', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000005', 'GEN-62597713', '00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000012', '2025-11-25', 333.33, '00981716', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000006', 'GEN-62597713', '00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000012', '2025-11-25', 395.83, '00989604', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000003', 'GEN-24144289', '00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000012', '2025-11-27', 770, '00247912', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000003', 'GEN-24144289', '00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000012', '2025-11-27', 770, '00246719', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000003', 'GEN-24144289', '00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000012', '2025-11-27', 770, '00245354', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000003', 'GEN-24144289', '00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000012', '2025-11-27', 770, '00244401', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000010', '2025-11-28', 270.8, '000003280', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2025-11-29', 395.83, '000000507', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2025-11-29', 333.4, '000003080', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000010', '75731855', '00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-000000000010', '2025-11-29', 356, '386', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2025-11-30', 248, '000003904', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2025-11-30', 311, '000001218', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000004', 'GEN-20105762', '00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-000000000012', '2025-11-30', 356, '01288519', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000005', 'GEN-20105762', '00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-000000000012', '2025-11-30', 334, '02189406', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2025-11-30', 335, '02755413', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2025-11-30', 270.8, '03435851', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2025-11-30', 270.8, '03437020', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2025-12-01', 770.83, '308700168', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2025-12-01', 770.83, '308700167', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2025-12-01', 395, '01276581', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2025-12-01', 271, '398', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-12-02', 270.83, '0000001341', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-12-02', 270.83, '000001342', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2025-12-02', 333.33, '000001343', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2025-12-02', 270.83, '06786880', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000008', '45359162', '00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000011', '2025-12-02', 333.33, '01769187', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2025-12-02', 333.33, '000005219', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2025-12-02', 333.33, '000005218', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000009', '47417177', '00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000010', '2025-12-04', 333.4, '000000447', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2025-12-05', 395, '00948462', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2025-12-10', 270.8, '784,465,456,2043', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2025-12-15', 667, '000001316', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2025-12-15', 667, '000001317', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000007', 'GEN-88901129', '00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000011', '2025-12-16', 333.33, '07417785', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000007', 'GEN-88901129', '00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000011', '2025-12-16', 333.33, '07432306', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000011', '2025-12-17', 333.33, '04931890', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000005', 'GEN-62597713', '00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000012', '2025-12-19', 333.33, '01824269', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000006', 'GEN-62597713', '00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000012', '2025-12-19', 395.83, '01832746', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000009', '47417177', '00000000-0000-0000-0000-007100000009', '00000000-0000-0000-0000-000000000010', '2025-12-22', 333.33, '000000452', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2025-12-26', 666.67, '02081870', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2025-12-26', 666.67, '02081870', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2025-12-29', 270.83, '000001365', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2025-12-29', 270.83, '000001366', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2025-12-29', 333.3, '000001367', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2025-12-29', 333.4, '000003118', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2025-12-29', 335, '06625151', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2025-12-30', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2025-12-30', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2025-12-30', 395.83, '000000534', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2025-12-30', 248, '000004065', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2025-12-30', 311, '00001294', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000010', '75731855', '00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-000000000010', '2025-12-30', 356, '00000283', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000011', '75731855', '00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-000000000010', '2025-12-30', 334, '284', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000004', 'GEN-20105762', '00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-000000000012', '2025-12-31', 356, '01561862', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000005', 'GEN-20105762', '00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-000000000012', '2025-12-31', 334, '01563892', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2025-12-31', 270.8, '01198577', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2025-12-31', 270.8, '01196885', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2026-01-02', 271, '458', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2026-01-02', 270.83, '2437641', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2026-01-02', 333.33, '000005372', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2026-01-02', 333.33, '000005373', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2026-01-07', 333.33, '000000289', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2026-01-08', 270.8, '784,465,193,7650', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000005', 'GEN-62597713', '00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000012', '2026-01-13', 333.33, '00104082', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000006', 'GEN-62597713', '00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000012', '2026-01-13', 395.83, '01419530', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2026-01-15', 667, '495', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2026-01-15', 667, '496', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000010', '2026-01-17', 333.33, '501', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2026-01-28', 270.83, '034111945', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2026-01-29', 333.4, '000003145', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2026-01-30', 666.67, '00210184', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2026-01-30', 666.67, '00270214', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2026-01-30', 271, '530', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000008', '45359162', '00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000011', '2026-01-30', 333.33, '05548116', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000008', '45359162', '00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000011', '2026-01-30', 333.33, '05548116', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-01-30', 250, '01463253', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2026-01-31', 395.83, '540', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2026-01-31', 248, '0086128', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2026-01-31', 311, '000001387', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2026-02-01', 335, '02055274', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2026-02-02', 770.83, '0383422', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2026-02-02', 770.83, '0383422', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2026-02-02', 270.8, '784,465,452,5222', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2026-02-02', 333.33, '000005544', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2026-02-02', 333.33, '000005543', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2026-02-02', 270.8, '04871075', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2026-02-02', 270.8, '04872966', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000011', '75731855', '00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-000000000010', '2026-02-05', 334, '000000059', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2026-02-06', 270.83, '1414', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2026-02-06', 270.83, '1415', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2026-02-06', 333.3, '1416', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2026-02-06', 395, '03072428', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000010', '75731855', '00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-000000000010', '2026-02-06', 356, '000000063', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000010', '2026-02-16', 333.33, '570', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2026-02-19', 333.33, '00000317', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2026-02-19', 333.33, '00000318', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2026-02-19', 333.33, '00000319', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2026-02-20', 667, '1344', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2026-02-20', 667, '1345', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000007', 'GEN-88901129', '00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000011', '2026-02-22', 333.33, '03252254', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000007', 'GEN-88901129', '00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000011', '2026-02-22', 333.33, '03261319', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2026-02-26', 270.83, '582', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2026-02-26', 270.83, '583', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2026-02-28', 333.4, '00003165', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2026-03-01', 271, '599', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2026-03-01', 248, '000004283', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000012', '2026-03-01', 311, '000001460', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2026-03-01', 335, '02948292', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2026-03-01', 333.33, '000005682', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2026-03-01', 333.33, '000005681', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2026-03-02', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2026-03-02', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2026-03-02', 395.83, '596', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000010', '2026-03-02', 270.83, '000000153', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000004', 'GEN-20105762', '00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-000000000012', '2026-03-02', 356, '03984465', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000005', 'GEN-20105762', '00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-000000000012', '2026-03-02', 334, '03984698', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2026-03-02', 270.8, '04691099', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2026-03-02', 270.8, '04689218', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2026-03-04', 270.8, '784,465,193,4082', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2026-03-06', 395, '01559880', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000010', '75731855', '00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-000000000010', '2026-03-12', 356, '000000333', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000011', '75731855', '00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-000000000010', '2026-03-12', 334, '000000333', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000011', '07530376', '00000000-0000-0000-0000-007300000011', '00000000-0000-0000-0000-000000000010', '2026-03-17', 500, '784,465,192,8669', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000010', '2026-03-23', 333.33, '000002522', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2026-03-27', 666.67, '00349052', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2026-03-27', 270.83, '000001475', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2026-03-27', 270.83, '000001474', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2026-03-27', 333.3, '000001472', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2026-03-27', 333.3, '000001473', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000005', 'GEN-62597713', '00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000012', '2026-03-27', 333.33, '00509688', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-05-19', 4500, '02750440', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-06-30', 187.5, '03667875', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-06-30', 187.5, '03675048', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-08-06', 187.5, '00395528', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-08-06', 187.5, '00395528', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-09-06', 187.5, '00829244', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-09-06', 187.5, '00834203', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-10-15', 187.5, '00587281', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2025-10-15', 187.5, '00591493', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-01-30', 187.5, '01456495', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-01-30', 187.5, '05294553', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000006', 'GEN-62597713', '00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000012', '2026-03-27', 395.83, '00520318', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2026-03-30', 667, '1362', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2026-03-30', 667, '1363', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000003', 'GEN-24144289', '00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000012', '2026-03-30', 775, '05124480', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2026-03-30', 333.4, '000003208', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-03-30', 250, '05298915', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2026-03-31', 395.83, '594', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2026-04-01', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2026-04-01', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2026-04-01', 270.83, '02852451', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2026-04-01', 311, '000001493', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000008', '45359162', '00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000011', '2026-04-01', 333.33, '01490827', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000008', '45359162', '00000000-0000-0000-0000-007300000008', '00000000-0000-0000-0000-000000000011', '2026-04-01', 333.33, '01532335', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000010', '2026-04-01', 335, '2026040104330009224191218399', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2026-04-01', 333.33, '000005784', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2026-04-01', 333.33, '000005785', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2026-04-01', 248, '3389301', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000004', 'GEN-20105762', '00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-000000000012', '2026-04-03', 356, '03190363', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000005', 'GEN-20105762', '00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-000000000012', '2026-04-03', 334, '03191019', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2026-04-04', 270.8, '04210763', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2026-04-04', 270.8, '04212672', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2026-04-06', 270.8, '784,465,199,3170', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2026-04-07', 271, '685', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000011', '07530376', '00000000-0000-0000-0000-007300000011', '00000000-0000-0000-0000-000000000010', '2026-04-07', 409, '784,465,197,4748', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000010', '75731855', '00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-000000000010', '2026-04-08', 356, '000000348', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000011', '75731855', '00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-000000000010', '2026-04-08', 334, '000000349', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2026-04-10', 395, '00730812', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000001', 'URBIS GROUP', NULL, '00000000-0000-0000-0000-000000000010', '2026-04-19', 50, '000000557', 'TRANSFERENCIA', 'separacion', TRUE, 'PERDIDA');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000005', 'GEN-62597713', '00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000012', '2026-04-19', 333.33, '03351272', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000006', 'GEN-62597713', '00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000012', '2026-04-19', 395.83, '03358278', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000011', '2026-04-22', 270.8, '01926169', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000011', '2026-04-22', 270.8, '01939382', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000011', '2026-04-22', 270.8, '01943695', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000011', '2026-04-22', 270.8, '01950769', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000003', '44175264', '00000000-0000-0000-0000-007100000003', '00000000-0000-0000-0000-000000000011', '2026-04-22', 270.8, '01966825', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2026-04-22', 667, '1373', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2026-04-22', 667, '1373', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2026-04-22', 667, '1375', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2026-04-22', 667, '1375', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000003', '45603407', '00000000-0000-0000-0000-007200000003', '00000000-0000-0000-0000-000000000010', '2025-04-25', 50, '712', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000004', 'GEN-96659256', '00000000-0000-0000-0000-007100000004', '00000000-0000-0000-0000-000000000010', '2026-04-26', 500, '0554376', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2026-04-27', 270.83, '000001533', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2026-04-27', 270.83, '1534', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2026-04-27', 333.39, '000001535', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000003', '45603407', '00000000-0000-0000-0000-007200000003', '00000000-0000-0000-0000-000000000010', '2026-04-27', 2750, '719', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00709021', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00780199', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00782395', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00783625', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00784957', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00787027', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00789264', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00790573', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000001', '09995721', '00000000-0000-0000-0000-007600000001', '00000000-0000-0000-0000-000000000012', '2026-04-28', 187.5, '00792145', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00793584', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00794700', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00796342', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00797454', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00799738', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00802290', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00803933', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00805285', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000002', '09995721', '00000000-0000-0000-0000-007600000002', '00000000-0000-0000-0000-000000000012', '2026-04-28', 250, '00806167', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000012', '2026-04-17', 333.33, '00550318', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000003', 'GEN-24144289', '00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000012', '2026-04-30', 771, '01550018', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2026-04-30', 333.33, '000003229', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000010', '2026-05-01', 335, '2026050107444109224191271156', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2026-05-01', 333.33, '000005924', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2026-05-01', 333.33, '000005923', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000010', '2026-05-01', 270.8, '784,465,192,7640', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000006', '00035198', '00000000-0000-0000-0000-007100000006', '00000000-0000-0000-0000-000000000010', '2026-05-01', 50, '000006677', 'TRANSFERENCIA', 'separacion', TRUE, 'PERDIDA');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2026-05-01', 395, '05476995', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2026-05-01', 666.67, '00778432', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2026-05-02', 248, '6704878', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2026-05-04', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2026-05-04', 770.83, '0339636', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2026-05-05', 311, '000001561', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2026-05-06', 270.83, '06606635', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000011', '08561166', '00000000-0000-0000-0000-007200000011', '00000000-0000-0000-0000-000000000010', '2026-05-08', 395.83, '000000618', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000003', '45603407', '00000000-0000-0000-0000-007200000003', '00000000-0000-0000-0000-000000000010', '2026-05-13', 361, '000001338', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2026-05-05', 270.8, '00762718', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2026-05-05', 270.8, '00763961', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000004', 'GEN-20105762', '00000000-0000-0000-0000-007300000004', '00000000-0000-0000-0000-000000000012', '2026-05-16', 356, '01124597', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000005', 'GEN-20105762', '00000000-0000-0000-0000-007300000005', '00000000-0000-0000-0000-000000000012', '2026-05-16', 334, '01125336', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007500000008', '12345678', NULL, '00000000-0000-0000-0000-000000000012', '2026-05-16', 100, '01227881', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007500000009', '12345678', NULL, '00000000-0000-0000-0000-000000000012', '2026-05-16', 100, '01227881', 'TRANSFERENCIA', 'separacion', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000010', '12345678', NULL, '00000000-0000-0000-0000-000000000010', '2026-05-17', 50, '-', 'TRANSFERENCIA', 'separacion', TRUE, 'PERDIDA');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000010', '75731855', '00000000-0000-0000-0000-007400000010', '00000000-0000-0000-0000-000000000010', '2026-05-19', 356, '000000363', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000011', '75731855', '00000000-0000-0000-0000-007400000011', '00000000-0000-0000-0000-000000000010', '2026-05-19', 334, '000000362', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000002', '07493116', '00000000-0000-0000-0000-007400000002', '00000000-0000-0000-0000-000000000010', '2026-05-22', 333.33, '000002532', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000005', 'GEN-62597713', '00000000-0000-0000-0000-007400000005', '00000000-0000-0000-0000-000000000012', '2026-05-23', 333.33, '00882429', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000006', 'GEN-62597713', '00000000-0000-0000-0000-007400000006', '00000000-0000-0000-0000-000000000012', '2026-05-23', 395.83, '00887614', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000003', 'GEN-97291913', '00000000-0000-0000-0000-007600000003', '00000000-0000-0000-0000-000000000012', '2026-05-28', 500, '000000039', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000004', 'GEN-97291913', '00000000-0000-0000-0000-007600000004', '00000000-0000-0000-0000-000000000012', '2026-05-28', 500, '000000040', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007600000005', 'GEN-97291913', '00000000-0000-0000-0000-007600000005', '00000000-0000-0000-0000-000000000012', '2026-05-28', 500, '000000041', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007500000008', '12345678', NULL, '00000000-0000-0000-0000-000000000012', '2026-05-29', 400, '00635971', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007500000009', '12345678', NULL, '00000000-0000-0000-0000-000000000012', '2026-05-29', 400, '00639474', 'TRANSFERENCIA', 'inicial', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000004', '72681568', '00000000-0000-0000-0000-006500000004', '00000000-0000-0000-0000-000000000012', '2026-06-02', 666.67, '01074600', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006600000003', 'GEN-24144289', '00000000-0000-0000-0000-006600000003', '00000000-0000-0000-0000-000000000012', '2026-06-01', 775, '03431596', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000002', '72681568', '00000000-0000-0000-0000-007100000002', '00000000-0000-0000-0000-000000000011', '2026-05-28', 270.8, '01251406', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000007', '48358337', '00000000-0000-0000-0000-007100000007', '00000000-0000-0000-0000-000000000012', '2026-06-01', 270.8, '04269031', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000008', '48358337', '00000000-0000-0000-0000-007100000008', '00000000-0000-0000-0000-000000000012', '2026-06-01', 270.8, '04270481', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000004', 'GEN-96659256', '00000000-0000-0000-0000-007100000004', '00000000-0000-0000-0000-000000000010', '2026-06-02', 471, '3604905', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000006', '72072229', '00000000-0000-0000-0000-007200000006', '00000000-0000-0000-0000-000000000010', '2026-05-31', 311, '000001640', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000006', '06849661', '00000000-0000-0000-0000-007300000006', '00000000-0000-0000-0000-000000000010', '2026-06-01', 333.33, '000003260', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000011', '07530376', '00000000-0000-0000-0000-007300000011', '00000000-0000-0000-0000-000000000010', '2026-06-02', 409, '784,465,192,2534', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000009', '46155068', '00000000-0000-0000-0000-007300000009', '00000000-0000-0000-0000-000000000012', '2026-06-01', 335, '03455704', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000003', '42688684', '00000000-0000-0000-0000-007400000003', '00000000-0000-0000-0000-000000000010', '2026-05-30', 333.33, '000006044', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007400000004', '42688684', '00000000-0000-0000-0000-007400000004', '00000000-0000-0000-0000-000000000010', '2026-05-30', 333.33, '000006045', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000003', '06115804', '00000000-0000-0000-0000-006700000003', '00000000-0000-0000-0000-000000000010', '2026-06-03', 770.83, '0383422', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006700000004', '06115804', '00000000-0000-0000-0000-006700000004', '00000000-0000-0000-0000-000000000010', '2026-06-03', 770.83, '0383422', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000002', '44419644', '00000000-0000-0000-0000-007200000002', '00000000-0000-0000-0000-000000000010', '2026-06-03', 271, '924', 'DEPOSITO', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000004', '45603407', '00000000-0000-0000-0000-007200000004', '00000000-0000-0000-0000-000000000011', '2026-06-02', 270.83, '07102071', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000005', '72072229', '00000000-0000-0000-0000-007200000005', '00000000-0000-0000-0000-000000000010', '2026-06-02', 248, '000005036', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007300000007', 'GEN-88901129', '00000000-0000-0000-0000-007300000007', '00000000-0000-0000-0000-000000000010', '2026-06-17', 333.33, '784,465,193,4380', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2026-06-04', 667, '000001395', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000005', '00117872', '00000000-0000-0000-0000-006500000005', '00000000-0000-0000-0000-000000000010', '2026-06-04', 667, '000001395', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2026-06-04', 667, '000001397', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-006500000006', '00117872', '00000000-0000-0000-0000-006500000006', '00000000-0000-0000-0000-000000000010', '2026-06-04', 667, '000001397', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000010', '23003116', '00000000-0000-0000-0000-007100000010', '00000000-0000-0000-0000-000000000010', '2026-06-10', 270.8, '-', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000011', '23003116', '00000000-0000-0000-0000-007100000011', '00000000-0000-0000-0000-000000000010', '2026-06-10', 270.8, '-', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007100000012', '23003116', '00000000-0000-0000-0000-007100000012', '00000000-0000-0000-0000-000000000010', '2026-06-10', 333.33, '-', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2026-06-17', 333.33, '000000474', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000008', '77038963', '00000000-0000-0000-0000-007200000008', '00000000-0000-0000-0000-000000000010', '2026-06-17', 333.33, '000000375', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO daily_income (lot_id, client_id, sale_id, financial_account_id, date, amount, operation_number, operation_type, income_type, approved, observation)
VALUES ('00000000-0000-0000-0000-007200000012', '45579642', '00000000-0000-0000-0000-007200000012', '00000000-0000-0000-0000-000000000011', '2026-06-05', 395, '03907594', 'TRANSFERENCIA', 'cuota', TRUE, 'ACEPTADO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Marzo', 2025, '2025-03-01', '2025-03-01', 'URBIS GROUP', 'ALEXANDER PULGAR', 'YOMAIRA MACEDO', 1500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-2', 'PAGO DE COMISION AL ASESOR VICTOR MERA');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Abril', 2025, '2025-04-09', '2025-04-09', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 4500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-5', 'PAGO DE COMISIONES CORRESPONDIENTES A LOS ASESORES TEDDY Y VICTOR LUIS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Abril', 2025, '2025-04-21', '2025-04-22', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 2500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-8', 'PAGO DE COMISIONES CORRESPONDIENTES A LOS ASESORES TEDDY Y VICTOR LUIS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'mayo', 2025, '2025-05-02', '2025-05-05', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 1000, 'RH', 'EFECTIVO', 'E001-7', 'PAGO DE COMISION MZ A LT 5 Y 6');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Mayo', 2025, '2025-05-06', '2025-05-06', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 1000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', '-', 'PAGO DE COMISIONES CORRESPONDIETNE AL ASESOR VICTOR MERA');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Mayo', 2025, '2025-05-06', '2025-05-06', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 2000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', '-', 'PAGO DE COMISIÒN CORRESPONDIENTE A LOS ASESORES TEDDY Y VICTOR LUIS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Mayo', 2025, '2025-05-08', '2025-05-08', 'URBIS GROUP', 'TEDDY NILSSON', '-', 1000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', '-', 'PAGO DE COMISION CORRESPONDIENTE A LA VENTA DE LOS LOTES 05 Y 06 MZ H');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Mayo', 2025, '2025-05-09', '2025-05-09', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 1000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', '-', 'PAGO DE COMISION CORRESPONDIENTE A LOS ASESORES TEDDY Y BILLY');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Mayo', 2025, '2025-05-09', '2025-05-09', 'URBIS GROUP', 'TEDDY NILSSON', '-', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-9', 'PAGO DE COMISIONES CORRESPONDIENTE A LA VENTA DE LOS LOTES DE LA MZ G LT 02');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Mayo', 2025, '2025-05-09', '2025-05-09', 'URBIS GROUP', 'BILLY SEPULVEDA', '-', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', '-', 'PAGO DE COMISION POR LA VENTA DE LA MZ G LT 03');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Mayo', 2025, '2025-05-30', '2025-05-30', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 3000, 'FACTURA', 'EFECTIVO', 'E001-2', 'PAGO POR GASTOS ADMINISTRATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Mayo', 2025, '2025-05-30', '2025-05-30', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 1000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-8', 'PAGO DE COMISION AL ASESOR VICTOR MERA MZ L LT 1');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Junio', 2025, '2025-06-06', '2025-06-06', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 3000, 'FACTURA', 'EFECTIVO', 'E001-3', 'PAGO POR GASTOS ADMINISTRATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Junio', 2025, '2025-06-06', '2025-06-06', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 1000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-9', 'PAGO DE COMISION MZ L LT 2');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Julio', 2025, '2025-07-02', '2025-07-02', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 1000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-10', 'COMISION CORRESPONDIENTE AL ASESOR VICTOR MERA MZ C LT 3 Y 4');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Julio', 2025, '2025-07-09', '2025-07-09', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-11', 'COMISION CORRESPONDIENTE AL ASESOR VICTOR MERA');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Julio', 2025, '2025-07-21', '2025-07-21', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-13', 'COMISION CORRESPONDIENTE AL ASESOR VICTOR MERA MZ A LT 2');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Julio', 2025, '2025-07-31', '2025-07-31', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 2000, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO DE SERVICIOS TOPOGRAFICOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Agosto', 2025, '2025-08-01', '2025-08-01', 'URBIS GROUP', 'JOSE EDILBERTO GARCIA', '-', 2000, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO DE SERVICIOS TOPOGRAFICOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Agosto', 2025, '2025-08-02', '2025-08-02', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-4', 'PAGO DE COMISION CORRESPONDIENTE AL ASESOR VICTOR MERA MZ H LT 12');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Setiembre', 2025, '2025-09-01', '2025-09-01', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 3000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-4', 'GASTOS ADMINISTRATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Setiembre', 2025, '2025-09-01', '2025-09-01', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 2000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-18,19,20,21', 'COMISIONES CORRESPONDIENTE AL ASESOR VICTOR MERA');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-03', '2025-09-03', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 5000, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO DE GASTOS OPERATIVOS ALQUILER DE MAQUINARIA Y CAMA BAJA');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-08', '2025-09-08', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 5000, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO DE GASTOS OPERATIVOS ALQUILER DE MAQUINARIA Y APERTURA DE CALLES');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Setiembre', 2025, '2025-09-08', '2025-09-08', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 1000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-24', 'PAGO DE COMISION CORRESPONDIENTE A LA MZ J LT 5 Y 6');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-16', '2025-09-16', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 2505, 'CONSTANCIA', 'EFECTIVO', '-', 'CANCELACION POR CONCEPTO DE HORAS EFECTIVAMENTE TRABAJADAS POR LA MAQUINARIA EN LA ZONA DEL PROYECTO.');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-24', '2025-09-24', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 371, 'CONSTANCIA', 'EFECTIVO', 'E001-5', 'GASTOS VARIOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-24', '2025-09-24', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 1600, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO POR EL USO DE RETROEXCAVADORA');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-24', '2025-09-24', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 1600, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO POR EL INGRESO DE CAMA BAJA Y SERVICIO DE VIGILANCIA');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-24', '2025-09-24', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 1000, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO POR EL SERVICIO DE CULTIVADO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Setiembre', 2025, '2025-09-30', '2025-09-30', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 3000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-6', 'GASTOS ADMINISTRATIVOS Y OPERATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-30', '2025-09-30', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 2000, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO DEL SERVICIOS TOPOGRAFICOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-30', '2025-09-30', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 850, 'CONSTANCIA', 'EFECTIVO', '-', 'CONTRATACION DE UN DRONE FUMIGADOR');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Setiembre', 2025, '2025-09-30', '2025-09-30', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 438, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO DE HORAS EXTRAS RETROEXCAVORA EN EL REDIRECCIONAMIENTO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Octubre', 2025, '2025-10-10', '2025-10-10', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO', 1000, 'CONSTANCIA', 'EFECTIVO', '-', 'LEVANTAMIENTO TOPOGRAFICO Y REPLANTEO DEL PLANO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Octubre', 2025, '2025-10-10', '2025-10-10', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 1000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', '-', 'PAGO DE COMISION MZ H LT 8 Y MZ J LT 10');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Octubre', 2025, '2025-10-16', '2025-10-16', 'URBIS GROUP', 'FERNANDA FARRO', 'JOSE MACEDO SANCHEZ', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', '-', 'PAGO DE COMISION MZ B LT 03');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Octubre', 2025, '2025-10-30', '2025-10-30', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO', 2500, 'CONSTANCIA', 'EFECTIVO', '-', 'CONTRUCCION DE UN PUENTE EN EL PROYECTO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Octubre', 2025, '2025-10-30', '2025-10-30', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO', 2080, 'CONSTANCIA', 'EFECTIVO', '-', 'LIMPIEZA DE ACEQUIA');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Noviembre', 2025, '2025-11-03', '2025-11-03', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO', 800, 'CONSTANCIA', 'EFECTIVO', '-', 'PRESUPUESTO PARA LA FUMIGACION');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Noviembre', 2025, '2025-11-04', '2025-11-04', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 3000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-7', 'GASTOS ADMINISTRATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Noviembre', 2025, '2025-11-05', '2025-11-05', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-39', 'PAGO DE COMISION CORRESPONDIENTE A LA VENTA MZ I LT 5');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Noviembre', 2025, '2025-11-05', '2025-11-05', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-38', 'PAGO DE COMISION MZ I LT 4');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Noviembre', 2025, '2025-11-14', '2025-11-14', 'URBIS GROUP', 'ALEXANDER PULGAR', 'JOSE MACEDO SANCHEZ', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-44', 'PAGO DE COMISION CORRESPONDIENTE A LA VENTA DE LA MZ J LT 11');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Noviembre', 2025, '2025-11-25', '2025-11-25', 'URBIS GROUP', 'TEDDY NILSSON', 'JOSE MACEDO SANCHEZ', 500, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001.11', 'PAGO DE COMISION MZ B LT 2');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Noviembre', 2025, '2025-11-29', '2025-11-29', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 3000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-12', 'GASTOS ADMINISTRATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Diciembre', 2025, '2025-12-30', '2025-12-30', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 3000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-15', 'GASTOS ADMINISTRATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Diciembre', 2025, '2025-12-30', '2025-12-30', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO', 2676, 'CONSTANCIA', 'EFECTIVO', 'E001-17', 'CULMINACION DE OBRAS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Diciembre', 2025, '2025-12-30', '2025-12-30', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO', 3350, 'CONSTANCIA', 'EFECTIVO', 'E001-18', 'MARKETING PUBLICITARIO VIDEO 3D');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Diciembre', 2025, '2025-12-31', '2025-12-31', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO', 840, 'CONSTANCIA', 'EFECTIVO', '-', 'PAGO DEL ESPECIALISTA QUÉ CREARÁ EL ECOSISTEMA DIGITAL PARA LA GESTION DE VENTAS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Enero', 2026, '2026-01-30', '2026-01-30', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 3000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-26', 'GASTOS ADMINISTRATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Febrero', 2026, '2026-02-09', '2026-02-09', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO', 861, 'CONSTANCIA', 'EFECTIVO', 'E001-30', 'PAGO DE CULTIVO Y MANTENIMIENTO DE CALLES');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Febrero', 2026, '2026-02-26', '2026-02-26', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO', 468, 'CONSTANCIA', 'EFECTIVO', 'E001-33', 'HERBICIDAS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Marzo', 2026, '2026-03-02', '2026-03-02', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 3000, 'CONSTANCIA DE RECEPCIÒN', 'EFECTIVO', 'E001-34', 'GASTOS ADMINISTRATIVOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Marzo', 2026, '2026-03-06', '2026-03-06', 'URBIS GROUP', 'VICTOR MERA', 'JOSE MACEDO SANCHEZ', 346, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-38', 'OBRAS DE CULTIVO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Marzo', 2026, '2026-03-12', '2026-03-12', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 708, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-39', 'FUMIGACION PRADERAS DE CASHIBO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Marzo', 2026, '2026-03-16', '2026-03-16', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 861, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-40', 'FUMIGACION PRADERAS DE CASHIBO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Marzo', 2026, '2026-03-17', '2026-03-17', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 500, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-64', 'COMISION PRADERAS MZ I LT 11');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Marzo', 2026, '2026-03-24', '2026-03-24', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 531, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-41', 'CULTIVO DE CAÑO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Marzo', 2026, '2026-03-28', '2026-03-28', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 245, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', '-', 'ARREGLO DE 3 CULTIVADORAS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Marzo', 2026, '2026-03-31', '2026-03-31', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 3000, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-46', 'GASTOS ADMINISTRATIVOS CORRESPONDIENTE AL MES DE MARZO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Abril', 2026, '2026-04-09', '2026-04-09', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 1200, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', '-', 'PRESUPUESTO PARA CAMPAÑAS PUBLICITARIAS EN REDES SOCIALES ARMANDO CAMPOS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Abril', 2026, '2026-04-13', '2026-04-13', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 501, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-49', 'OBRA DE FUMIGACION DE CALLES');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Abril', 2026, '2026-04-14', '2026-04-14', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 500, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-68', 'COMISION MZ I LT 6');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Abril', 2026, '2026-04-14', '2026-04-14', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 500, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-69', 'COMISION MZ I LT 8');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Abril', 2026, '2026-04-28', '2026-04-28', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 1300, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-72', 'COMISION MZ H LT 3');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Abril', 2026, '2026-04-29', '2026-04-29', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 500, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-73', 'COMISION MZ G LT 4');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Abril', 2026, '2026-04-30', '2026-04-30', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 1500, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-51', 'GASTOS ADMINISTRATIVOS CORRESPONDIENTE AL MES DE ABRIL');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'PAGO DE COMISION', 'Mayo', 2026, '2026-05-07', '2026-05-07', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 150, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', '-', 'REEMBOLSO DE SEPARACIONES');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Mayo', 2026, '2026-05-05', '2026-05-05', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 100, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', '-', 'GASTOS ADMINISTRATIVOS POR CONCEPTO DE PERMUTA DE TERRENO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Mayo', 2026, '2026-05-05', '2026-05-05', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 138, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', 'E001-55', 'CULTIVO Y SEMBRIO DE PLANTAS');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', 'Mayo', 2026, '2026-05-13', '2026-05-13', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 61.6, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', '-', 'PARTIDA REGISTRAL PRADERAS DE CASHIBO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Mayo', 2026, '2026-05-28', '2026-05-28', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 300, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', '-', 'MATERIAL AUDIOVISUAL PARA LAS REDES SOCIALES del proyecto “LAS PRADERAS DE CASHIBO”.');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Mayo', 2026, '2026-05-28', '2026-05-28', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 292, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', '-', 'REPRESETACIÓN DE IDA AL DISTRITO DE MASISEA-MAYO');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS DE DESARROLLO', 'Mayo', 2026, '2026-05-29', '2026-05-29', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 200, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', '-', 'DRONEO en el proyecto  “LAS PRADERAS DE CASHIBO”.');


INSERT INTO expenses (project_id, type, month, year, issue_date, reception_date, company, recipient, sender, amount, document_type, payment_method, document_number, description)
VALUES ('00000000-0000-0000-0000-000000000001', 'GASTOS ADMINISTRATIVOS', NULL, 2025, '2026-05-29', '2026-05-29', 'URBIS GROUP', 'VICTOR MERA', 'YOMAIRA MACEDO', 1500, 'CONSTANCIA DE RECEPCIÒN', 'TRANFERENCIA', NULL, 'GASTOS ADMINISTRATIVOS CORRESPONDIENTE AL MES DE MAYO del proyecto “LAS PRADERAS DE CASHIBO”');

COMMIT;