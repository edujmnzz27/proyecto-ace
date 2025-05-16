CREATE OR REPLACE FUNCTION comprobar_disponibilidad()
RETURNS TRIGGER AS $$
DECLARE
    s INT := 0;
    total_reservas INT := 0;
    solap INT := 0;
    igual INT := 0;
BEGIN
    -- Obtener stock
    SELECT stock INTO s FROM gama WHERE codgama = NEW.gama;
    RAISE NOTICE 'STOCK Gama %', s;

    -- Total de reservas
    SELECT COUNT(*) INTO total_reservas FROM reserva WHERE gama = NEW.gama;
    RAISE NOTICE 'NUM.TOTAL DE RESERVAS %', total_reservas;

    -- Reservas solapadas
    SELECT COUNT(*) INTO solap
    FROM reserva
    WHERE gama = NEW.gama
        AND coche IS NULL
        AND f_devolucion IS NULL
        AND NOT (NEW.f_inicio = f_inicio AND NEW.f_fin = f_fin);
    RAISE NOTICE 'Solapan: %', solap;

    -- Reservas iguales
    SELECT COUNT(*) INTO igual
    FROM reserva
    WHERE gama = NEW.gama
        AND coche IS NULL
        AND f_devolucion IS NULL
        AND (NEW.f_inicio = f_inicio AND NEW.f_fin = f_fin);
    RAISE NOTICE 'Iguales: %', igual;
    RAISE NOTICE 'Igual + Solap: %', igual + solap;

    -- Verificar disponibilidad
    IF (s <= (igual + solap)) OR ((igual + solap) = 0) THEN
        RAISE EXCEPTION 'Lo sentimos, no hay disponibilidad';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger
CREATE TRIGGER tr_comprobar_disponibilidad
BEFORE INSERT ON reserva
FOR EACH ROW EXECUTE FUNCTION comprobar_disponibilidad();
