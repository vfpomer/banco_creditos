
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
        