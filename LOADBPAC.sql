/* script name: LOADBPAC.SQL                             */
/* purpose:     Load Oracle tables for Baruch Performing 
                Arts Center (BPAC) productions team      */
/* date:        20 Oct 2014                              */
/* owner:       Fangzhou Cheng                           */


/* make sure tables are empty before adding records      */

delete from FOH_TASK;
delete from STAFF;
delete from PRODUCTIONS_TASK;
delete from EVENT;
delete from TECH_REQUIREMENT;
delete from THEATRE;
delete from TIME_FRAME;
delete from CLIENT;
delete from PRODUCTION_COMPANY;
delete from SCHOOL;
delete from COPRODUCTION;


/* load all tables for testing purpose                    */

insert into THEATRE values ( 1, 'Engelman Recital Hall','55 Lexington Ave., NYC');
insert into THEATRE values ( 2, 'Mason Hall','17 Lexington Ave. at 23rd St, NYC');
insert into THEATRE values ( 3, 'Nagelberg Theater','55 Lexington Ave, NYC');
insert into THEATRE values ( 4, 'Bernie West Theater','17 Lexington Ave @ 23rd St., NYC');

insert into STAFF values ( 1, 'John','Malatesta','Admin');
insert into STAFF values ( 2, 'Ariadne','Condos','Admin');
insert into STAFF values ( 3, 'Robert','McGinnis','Productions');
insert into STAFF values ( 4, 'Rachel','Gilmore','Productions');
insert into STAFF values ( 5, 'Geoffrey','Barnes','Productions');
insert into STAFF values ( 6, 'Tsubasa','Kamei','Productions');
insert into STAFF values ( 7, 'Paul','Riznyk','Productions');
insert into STAFF values ( 8, 'Brian','Sierra','Productions');
insert into STAFF values ( 9, 'Justin','Chick','Productions');
insert into STAFF values ( 10, 'Robert','Bronstein','FOH');
insert into STAFF values ( 11, 'Justin','Chick','FOH');
insert into STAFF values ( 12, 'Fama','Gueye','Admin');
insert into STAFF values ( 13, 'Mecca','Meyers','Admin');
insert into STAFF values ( 14, 'Brian','Sierra','Productions');
insert into STAFF values ( 15, 'Joan','Weinberger','Admin');
insert into STAFF values ( 16, 'Jeffrey','Wigton','Boxoffice');
insert into STAFF values ( 17, 'Sana','Shaheed','Boxoffice');
insert into STAFF values ( 18, 'Liz','Skollar','Boxoffice');

insert into CLIENT values ( 1, 'Coproduction');
insert into CLIENT values ( 2, 'Production Company');
insert into CLIENT values ( 3, 'Coproduction');
insert into CLIENT values ( 4, 'Production Company');
insert into CLIENT values ( 5, 'Production Company');
insert into CLIENT values ( 6, 'School');
insert into CLIENT values ( 7, 'Coproduction');
insert into CLIENT values ( 8, 'School');

