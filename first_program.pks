DECLARE
	VNUMBER NUMBER(4);
	letters CHAR(10);
	VSTRING VARCHAR2(10);
	VDATE DATE;
	VBOOL BOOLEAN;
BEGIN
	VNUMBER:=100;
	letters:='abcde';
	DBMS_OUTPUT.PUT_LINE(letters);
	if VBOOL = TRUE THEN
		DBMS_OUtPUT.PUT_LINE('True');
	else
		DBMS_OUTPUT.PUT_LINE('False');
	END IF;
END;
/
