
    IF OBJECT_ID('empleos', 'U') IS NULL
    CREATE TABLE empleos (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT NOT NULL,
        nombre_empresa NVARCHAR(255),
        cargo NVARCHAR(255),
        salario FLOAT,
        antiguedad_anios INT,
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (1, 'Empresa 0', 'Puesto 0', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (2, 'Empresa 1', 'Puesto 1', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (3, 'Empresa 2', 'Puesto 2', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (4, 'Empresa 3', 'Puesto 3', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (5, 'Empresa 4', 'Puesto 4', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (6, 'Empresa 5', 'Puesto 5', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (7, 'Empresa 6', 'Puesto 6', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (8, 'Empresa 7', 'Puesto 7', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (9, 'Empresa 8', 'Puesto 8', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (10, 'Empresa 9', 'Puesto 9', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (11, 'Empresa 10', 'Puesto 10', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (12, 'Empresa 11', 'Puesto 11', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (13, 'Empresa 12', 'Puesto 12', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (14, 'Empresa 13', 'Puesto 13', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (15, 'Empresa 14', 'Puesto 14', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (16, 'Empresa 15', 'Puesto 15', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (17, 'Empresa 16', 'Puesto 16', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (18, 'Empresa 17', 'Puesto 17', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (19, 'Empresa 18', 'Puesto 18', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (20, 'Empresa 19', 'Puesto 19', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (21, 'Empresa 20', 'Puesto 20', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (22, 'Empresa 21', 'Puesto 21', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (23, 'Empresa 22', 'Puesto 22', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (24, 'Empresa 23', 'Puesto 23', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (25, 'Empresa 24', 'Puesto 24', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (26, 'Empresa 25', 'Puesto 25', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (27, 'Empresa 26', 'Puesto 26', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (28, 'Empresa 27', 'Puesto 27', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (29, 'Empresa 28', 'Puesto 28', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (30, 'Empresa 29', 'Puesto 29', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (31, 'Empresa 30', 'Puesto 30', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (32, 'Empresa 31', 'Puesto 31', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (33, 'Empresa 32', 'Puesto 32', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (34, 'Empresa 33', 'Puesto 33', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (35, 'Empresa 34', 'Puesto 34', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (36, 'Empresa 35', 'Puesto 35', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (37, 'Empresa 36', 'Puesto 36', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (38, 'Empresa 37', 'Puesto 37', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (39, 'Empresa 38', 'Puesto 38', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (40, 'Empresa 39', 'Puesto 39', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (41, 'Empresa 40', 'Puesto 40', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (42, 'Empresa 41', 'Puesto 41', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (43, 'Empresa 42', 'Puesto 42', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (44, 'Empresa 43', 'Puesto 43', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (45, 'Empresa 44', 'Puesto 44', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (46, 'Empresa 45', 'Puesto 45', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (47, 'Empresa 46', 'Puesto 46', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (48, 'Empresa 47', 'Puesto 47', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (49, 'Empresa 48', 'Puesto 48', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (50, 'Empresa 49', 'Puesto 49', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (51, 'Empresa 50', 'Puesto 50', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (52, 'Empresa 51', 'Puesto 51', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (53, 'Empresa 52', 'Puesto 52', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (54, 'Empresa 53', 'Puesto 53', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (55, 'Empresa 54', 'Puesto 54', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (56, 'Empresa 55', 'Puesto 55', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (57, 'Empresa 56', 'Puesto 56', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (58, 'Empresa 57', 'Puesto 57', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (59, 'Empresa 58', 'Puesto 58', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (60, 'Empresa 59', 'Puesto 59', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (61, 'Empresa 60', 'Puesto 60', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (62, 'Empresa 61', 'Puesto 61', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (63, 'Empresa 62', 'Puesto 62', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (64, 'Empresa 63', 'Puesto 63', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (65, 'Empresa 64', 'Puesto 64', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (66, 'Empresa 65', 'Puesto 65', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (67, 'Empresa 66', 'Puesto 66', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (68, 'Empresa 67', 'Puesto 67', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (69, 'Empresa 68', 'Puesto 68', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (70, 'Empresa 69', 'Puesto 69', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (71, 'Empresa 70', 'Puesto 70', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (72, 'Empresa 71', 'Puesto 71', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (73, 'Empresa 72', 'Puesto 72', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (74, 'Empresa 73', 'Puesto 73', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (75, 'Empresa 74', 'Puesto 74', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (76, 'Empresa 75', 'Puesto 75', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (77, 'Empresa 76', 'Puesto 76', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (78, 'Empresa 77', 'Puesto 77', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (79, 'Empresa 78', 'Puesto 78', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (80, 'Empresa 79', 'Puesto 79', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (81, 'Empresa 80', 'Puesto 80', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (82, 'Empresa 81', 'Puesto 81', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (83, 'Empresa 82', 'Puesto 82', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (84, 'Empresa 83', 'Puesto 83', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (85, 'Empresa 84', 'Puesto 84', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (86, 'Empresa 85', 'Puesto 85', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (87, 'Empresa 86', 'Puesto 86', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (88, 'Empresa 87', 'Puesto 87', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (89, 'Empresa 88', 'Puesto 88', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (90, 'Empresa 89', 'Puesto 89', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (91, 'Empresa 90', 'Puesto 90', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (92, 'Empresa 91', 'Puesto 91', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (93, 'Empresa 92', 'Puesto 92', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (94, 'Empresa 93', 'Puesto 93', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (95, 'Empresa 94', 'Puesto 94', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (96, 'Empresa 95', 'Puesto 95', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (97, 'Empresa 96', 'Puesto 96', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (98, 'Empresa 97', 'Puesto 97', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (99, 'Empresa 98', 'Puesto 98', 50000, 5);
        

        INSERT INTO empleos (usuario_id, nombre_empresa, cargo, salario, antiguedad_anios)
        VALUES (100, 'Empresa 99', 'Puesto 99', 50000, 5);
        