insert into EVENT values ( 1, 1, 3, 'Play of the Western World', 'All recorded music; No Video Tape', 'General Seating; 1 House Manager plus 3 Ushars for all event with audience; 15 Minute Intermission', 'Ticket Sales through our box office online; Tickets Sales through our box office in personal during open hours; Phone Sales through Ovation Tix', 'Listing in our Weekly Eblast; BPAC flyering (We do not provide fliers)','Reception: TBD', to_timestamp('25-JUL-14','DD-MON-RR HH:MI AM'), to_timestamp('19-SEP-14','DD-MON-RR HH:MI AM'), to_timestamp('03-OCT-14','DD-MON-RR HH:MI AM'), to_timestamp('10-OCT-14','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 2, 1, 3, 'Karen Finley: WRITTEN IN SAND', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 3, 3, 4, 'All About Amy/ Barrio Boy/ Aban/ Khorshid', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 4, 7, 3, 'Playboy of the Western World', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 5, 6, 1, '6th Annual Baruch College Holiday Concert: “A Not So Silent Night”', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 6, 1, 3, 'GRIND: THE MOVIE', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 7, 2, 3, 'Murakami Music: Stories of Loss and Nostalgia', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 8, 4, 3, 'A Wake or a Wedding', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 9, 5, 1, 'MAC presents They Write The Songs', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));
insert into EVENT values ( 10, 8, 1, 'Journey to Planet Earth: “Extreme Realities”', '', '', '', '','', to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'), to_timestamp('','DD-MON-RR HH:MI AM'));

insert into TIME_FRAME values (to_timestamp('21-OCT-14 08.00 PM','DD-MON-RR HH:MI AM'), to_timestamp('21-OCT-14 09.30 PM','DD-MON-RR HH:MI AM'), 3, 2);
insert into TIME_FRAME values (to_timestamp('24-OCT-14 07.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('21-OCT-14 09.00 PM','DD-MON-RR HH.MI AM'), 3, 1);
insert into TIME_FRAME values (to_timestamp('22-OCT-14 07.30 PM','DD-MON-RR HH.MI AM'), to_timestamp('22-OCT-14 09.30 PM','DD-MON-RR HH.MI AM'), 4, 3);
insert into TIME_FRAME values (to_timestamp('22-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('22-OCT-14 10.00 PM','DD-MON-RR HH.MI AM'), 3, 4);
insert into TIME_FRAME values (to_timestamp('23-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('23-OCT-14 10.00 PM','DD-MON-RR HH.MI AM'), 3, 4);
insert into TIME_FRAME values (to_timestamp('16-DEC-14 07.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-DEC-14 08.00 PM','DD-MON-RR HH.MI AM'), 1, 5);
insert into TIME_FRAME values (to_timestamp('27-OCT-14 07.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('23-OCT-14 9.00 PM','DD-MON-RR HH.MI AM'), 3, 6);
insert into TIME_FRAME values (to_timestamp('01-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('01-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'), 3, 7);
insert into TIME_FRAME values (to_timestamp('13-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('13-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'), 3, 8);
insert into TIME_FRAME values (to_timestamp('14-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('14-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'), 3, 8);
insert into TIME_FRAME values (to_timestamp('15-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('15-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'), 3, 8);
insert into TIME_FRAME values (to_timestamp('16-NOV-14 03.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-NOV-14 3.00 PM','DD-MON-RR HH.MI AM'), 3, 8);
insert into TIME_FRAME values (to_timestamp('16-NOV-14 04.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-NOV-14 6.00 PM','DD-MON-RR HH.MI AM'), 1, 9);
insert into TIME_FRAME values (to_timestamp('02-DEC-14 06.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('02-DEC-14 9.00 PM','DD-MON-RR HH.MI AM'), 1, 10);

insert into FOH_TASK values ( 10, 1, to_timestamp('24-OCT-14 07.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('21-OCT-14 09.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 10, 2, to_timestamp('21-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('21-OCT-14 09.30 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 11, 3, to_timestamp('22-OCT-14 07.30 PM','DD-MON-RR HH.MI AM'), to_timestamp('22-OCT-14 09.30 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 10, 4, to_timestamp('22-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('22-OCT-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 11, 4, to_timestamp('23-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('23-OCT-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 10, 5, to_timestamp('16-DEC-14 07.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-DEC-14 08.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 11, 6, to_timestamp('27-OCT-14 07.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('23-OCT-14 9.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 10, 7, to_timestamp('01-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('01-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 10, 8, to_timestamp('13-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('13-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 11, 8, to_timestamp('14-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('14-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 10, 8, to_timestamp('15-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('15-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 11, 8, to_timestamp('16-NOV-14 03.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-NOV-16 3.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 10, 9, to_timestamp('16-NOV-14 04.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-NOV-14 6.00 PM','DD-MON-RR HH.MI AM'));
insert into FOH_TASK values ( 11, 10, to_timestamp('02-DEC-14 06.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('02-DEC-14 9.00 PM','DD-MON-RR HH.MI AM'));

insert into TECH_REQUIREMENT values ( '1', '', '', '1', '1', '1', '1', '');
insert into TECH_REQUIREMENT values ( '2', '1', '1', '2', '', '1', '1', '');
insert into TECH_REQUIREMENT values ( '3', '1', '1', '1', '1', '', '', '');
insert into TECH_REQUIREMENT values ( '4', '1', '1', '', '5', '1', '', '');
insert into TECH_REQUIREMENT values ( '5', '1', '1', '2', '', '', '', '');
insert into TECH_REQUIREMENT values ( '6', '', '', '1', '2', '', '', '');
insert into TECH_REQUIREMENT values ( '7', '', '', '1', '2', '1', '1', '');
insert into TECH_REQUIREMENT values ( '8', '1', '1', '3', '1', '', '', '');
insert into TECH_REQUIREMENT values ( '9', '1', '1', '', '2', '', '', '');
insert into TECH_REQUIREMENT values ( '10', '', '', '2', '', '', '1', '');

insert into PRODUCTIONS_TASK values ( 9, 1, to_timestamp('24-OCT-14 07.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('21-OCT-14 09.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 5, 1, to_timestamp('24-OCT-14 07.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('21-OCT-14 09.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 4, 2, to_timestamp('21-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('21-OCT-14 09.30 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 7, 2, to_timestamp('21-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('21-OCT-14 09.30 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 7, 3, to_timestamp('22-OCT-14 07.30 PM','DD-MON-RR HH.MI AM'), to_timestamp('22-OCT-14 09.30 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 8, 4, to_timestamp('22-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('22-OCT-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 6, 4, to_timestamp('22-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('22-OCT-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 6, 4, to_timestamp('23-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('23-OCT-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 10, 4, to_timestamp('23-OCT-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('23-OCT-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 14, 8, to_timestamp('13-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('13-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 11, 8, to_timestamp('14-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('14-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 11, 8, to_timestamp('15-NOV-14 08.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('15-NOV-14 10.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 8, 8, to_timestamp('16-NOV-14 03.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-NOV-16 3.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 10, 9, to_timestamp('16-NOV-14 04.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-NOV-14 6.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 9, 9, to_timestamp('16-NOV-14 04.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-NOV-14 6.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 5, 9, to_timestamp('16-NOV-14 04.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('16-NOV-14 6.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 13, 10, to_timestamp('02-DEC-14 06.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('02-DEC-14 9.00 PM','DD-MON-RR HH.MI AM'));
insert into PRODUCTIONS_TASK values ( 4, 10, to_timestamp('02-DEC-14 06.00 PM','DD-MON-RR HH.MI AM'), to_timestamp('02-DEC-14 9.00 PM','DD-MON-RR HH.MI AM'));

insert into PRODUCTION_COMPANY values ( 2, 'Eunbikimmusic','http://www.eunbikimmusic.com/; the cell: 338W 23rd st New York, NY 10011; email: thecelltheatre@gmail.org; Tel / Fax : (646) 861-2253');
insert into PRODUCTION_COMPANY values ( 4, 'Encompass New Opera Theatre','Nancy Rhodes: Artistic Director; Tel: (718) 398-4675; Fax: (718) 398-4684; Email: encompassopera@yahoo.com');
insert into PRODUCTION_COMPANY values ( 5, 'MACnyc','www.MACnyc.com; 212-465-2662; info@macnyc.com; Manhattan Association of Cabarets and Clubs');

insert into SCHOOL values ( 6, 'BPAC','Robert Mcginnis; Tel: 646.312.4086; email: robert.mcginnis@baruch.cuny.edu');
insert into SCHOOL values ( 8, 'Baruch College Task Force on Sustainability','646-312-1000; Sustainability@baruch.cuny.edu; http://blogs.baruch.cuny.edu/sustainability/');

insert into COPRODUCTION values ( 1, 3);
insert into COPRODUCTION values ( 3, 4);
insert into COPRODUCTION values ( 7, 7);

/* save all changes to table rows                                  */
COMMIT;


/* run basic queries over every table to verify data               */

SELECT * FROM FOH_TASK;
SELECT * FROM STAFF;
SELECT * FROM PRODUCTIONS_TASK;
SELECT * FROM EVENT;
SELECT * FROM TECH_REQUIREMENT;
SELECT * FROM THEATRE;
SELECT * FROM TIME_FRAME;
SELECT * FROM CLIENT;
SELECT * FROM PRODUCTION_COMPANY;
SELECT * FROM SCHOOL;
SELECT * FROM COPRODUCTION;

