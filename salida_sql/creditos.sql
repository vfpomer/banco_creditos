
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
        