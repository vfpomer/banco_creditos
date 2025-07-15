
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
        