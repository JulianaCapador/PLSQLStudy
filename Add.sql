-- First Example: Add two numbers
SET ServerOutput ON;
SET VERIFY OFF;
declare
numberOne number(2) := 65;
numberTwo number(2) := 48;
resultado number(3);
begin
	resultado := numberOne + numberTwo;
	dbms_output.put_line(resultado);
exception
	when others then 
	dbms_output.put_line('Problema');
end;
/