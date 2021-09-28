DECLARE
	VNUMBER NUMBER(4) DEFAULT 1000; --We can declare variables using Default only in the Declare section
	letters CONSTANT CHAR(10) := 'Hello';
--Once we declare a variable as constant, we cannot change it again.
	VSTRING VARCHAR2(10);
	VDATE DATE;
	VBOOL BOOLEAN := NULL;
--Can boolean dtatype accept null value? Yes
BEGIN
	--VNUMBER:=100;
	--letters:='abcde';
	DBMS_OUTPUT.PUT_LINE(letters);
	if VBOOL = TRUE THEN
		DBMS_OUtPUT.PUT_LINE('True');
	else
		DBMS_OUTPUT.PUT_LINE('False');
	END IF;
END;
/
