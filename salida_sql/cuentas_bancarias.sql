
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
        