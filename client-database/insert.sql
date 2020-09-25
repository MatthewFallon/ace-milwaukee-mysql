use client_database;


--  FAMILY Entries
--  FAMILY_ID

insert into FAMILY values (1);
insert into FAMILY values (2);
insert into FAMILY values (3);
insert into FAMILY values (4);
insert into FAMILY values (5);
insert into FAMILY values (6);
insert into FAMILY values (7);
insert into FAMILY values (8);
insert into FAMILY values (9);
insert into FAMILY values (10);



--  CLIENT Entries
--  CLIENT_NAME | CLIENT_ADDRESS | PHONE_NUMBER | VISIT_LOCATION | FAMILY_ID 

insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 1
);
insert into CLIENT values (
    'Misho Lieve', '9583 Tarkiln Hill Rd., Alexandria, VA 22304', '2025550155', '9583 Tarkiln Hill Rd., Alexandria, VA 22304', 1
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 2
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 3
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 4
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 5
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 6
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 7
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 8
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 9
);
insert into CLIENT values (
    'Henrique Seo-Hyun', '9487 Glen Eagles St., New Bedford, MA 02740', '2025550187', '9487 Glen Eagles St., New Bedford, MA 02740', 10
);




--  CHILD Entries
--  CHILD_NAME | AGE | CHILD_LOCATION | FAMILY_ID

insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 1
);
insert into CHILD values (
    'Mala Gosta', 10, '968 Sunnyslope Dr., Dover, NH 03820', 1
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 2
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 3
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 4
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 5
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 6
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 7
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 8
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 9
);
insert into CHILD values (
    'Griogair Tisha', 8, '968 Sunnyslope Dr., Dover, NH 03820', 10
);




--  PARTICIPANT Entries
--  PARTICIPANT_NAME | IS_ALLOWED | FAMILY_ID


insert into PARTICIPANT values (
    'Cristi Bradford', true, 1
);
insert into PARTICIPANT values (
    'Malle Gretta', false, 1
);
insert into PARTICIPANT values (
    'Somsak Asya', true, 1
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 2
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 3
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 4
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 5
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 6
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 7
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 8
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 9
);
insert into PARTICIPANT values (
    'Cristi Bradford', true, 10
);
