select * from transacciones

delete from transacciones

create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),

	constraint banco_pk primary key(codigo_banco),
	constraint banco_transacciones_fk foreign key(codigo_transaccion)
	references transacciones(codigo)
)

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (1, '22001', 150.75, 'C', '2024-09-01', '08:30:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (2, '22002', 500.00, 'C', '2024-09-05', '09:00:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (3, '22003', 1200.50, 'C', '2024-09-10', '10:15:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (4, '09876', 300.00, 'D', '2024-09-12', '11:45:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (5, '54321', 750.25, 'C', '2024-09-15', '08:00:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (6, '12345', 100.50, 'D', '2024-09-20', '09:30:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (7, '67890', 2200.75, 'C', '2024-09-25', '10:50:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (8, '09846', 400.00, 'D', '2024-09-28', '11:15:00');

INSERT InTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (9, '54021', 950.50, 'C', '2024-09-30', '08:45:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (10, '12325', 150.00, 'D', '2024-09-30', '09:10:00');


-- insert banco
-- Inserciones en la tabla transacciones (ya están relacionadas)
-- Se usan estas transacciones para relacionarlas en la tabla banco

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (1, 1, 'Depósito inicial en cuenta 12345');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (2, 2, 'Retiro en cuenta 54321 por gastos personales');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (3, 3, 'Depósito de nómina en cuenta 67890');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (4, 1, 'Depósito de bono en cuenta 09876');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (5, 2, 'Transferencia a cuenta 54321 por pagos de servicios');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (6, 3, 'Depósito de ahorro en cuenta 12345');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (7, 1, 'Depósito especial en cuenta 22001');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (8, 3, 'Pago en cuenta 22002');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (9, 1, 'Depósito de inversión en cuenta 22003');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES (10, 2, 'Pago de factura en cuenta 22004');
