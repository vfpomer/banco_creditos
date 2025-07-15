
    IF OBJECT_ID('usuarios', 'U') IS NULL
    CREATE TABLE usuarios (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(100),
        apellido NVARCHAR(100),
        estado_civil NVARCHAR(50),
        dni NVARCHAR(20),
        nacionalidad NVARCHAR(255),
        fecha_nacimiento DATE,
        direccion NVARCHAR(255),
        codigo_postal NVARCHAR(20),
        provincia NVARCHAR(100),
        telefono NVARCHAR(20),
        email NVARCHAR(100),
        es_moroso BIT
    );
    

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan0@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan1@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan2@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan3@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan4@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan5@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan6@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan7@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan8@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan9@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan10@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan11@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan12@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan13@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan14@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan15@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan16@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan17@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan18@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan19@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan20@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan21@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan22@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan23@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan24@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan25@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan26@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan27@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan28@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan29@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan30@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan31@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan32@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan33@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan34@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan35@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan36@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan37@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan38@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan39@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan40@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan41@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan42@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan43@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan44@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan45@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan46@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan47@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan48@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan49@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan50@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan51@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan52@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan53@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan54@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan55@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan56@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan57@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan58@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan59@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan60@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan61@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan62@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan63@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan64@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan65@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan66@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan67@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan68@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan69@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan70@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan71@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan72@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan73@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan74@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan75@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan76@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan77@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan78@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan79@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan80@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan81@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan82@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan83@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan84@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan85@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan86@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan87@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan88@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan89@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan90@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan91@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan92@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan93@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan94@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan95@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan96@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan97@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan98@correo.com', 0
        );
        

        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            'Juan', 'Pérez', 'Soltero/a', '12345678Z', 'Española',
            '1980-01-01', 'Calle Falsa 123', '28080', 'Madrid',
            '612345678', 'juan99@correo.com', 0
        );
        


    IF OBJECT_ID('empleos', 'U') IS NULL
    CREATE TABLE empleos (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT,
        empresa NVARCHAR(100),
        puesto NVARCHAR(100),
        fecha_inicio DATE,
        fecha_fin DATE NULL,
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (1, 'Empresa 0', 'Puesto 0', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (2, 'Empresa 1', 'Puesto 1', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (3, 'Empresa 2', 'Puesto 2', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (4, 'Empresa 3', 'Puesto 3', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (5, 'Empresa 4', 'Puesto 4', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (6, 'Empresa 5', 'Puesto 5', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (7, 'Empresa 6', 'Puesto 6', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (8, 'Empresa 7', 'Puesto 7', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (9, 'Empresa 8', 'Puesto 8', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (10, 'Empresa 9', 'Puesto 9', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (11, 'Empresa 10', 'Puesto 10', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (12, 'Empresa 11', 'Puesto 11', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (13, 'Empresa 12', 'Puesto 12', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (14, 'Empresa 13', 'Puesto 13', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (15, 'Empresa 14', 'Puesto 14', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (16, 'Empresa 15', 'Puesto 15', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (17, 'Empresa 16', 'Puesto 16', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (18, 'Empresa 17', 'Puesto 17', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (19, 'Empresa 18', 'Puesto 18', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (20, 'Empresa 19', 'Puesto 19', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (21, 'Empresa 20', 'Puesto 20', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (22, 'Empresa 21', 'Puesto 21', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (23, 'Empresa 22', 'Puesto 22', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (24, 'Empresa 23', 'Puesto 23', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (25, 'Empresa 24', 'Puesto 24', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (26, 'Empresa 25', 'Puesto 25', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (27, 'Empresa 26', 'Puesto 26', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (28, 'Empresa 27', 'Puesto 27', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (29, 'Empresa 28', 'Puesto 28', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (30, 'Empresa 29', 'Puesto 29', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (31, 'Empresa 30', 'Puesto 30', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (32, 'Empresa 31', 'Puesto 31', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (33, 'Empresa 32', 'Puesto 32', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (34, 'Empresa 33', 'Puesto 33', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (35, 'Empresa 34', 'Puesto 34', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (36, 'Empresa 35', 'Puesto 35', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (37, 'Empresa 36', 'Puesto 36', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (38, 'Empresa 37', 'Puesto 37', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (39, 'Empresa 38', 'Puesto 38', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (40, 'Empresa 39', 'Puesto 39', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (41, 'Empresa 40', 'Puesto 40', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (42, 'Empresa 41', 'Puesto 41', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (43, 'Empresa 42', 'Puesto 42', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (44, 'Empresa 43', 'Puesto 43', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (45, 'Empresa 44', 'Puesto 44', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (46, 'Empresa 45', 'Puesto 45', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (47, 'Empresa 46', 'Puesto 46', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (48, 'Empresa 47', 'Puesto 47', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (49, 'Empresa 48', 'Puesto 48', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (50, 'Empresa 49', 'Puesto 49', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (51, 'Empresa 50', 'Puesto 50', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (52, 'Empresa 51', 'Puesto 51', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (53, 'Empresa 52', 'Puesto 52', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (54, 'Empresa 53', 'Puesto 53', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (55, 'Empresa 54', 'Puesto 54', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (56, 'Empresa 55', 'Puesto 55', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (57, 'Empresa 56', 'Puesto 56', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (58, 'Empresa 57', 'Puesto 57', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (59, 'Empresa 58', 'Puesto 58', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (60, 'Empresa 59', 'Puesto 59', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (61, 'Empresa 60', 'Puesto 60', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (62, 'Empresa 61', 'Puesto 61', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (63, 'Empresa 62', 'Puesto 62', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (64, 'Empresa 63', 'Puesto 63', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (65, 'Empresa 64', 'Puesto 64', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (66, 'Empresa 65', 'Puesto 65', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (67, 'Empresa 66', 'Puesto 66', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (68, 'Empresa 67', 'Puesto 67', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (69, 'Empresa 68', 'Puesto 68', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (70, 'Empresa 69', 'Puesto 69', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (71, 'Empresa 70', 'Puesto 70', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (72, 'Empresa 71', 'Puesto 71', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (73, 'Empresa 72', 'Puesto 72', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (74, 'Empresa 73', 'Puesto 73', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (75, 'Empresa 74', 'Puesto 74', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (76, 'Empresa 75', 'Puesto 75', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (77, 'Empresa 76', 'Puesto 76', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (78, 'Empresa 77', 'Puesto 77', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (79, 'Empresa 78', 'Puesto 78', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (80, 'Empresa 79', 'Puesto 79', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (81, 'Empresa 80', 'Puesto 80', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (82, 'Empresa 81', 'Puesto 81', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (83, 'Empresa 82', 'Puesto 82', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (84, 'Empresa 83', 'Puesto 83', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (85, 'Empresa 84', 'Puesto 84', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (86, 'Empresa 85', 'Puesto 85', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (87, 'Empresa 86', 'Puesto 86', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (88, 'Empresa 87', 'Puesto 87', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (89, 'Empresa 88', 'Puesto 88', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (90, 'Empresa 89', 'Puesto 89', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (91, 'Empresa 90', 'Puesto 90', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (92, 'Empresa 91', 'Puesto 91', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (93, 'Empresa 92', 'Puesto 92', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (94, 'Empresa 93', 'Puesto 93', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (95, 'Empresa 94', 'Puesto 94', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (96, 'Empresa 95', 'Puesto 95', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (97, 'Empresa 96', 'Puesto 96', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (98, 'Empresa 97', 'Puesto 97', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (99, 'Empresa 98', 'Puesto 98', '2015-01-01', '2020-12-31');
        

        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES (100, 'Empresa 99', 'Puesto 99', '2015-01-01', '2020-12-31');
        


    IF OBJECT_ID('creditos', 'U') IS NULL
    CREATE TABLE creditos (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT,
        monto DECIMAL(18, 2),
        fecha_inicio DATE,
        fecha_fin DATE,
        estado NVARCHAR(50),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (1, 1500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (2, 2000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (3, 2500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (4, 3000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (5, 3500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (6, 4000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (7, 4500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (8, 5000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (9, 5500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (10, 6000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (11, 6500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (12, 7000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (13, 7500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (14, 8000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (15, 8500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (16, 9000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (17, 9500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (18, 10000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (19, 10500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (20, 11000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (21, 11500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (22, 12000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (23, 12500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (24, 13000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (25, 13500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (26, 14000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (27, 14500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (28, 15000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (29, 15500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (30, 16000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (31, 16500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (32, 17000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (33, 17500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (34, 18000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (35, 18500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (36, 19000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (37, 19500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (38, 20000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (39, 20500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (40, 21000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (41, 21500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (42, 22000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (43, 22500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (44, 23000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (45, 23500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (46, 24000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (47, 24500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (48, 25000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (49, 25500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (50, 26000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (51, 26500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (52, 27000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (53, 27500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (54, 28000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (55, 28500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (56, 29000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (57, 29500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (58, 30000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (59, 30500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (60, 31000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (61, 31500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (62, 32000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (63, 32500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (64, 33000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (65, 33500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (66, 34000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (67, 34500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (68, 35000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (69, 35500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (70, 36000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (71, 36500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (72, 37000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (73, 37500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (74, 38000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (75, 38500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (76, 39000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (77, 39500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (78, 40000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (79, 40500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (80, 41000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (81, 41500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (82, 42000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (83, 42500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (84, 43000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (85, 43500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (86, 44000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (87, 44500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (88, 45000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (89, 45500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (90, 46000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (91, 46500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (92, 47000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (93, 47500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (94, 48000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (95, 48500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (96, 49000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (97, 49500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (98, 50000, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (99, 50500, '2020-01-01', '2025-01-01', 'Activo');
        

        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado)
        VALUES (100, 51000, '2020-01-01', '2025-01-01', 'Activo');
        


    IF OBJECT_ID('cuentas_bancarias', 'U') IS NULL
    CREATE TABLE cuentas_bancarias (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT,
        tipo_cuenta NVARCHAR(100),
        saldo DECIMAL(18, 2),
        moneda NVARCHAR(50),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (1, 'Ahorro', 1000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (2, 'Corriente', 1250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (3, 'Inversion', 1500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (4, 'Ahorro', 1750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (5, 'Corriente', 2000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (6, 'Inversion', 2250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (7, 'Ahorro', 2500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (8, 'Corriente', 2750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (9, 'Inversion', 3000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (10, 'Ahorro', 3250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (11, 'Corriente', 3500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (12, 'Inversion', 3750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (13, 'Ahorro', 4000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (14, 'Corriente', 4250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (15, 'Inversion', 4500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (16, 'Ahorro', 4750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (17, 'Corriente', 5000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (18, 'Inversion', 5250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (19, 'Ahorro', 5500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (20, 'Corriente', 5750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (21, 'Inversion', 6000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (22, 'Ahorro', 6250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (23, 'Corriente', 6500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (24, 'Inversion', 6750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (25, 'Ahorro', 7000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (26, 'Corriente', 7250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (27, 'Inversion', 7500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (28, 'Ahorro', 7750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (29, 'Corriente', 8000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (30, 'Inversion', 8250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (31, 'Ahorro', 8500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (32, 'Corriente', 8750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (33, 'Inversion', 9000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (34, 'Ahorro', 9250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (35, 'Corriente', 9500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (36, 'Inversion', 9750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (37, 'Ahorro', 10000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (38, 'Corriente', 10250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (39, 'Inversion', 10500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (40, 'Ahorro', 10750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (41, 'Corriente', 11000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (42, 'Inversion', 11250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (43, 'Ahorro', 11500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (44, 'Corriente', 11750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (45, 'Inversion', 12000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (46, 'Ahorro', 12250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (47, 'Corriente', 12500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (48, 'Inversion', 12750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (49, 'Ahorro', 13000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (50, 'Corriente', 13250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (51, 'Inversion', 13500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (52, 'Ahorro', 13750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (53, 'Corriente', 14000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (54, 'Inversion', 14250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (55, 'Ahorro', 14500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (56, 'Corriente', 14750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (57, 'Inversion', 15000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (58, 'Ahorro', 15250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (59, 'Corriente', 15500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (60, 'Inversion', 15750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (61, 'Ahorro', 16000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (62, 'Corriente', 16250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (63, 'Inversion', 16500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (64, 'Ahorro', 16750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (65, 'Corriente', 17000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (66, 'Inversion', 17250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (67, 'Ahorro', 17500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (68, 'Corriente', 17750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (69, 'Inversion', 18000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (70, 'Ahorro', 18250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (71, 'Corriente', 18500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (72, 'Inversion', 18750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (73, 'Ahorro', 19000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (74, 'Corriente', 19250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (75, 'Inversion', 19500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (76, 'Ahorro', 19750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (77, 'Corriente', 20000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (78, 'Inversion', 20250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (79, 'Ahorro', 20500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (80, 'Corriente', 20750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (81, 'Inversion', 21000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (82, 'Ahorro', 21250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (83, 'Corriente', 21500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (84, 'Inversion', 21750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (85, 'Ahorro', 22000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (86, 'Corriente', 22250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (87, 'Inversion', 22500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (88, 'Ahorro', 22750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (89, 'Corriente', 23000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (90, 'Inversion', 23250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (91, 'Ahorro', 23500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (92, 'Corriente', 23750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (93, 'Inversion', 24000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (94, 'Ahorro', 24250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (95, 'Corriente', 24500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (96, 'Inversion', 24750, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (97, 'Ahorro', 25000, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (98, 'Corriente', 25250, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (99, 'Inversion', 25500, 'EUR');
        

        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES (100, 'Ahorro', 25750, 'EUR');
        


    IF OBJECT_ID('activos_financieros', 'U') IS NULL
    CREATE TABLE activos_financieros (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT,
        tipo_activo NVARCHAR(100),
        descripcion NVARCHAR(255),
        monto DECIMAL(18,2),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (1, 'ahorro', 'Activos financieros', 1000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (2, 'plan de jubilación', 'Activos financieros', 1500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (3, 'inversiones', 'Activos financieros', 2000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (4, 'ahorro', 'Activos financieros', 2500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (5, 'plan de jubilación', 'Activos financieros', 3000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (6, 'inversiones', 'Activos financieros', 3500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (7, 'ahorro', 'Activos financieros', 4000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (8, 'plan de jubilación', 'Activos financieros', 4500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (9, 'inversiones', 'Activos financieros', 5000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (10, 'ahorro', 'Activos financieros', 5500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (11, 'plan de jubilación', 'Activos financieros', 6000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (12, 'inversiones', 'Activos financieros', 6500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (13, 'ahorro', 'Activos financieros', 7000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (14, 'plan de jubilación', 'Activos financieros', 7500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (15, 'inversiones', 'Activos financieros', 8000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (16, 'ahorro', 'Activos financieros', 8500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (17, 'plan de jubilación', 'Activos financieros', 9000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (18, 'inversiones', 'Activos financieros', 9500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (19, 'ahorro', 'Activos financieros', 10000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (20, 'plan de jubilación', 'Activos financieros', 10500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (21, 'inversiones', 'Activos financieros', 11000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (22, 'ahorro', 'Activos financieros', 11500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (23, 'plan de jubilación', 'Activos financieros', 12000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (24, 'inversiones', 'Activos financieros', 12500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (25, 'ahorro', 'Activos financieros', 13000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (26, 'plan de jubilación', 'Activos financieros', 13500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (27, 'inversiones', 'Activos financieros', 14000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (28, 'ahorro', 'Activos financieros', 14500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (29, 'plan de jubilación', 'Activos financieros', 15000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (30, 'inversiones', 'Activos financieros', 15500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (31, 'ahorro', 'Activos financieros', 16000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (32, 'plan de jubilación', 'Activos financieros', 16500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (33, 'inversiones', 'Activos financieros', 17000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (34, 'ahorro', 'Activos financieros', 17500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (35, 'plan de jubilación', 'Activos financieros', 18000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (36, 'inversiones', 'Activos financieros', 18500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (37, 'ahorro', 'Activos financieros', 19000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (38, 'plan de jubilación', 'Activos financieros', 19500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (39, 'inversiones', 'Activos financieros', 20000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (40, 'ahorro', 'Activos financieros', 20500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (41, 'plan de jubilación', 'Activos financieros', 21000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (42, 'inversiones', 'Activos financieros', 21500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (43, 'ahorro', 'Activos financieros', 22000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (44, 'plan de jubilación', 'Activos financieros', 22500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (45, 'inversiones', 'Activos financieros', 23000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (46, 'ahorro', 'Activos financieros', 23500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (47, 'plan de jubilación', 'Activos financieros', 24000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (48, 'inversiones', 'Activos financieros', 24500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (49, 'ahorro', 'Activos financieros', 25000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (50, 'plan de jubilación', 'Activos financieros', 25500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (51, 'inversiones', 'Activos financieros', 26000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (52, 'ahorro', 'Activos financieros', 26500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (53, 'plan de jubilación', 'Activos financieros', 27000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (54, 'inversiones', 'Activos financieros', 27500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (55, 'ahorro', 'Activos financieros', 28000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (56, 'plan de jubilación', 'Activos financieros', 28500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (57, 'inversiones', 'Activos financieros', 29000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (58, 'ahorro', 'Activos financieros', 29500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (59, 'plan de jubilación', 'Activos financieros', 30000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (60, 'inversiones', 'Activos financieros', 30500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (61, 'ahorro', 'Activos financieros', 31000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (62, 'plan de jubilación', 'Activos financieros', 31500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (63, 'inversiones', 'Activos financieros', 32000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (64, 'ahorro', 'Activos financieros', 32500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (65, 'plan de jubilación', 'Activos financieros', 33000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (66, 'inversiones', 'Activos financieros', 33500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (67, 'ahorro', 'Activos financieros', 34000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (68, 'plan de jubilación', 'Activos financieros', 34500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (69, 'inversiones', 'Activos financieros', 35000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (70, 'ahorro', 'Activos financieros', 35500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (71, 'plan de jubilación', 'Activos financieros', 36000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (72, 'inversiones', 'Activos financieros', 36500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (73, 'ahorro', 'Activos financieros', 37000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (74, 'plan de jubilación', 'Activos financieros', 37500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (75, 'inversiones', 'Activos financieros', 38000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (76, 'ahorro', 'Activos financieros', 38500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (77, 'plan de jubilación', 'Activos financieros', 39000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (78, 'inversiones', 'Activos financieros', 39500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (79, 'ahorro', 'Activos financieros', 40000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (80, 'plan de jubilación', 'Activos financieros', 40500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (81, 'inversiones', 'Activos financieros', 41000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (82, 'ahorro', 'Activos financieros', 41500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (83, 'plan de jubilación', 'Activos financieros', 42000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (84, 'inversiones', 'Activos financieros', 42500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (85, 'ahorro', 'Activos financieros', 43000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (86, 'plan de jubilación', 'Activos financieros', 43500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (87, 'inversiones', 'Activos financieros', 44000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (88, 'ahorro', 'Activos financieros', 44500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (89, 'plan de jubilación', 'Activos financieros', 45000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (90, 'inversiones', 'Activos financieros', 45500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (91, 'ahorro', 'Activos financieros', 46000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (92, 'plan de jubilación', 'Activos financieros', 46500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (93, 'inversiones', 'Activos financieros', 47000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (94, 'ahorro', 'Activos financieros', 47500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (95, 'plan de jubilación', 'Activos financieros', 48000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (96, 'inversiones', 'Activos financieros', 48500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (97, 'ahorro', 'Activos financieros', 49000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (98, 'plan de jubilación', 'Activos financieros', 49500);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (99, 'inversiones', 'Activos financieros', 50000);
        

        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES (100, 'ahorro', 'Activos financieros', 50500);
        


    IF OBJECT_ID('monedas_digitales', 'U') IS NULL
    CREATE TABLE monedas_digitales (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(100),
        simbolo NVARCHAR(10),
        valor DECIMAL(18,4)
    );
    

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 1000.6394);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 1050.025);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 1100.275);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 1150.2232);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 1200.7365);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 1250.6767);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 1300.8922);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 1350.0869);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 1400.4219);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 1450.0298);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 1500.2186);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 1550.5054);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 1600.0265);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 1650.1988);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 1700.6499);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 1750.5449);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 1800.2204);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 1850.5893);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 1900.8094);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 1950.0065);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 2000.8058);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 2050.6981);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 2100.3403);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 2150.1555);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 2200.9572);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 2250.3366);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 2300.0927);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 2350.0967);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 2400.8475);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 2450.6037);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 2500.8071);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 2550.7297);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 2600.5362);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 2650.9731);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 2700.3785);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 2750.552);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 2800.8294);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 2850.6185);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 2900.8617);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 2950.5774);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 3000.7046);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 3050.0458);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 3100.2279);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 3150.2894);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 3200.0798);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 3250.2328);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 3300.101);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 3350.278);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 3400.6357);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 3450.3648);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 3500.3702);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 3550.2095);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 3600.267);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 3650.9367);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 3700.648);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 3750.6091);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 3800.1711);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 3850.7291);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 3900.1634);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 3950.3795);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 4000.9895);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 4050.64);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 4100.5569);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 4150.6846);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 4200.8429);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 4250.776);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 4300.229);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 4350.0321);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 4400.3155);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 4450.2677);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 4500.211);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 4550.9429);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 4600.8764);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 4650.3147);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 4700.6554);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 4750.3956);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 4800.9145);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 4850.4589);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 4900.2649);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 4950.2466);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 5000.5614);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 5050.2627);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 5100.5846);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 5150.8978);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 5200.3994);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 5250.2193);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 5300.9975);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 5350.5095);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 5400.0909);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 5450.0471);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 5500.1096);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 5550.6274);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 5600.7921);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 5650.4222);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 5700.0635);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Bitcoin', 'BTC', 5750.3816);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ethereum', 'ETH', 5800.9961);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Litecoin', 'LTC', 5850.5291);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Ripple', 'XRP', 5900.9711);
        

        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('Cardano', 'ADA', 5950.8608);
        