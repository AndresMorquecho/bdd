select * from transacciones

-- Seleccionar todas las transacciones realizadas con un tipo D
select * from transacciones where tipo = 'D'

-- Seleccionar las transacciones con montos entre 200 y 2000
select * from transacciones where monto between money(200) and money(2000)

-- Seleccionar el codigo, monto, tipo y fecha de las transacciones que tengas una fecha diferente de null
SELECT codigo, monto, tipo, fecha FROM transacciones WHERE fecha IS NOT NULL;
