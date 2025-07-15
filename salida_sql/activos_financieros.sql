
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
        