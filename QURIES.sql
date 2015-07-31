# 1. Pricing Offer Overview (for one show)
SELECT E.NAME AS EVENT, T.NAME AS THEATRE, E.TECH_NOTE AS TECH, E.Final_Payment, TF.START_TIME, TF.END_TIME
FROM THEATRE T, EVENT E, TIME_FRAME TF
WHERE E.THEATRE_ID = T.ID
AND TF.THEATRE_ID = T.ID
AND TF.EVENT_ID = E.ID
AND E.ID = 1;

# 2. Technical Staffing Schedule (for one show)
SELECT E.NAME, T.PROJECTOR AS PROJECTOR_NO, T.SCREEN AS SCREEN_NO, T.MICROPHONE_W AS WIRE_MICROPHONE_NO,
T.MICROPHONE_WLESS AS WIRELESS_MICROPHONE_NO, T.LIGHTING AS LIGHTING_NO, T.COMMUNICATION AS COMMUNICATION_NO
FROM EVENT E, TECH_REQUIREMENT T
WHERE E.ID = T.EVENT_ID
AND E.ID = 2;

# 3. Technical Support Details (for one show)
SELECT E.NAME AS EVENT, S.FIRST_NAME, S.LAST_NAME, P.START_TIME, P.END_TIME
FROM EVENT E, STAFF S, PRODUCTIONS_TASK P
WHERE E.ID = P.EVENT_ID
AND S.ID = P.STAFF_ID
AND E.ID = 4
ORDER BY P.START_TIME;

# 4. External Pass Information (for Baruch Security Office)
SELECT P.NAME AS COMPANY, T.NAME AS THEATRE, TF.START_TIME, TF.END_TIME
FROM PRODUCTION_COMPANY P, TIME_FRAME TF, EVENT E, THEATRE T
WHERE P.ID = E.CLIENT_ID
AND T.ID = E.THEATRE_ID
AND TF.EVENT_ID = E.ID;

# 5. Event Overview (by month)
SELECT E.NAME AS EVENT, T.NAME AS THEATRE, TO_CHAR(TF.START_TIME,'MONTH') AS MONTH
FROM TIME_FRAME TF, EVENT E, THEATRE T
WHERE E.THEATRE_ID = T.ID
AND E.ID = TF.EVENT_ID
ORDER BY MONTH DESC, EVENT;

# 6. External Client Information
SELECT P.ID AS CLIENT_ID, P.NAME AS PRODUCTION_COMPANY, E.NAME AS EVENT_NAME, P.CONTACT
FROM PRODUCTION_COMPANY P, EVENT E
WHERE E.CLIENT_ID = P.ID;