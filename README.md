# ControlHIS
Control de calidad HIS

### BD SIN RELACIONES
1. Eliminaciones de las tablas:
- ERR_HIS_ATENCIONES
- ERR_HIS1
- ERR_HISA
- HIS_CONSOLIDADO
- HIS_PLANO
- HIS1
- HISA
2. Creacion de las tablas: 
- m_cie 
- m_cpm 
- m_cpmcie 
- m_financiador 
- m_ipress 
- m_paciente
- m_sexo 
- m_turno_atencion 
- m_ubigeo 
- m_ups 
- tiempo
3. Normalizacion de las columnas: 
- Todo minuscula
- Espacio reemplazado por _
- Letras reemplazada de Ñ por ni
- Tildes quitadas
4. Subida de datos a la nueva abse de datos del resto de las tablas 
5. Tablas sin datos
- m_paciente
6. Tabla HIS_ATENCIONES
- En el campo renaes agregado 000 adelantes
7. Tabla maestro_personal
- agregado el campo DNI, datos sacados del campo codpsal
- datos repetidos, eliminados por la fehca de ingreso mas recientes,cod_cond  menor, cod_prof mayor, cod_2000 mayor
8. Tabla ubigeo 
- Datos subidos los restantes
9. Agregar Primary key a todas las tablas
10. Agregar Foreign key
