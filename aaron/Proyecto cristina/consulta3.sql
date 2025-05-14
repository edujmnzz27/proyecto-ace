SELECT COUNT(codreserva)
FROM reserva
WHERE gama = 'F1'
  AND coche IS NULL
  AND f_devolucion IS NULL
  AND NOT (f_inicio = '2025-06-01' AND f_fin = '2025-06-07'); 
-- Cambia las fechas por las del nuevo intento de reserva
