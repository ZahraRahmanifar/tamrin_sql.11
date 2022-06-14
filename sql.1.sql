CREATE TRIGGER write_log_for_insert
ON logs
AFTER DELETE , UPDATE , INSERT
AS
DECLARE @id int
SELECT @id=id FROM logs
INSERT INTO users(id , time , operation) VALUES (@id,CURRENT_TIMESTAMP, 'update');