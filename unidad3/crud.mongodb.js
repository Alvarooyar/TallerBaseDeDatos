use('directorio_talento')
db.perfiles.find(
    {
        seccion : '003D'
    }

)

//creamos la coleccion
use('directorio_talento');
db.empresas.insertMany(
    [
        {
        nombre : 'DuocUc', 
        rubro : 'Educacion', 
        empleados : 300, 
        ciudad : 'Puerto Montt', 
        creado_por : 'Carlos Orellana'
        },
        {
        nombre : 'Inacap', 
        rubro : 'Educacion', 
        empleados : 220, 
        ciudad : 'Puerto Montt', 
        creado_por : 'Carlos Orellana'
        }
    ]
);

//para ofertas laborales
use('directorio_talento');
db.ofertas.insertMany(
    [
        {
            cargo : 'instalador de fibra optica', 
            empresa : 'RedTel', 
            modalidad : 'precencial', 
            sueldo : 450000, 
            vacantes : 40, 
            requisitos : 'tener piernas', 
            activa : true, 
            creado_por : 'alvaro'
        }
    ],
);
use('directorio_talento');
db.ofertas.insertMany(
    [
        {
            cargo : 'kinesiologo', 
            empresa : 'hospital Puerto Montt', 
            modalidad : 'precencial', 
            sueldo : 800000, 
            vacantes : 5, 
            requisitos : "3 años de experiencia", 
            activa : true, 
            creado_por : 'alvaro'
        }
    ],
);

//buscar todos operador $gt
use('directorio_talento');
db.ofertas.find(
    {sueldo: 100}
)
//si queremos traer mayores a 1000000
use('directorio_talento');
db.ofertas.find(
    {sueldo: {$gt : 1000000}}
)

// si queremos traer los de menos de 1000000
use('directorio_talento');
db.ofertas.find(
    {sueldo: {$lt : 1000000}}
)

//not equal
use('directorio_talento');
db.ofertas.find(
    {
        modalidad : {$nin : ['remoto','Remoto']},
    }
)

//uso de $or
use('directorio_talento');
db.ofertas.find(
    { $or: 
    [ { "modalidad": "remoto" }, 
      { "sueldo": 'hibrido' } 
    ] }
);