-- Selección del esquema
use GoodReads;

-- Trigger 
DELIMITER $$

CREATE TRIGGER TR_cambiar_estado_insert
BEFORE INSERT ON Lecturas
FOR EACH ROW
BEGIN
    IF NEW.estado = 'Leyendo' THEN
        SET NEW.estado = 'Leido';
    END IF;
END $$

CREATE TRIGGER cambiar_estado_update
BEFORE UPDATE ON Lecturas
FOR EACH ROW
BEGIN
    IF NEW.estado = 'Leyendo' THEN
        SET NEW.estado = 'Leido';
    END IF;
END $$



