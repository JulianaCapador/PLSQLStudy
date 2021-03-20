--Cursor using a record
SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE 
reservas RESERVA%ROWTYPE;

CURSOR c_Reserva IS 
	SELECT * FROM RESERVA
	WHERE RESERVA.V_TOTAL <= 50000;

BEGIN
	OPEN c_Reserva;
	LOOP 
		FETCH c_Reserva INTO reservas;
		DBMS_OUTPUT.PUT_LINE(reservas.k_reserva || reservas.v_total);
		EXIT WHEN c_Reserva%NOTFOUND;
	END LOOP;
	CLOSE c_Reserva;
END;
/