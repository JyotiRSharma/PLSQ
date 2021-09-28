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

--How can I select data from a table within a PLSQL block.
--In order to select data from a table within PLSQL block we use the SELECT INTO Statement.
--Syntax
--SELECT <COL LIST> INTO  <VARIABLE LIST> FROM <TABLE NAME> WHERE <CONDITION>;
--RESTRICTIONS TO SELECT INTO
--It will SELECT ONLY 1 row
--Error if more than 1 row is returned by select statement
--error is no rows are selected.
--Question:-
--Write a PLSQL block to accept an EMPNO and display ename and salary of the emp.
	VEMPNO	 NUMBER(10);
	VNAME	 VARCHAR2(10);
	VSAL 	 NUMBER(7,2);
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
	
	--Acceptig value from the user
	VEMPNO := '&EMPNO';
	SELECT ENAME, SAL INTO VNAME, VSAL FROM EMP
	WHERE EMPNO = VEMPNO;
	DBMS_OUTPUT.PUT_LINE(VNAME);
	DBMS_OUTPUT.PUT_LINE(VSAL);
END;
/
