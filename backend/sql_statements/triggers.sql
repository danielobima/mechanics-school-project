CREATE TRIGGER reduce_stock_on_job_part_use
AFTER INSERT ON job_parts
FOR EACH ROW
BEGIN
  UPDATE spare_parts
  SET quantity_in_stock = quantity_in_stock - NEW.quantity_used
  WHERE part_id = NEW.part_id;
END;
