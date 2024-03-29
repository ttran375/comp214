-- Using SQL Functions
DECLARE
  lv_first_date DATE := TO_DATE('20-OCT-2012', 'DD-MON-YYYY');
  lv_second_date DATE := TO_DATE('20-SEP-2010', 'DD-MON-YYYY');
  lv_months_num NUMBER(3);
BEGIN
  lv_months_num := MONTHS_BETWEEN(lv_first_date, lv_second_date);
  DBMS_OUTPUT.PUT_LINE(lv_months_num);
END;
