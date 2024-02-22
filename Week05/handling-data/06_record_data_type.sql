-- Record Data Type
DECLARE
    TYPE type_basket IS RECORD (
        basket bb_basket.idBasket%TYPE,
        created bb_basket.dtcreated%TYPE,
        qty bb_basket.quantity%TYPE,
        sub bb_basket.subtotal%TYPE
    );
    rec_basket     type_basket;
    lv_days_num    NUMBER(3);
    lv_shopper_num NUMBER(3) := 25;
BEGIN
    SELECT
        idBasket,
        dtcreated,
        quantity,
        subtotal INTO rec_basket
    FROM
        bb_basket
    WHERE
        idShopper = lv_shopper_num
        AND orderplaced = 0;
    lv_days_num := TO_DATE('02/28/12', 'mm/dd/yy') - rec_basket.created;
    DBMS_OUTPUT.PUT_LINE( rec_basket.basket
                          || ' | '
                          || rec_basket.created
                          || ' * '
                          || rec_basket.qty
                          || ' '
                          || rec_basket.sub
                          || ' '
                          || lv_days_num );
END;