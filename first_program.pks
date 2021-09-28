DECLARE
	VNUMBER NUMBER(4) DEFAULT 1000; --We can declare variables using Default only in the Declare section
	letters CONSTANT CHAR(10) := 'Hello';
--Once we declare a variable as constant, we cannot change it again.
	VSTRING VARCHAR2(10);
	VDATE DATE;
	VBOOL BOOLEAN := NULL;
	VNAME VARCHAR2(10) NOT NULL DEFAULT 'Hari'; --Assigning default value to NOT NULL variable
	-- Declaring variable as NOT NULL
	-- When declaring a variable by default it is set to Null.
	-- Thus we need to initialize a NOT NULL variable before using it.
--Can boolean datatype accept null value? Yes
BEGIN
	--VNUMBER:=100;
	--letters:='abcde';
	DBMS_OUTPUT.PUT_LINE(letters);
	if VBOOL = TRUE THEN
		DBMS_OUtPUT.PUT_LINE('True');
	else
		DBMS_OUTPUT.PUT_LINE('False');
	END IF;
	--Accessing NOT NULL variable
	DBMS_OUTPUT.PUT_LINE(VNAME);
	VNAME := 'Jyoti'; --Changing the variable
	DBMS_OUTPUT.PUT_LINE(VNAME);
END;
/
