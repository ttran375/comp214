ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY';

SELECT
    *
FROM
    BB_PRODUCT;

DECLARE
    V_PRODUCT_ID         NUMBER := 1; -- Replace with the actual product ID
    V_INVENTORY_QUANTITY NUMBER;
BEGIN
    SELECT
        STOCK INTO V_INVENTORY_QUANTITY
    FROM
        BB_PRODUCT
    WHERE
        IDPRODUCT = V_PRODUCT_ID;
    DBMS_OUTPUT.PUT_LINE('Inventory Quantity: '
                         || V_INVENTORY_QUANTITY);
END;
/

DECLARE
    V_PRODUCT_ID         NUMBER := 1; -- Replace with the actual product ID
    V_INVENTORY_QUANTITY NUMBER;
BEGIN
    SELECT
        STOCK INTO V_INVENTORY_QUANTITY
    FROM
        BB_PRODUCT
    WHERE
        IDPRODUCT = V_PRODUCT_ID;
    DBMS_OUTPUT.PUT_LINE('Inventory Quantity: '
                         || V_INVENTORY_QUANTITY);
END;
/

DECLARE
    LV_ORD_DATE     DATE; -- Declare a date variable
    LV_LAST_TXT     VARCHAR2(25); -- Declare a string variable with a maximum length of 25
    LV_QTY_NUM      NUMBER(2); -- Declare a number variable with a maximum precision of 2
    LV_SHIPFLAG_BLN BOOLEAN; -- Declare a boolean variable
BEGIN
 ---- PL/SQL executable statements go here ----
    LV_ORD_DATE := SYSDATE; -- Assign the current date to the date variable
END;
/
