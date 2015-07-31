/* script name: CREATEBPAC.SQL                        	              */
/* purpose:     Build Oracle tables for Baruch Performing Arts Center (BPAC)    */
/* date:        20 Oct 2014                                                     */
/* owner:       Fangzhou Cheng                                                  */


/* Drop all tables before creating tables                */

DROP TABLE FOH_TASK               CASCADE CONSTRAINTS ;
DROP TABLE STAFF                  CASCADE CONSTRAINTS ;
DROP TABLE PRODUCTIONS_TASK       CASCADE CONSTRAINTS ;
DROP TABLE EVENT                  CASCADE CONSTRAINTS ;
DROP TABLE TECH_REQUIREMENT       CASCADE CONSTRAINTS ;
DROP TABLE THEATRE                CASCADE CONSTRAINTS ;
DROP TABLE TIME_FRAME             CASCADE CONSTRAINTS ;
DROP TABLE CLIENT 	            CASCADE CONSTRAINTS ;
DROP TABLE PRODUCTION_COMPANY     CASCADE CONSTRAINTS ;
DROP TABLE SCHOOL                 CASCADE CONSTRAINTS ;


/* Create all BPAC Database Tables (11)              */

Create table THEATRE(
ID Number(4) Not Null,
Name Varchar2(25) Not Null,
Location Varchar2(100) Not Null,
Constraint theatre_PK PRIMARY KEY (ID)
);

Create table STAFF(
ID Number Not Null,
First_Name Varchar2(15) Not Null,
Last_Name Varchar2(15) Not Null,
Type Varchar2(20) ,
Constraint staff_pk PRIMARY KEY (ID)
);

Create table CLIENT(
ID Number(7) Not Null,
Type Varchar2(20) ,
Constraint client_pk PRIMARY KEY (ID)
);

Create table EVENT(
ID Number(10) Not Null,
Client_ID Number(7) Not Null,
Theatre_ID Number(4) Not Null,
Name Varchar2(100) Not Null,
Tech_Note Varchar2(300) ,
FOH_Note Varchar2(300) ,
Box_Office_Note Varchar2(300) ,
Marketing_Note Varchar2(300) ,
Lobbies_Note Varchar2(300) ,
Production_Meeting Date ,
Tech_Checkin Date ,
House_Checkin Date ,
Final_Payment Date ,
Constraint event_pk PRIMARY KEY (ID),
Constraint event_client_fk FOREIGN KEY (Client_ID)
                      REFERENCES CLIENT(ID),
Constraint event_theatre_fk FOREIGN KEY (Theatre_ID)
                      REFERENCES THEATRE(ID)
);

Create table TIME_FRAME(
Start_Time Timestamp Not Null,
End_Time Timestamp Not Null,
Theatre_ID Number(4) Not Null,
Event_ID Varchar2(10) Not Null,
Constraint time_frame PRIMARY KEY (Start_Time, End_Time, Theatre_ID),
Constraint time_frame_theatre_fk FOREIGN KEY (THEATRE_ID)
                      REFERENCES THEATRE(ID)
);

Create table FOH_TASK(
Staff_ID Number(7) Not Null,
Event_ID Number(10) Not Null,
Start_Time Timestamp Not Null,
End_Time Timestamp Not Null,
Constraint foh_task_pk PRIMARY KEY (Start_Time, End_Time, Event_ID, Staff_ID),
Constraint foh_task_staff_fk FOREIGN KEY (Staff_ID)
                      REFERENCES STAFF(ID),
Constraint foh_task_event_fk FOREIGN KEY (Event_ID)
                      REFERENCES EVENT(ID)
);

Create table TECH_REQUIREMENT(
Event_ID Number(10) Not Null,
Projector Varchar2(100) ,
Screen Varchar2(100) ,
Microphone_W Varchar2(100) ,
Microphone_Wless Varchar2(100) ,
Lighting Varchar2(100) ,
Communication Varchar2(100) ,
Note Varchar2(300) ,
Constraint tech_pk PRIMARY KEY (EVENT_ID),
Constraint tech_Fk FOREIGN KEY (EVENT_ID)
                      REFERENCES EVENT(ID)
);

Create table PRODUCTIONS_TASK(
Staff_ID Number(7) Not Null,
Event_ID Number(10) Not Null,
Start_Time Timestamp ,
End_Time Timestamp ,
Constraint productions_task_pk PRIMARY KEY (Start_Time, End_Time, Staff_ID, Event_ID),
Constraint productions_task_staff_fk FOREIGN KEY (Staff_ID)
                      REFERENCES STAFF(ID),
Constraint productions_task_event_fk FOREIGN KEY (Event_ID)
                      REFERENCES TECH_REQUIREMENT(Event_ID)
);

Create table PRODUCTION_COMPANY(
ID Number(7) Not Null,
Name Varchar2(50) Not Null,
Contact Varchar2(500) Not Null,
Constraint production_company_pk PRIMARY KEY (ID),
Constraint production_company_fk FOREIGN KEY (ID)
                      REFERENCES CLIENT(ID)
);

Create table SCHOOL(
ID Number(7) Not Null,
Department Varchar2(100) Not Null,
Contact Varchar2(500) Not Null,
Constraint school_pk PRIMARY KEY (ID),
Constraint school_fk FOREIGN KEY (ID)
                      REFERENCES CLIENT(ID)
);

Create table COPRODUCTION(
ID Number(7) Not Null,
Project_Manager_ID Number(7) Not Null,
Constraint coproduction_pk PRIMARY KEY (ID),
Constraint coproduction_fk FOREIGN KEY (ID)
                      REFERENCES CLIENT(ID)
);


/* Run Oracle specific command to display table structure in DB    */

describe FOH_TASK;
describe STAFF;
describe PRODUCTIONS_TASK;
describe EVENT;
describe TECH_REQUIREMENTS;
describe THEATRE;
describe TIME_FRAME;
describe CLIENT;
describe PRODUCTION_COMPANY;
describe SCHOOL;
describe COPRODUCTION;


/* show constraints for each table */

COMMIT;