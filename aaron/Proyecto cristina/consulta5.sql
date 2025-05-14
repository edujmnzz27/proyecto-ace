SELECT
  ( 
    SELECT COUNT(*) FROM reserva
    WHERE gama = 'F1'
      AND coche IS NULL
      AND f_devolucion IS NULL
      AND NOT (f_inicio = '2025-06-01' AND f_fin = '2025-06-07')
  )
  +
  (
    SELECT COUNT(*) FROM reserva
    WHERE gama = 'F1'
      AND coche IS NULL
      AND f_devolucion IS NULL
      AND (f_inicio = '2025-06-01' AND f_fin = '2025-06-07')
  ) AS total_ocupacion;
