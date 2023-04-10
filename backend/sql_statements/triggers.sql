CREATE TRIGGER reduce_stock_on_job_part_use
ON job_parts
AFTER INSERT
AS
BEGIN
  UPDATE spare_parts
  SET quantity_in_stock = quantity_in_stock - i.quantity_used
  FROM inserted i
  WHERE spare_parts.part_id = i.part_id;
END;
