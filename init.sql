create table stations
(
    id         integer      not null
        constraint stations_pk
            primary key,
    station_id integer      not null,
    available  varchar(255) not null,
    latitude   numeric      not null,
    longitude  numeric      not null
);

alter table stations
    owner to admin;

create table charging_stations_history
(
    id          integer   not null
        constraint charging_stations_history_pk
            primary key,
    station_id  integer   not null,
    customer_id integer   not null,
    kwh         integer,
    datetime    timestamp not null
);

alter table charging_stations_history
    owner to admin;

INSERT INTO stations VALUES (1,1,'true',48.205113,16.383420);
INSERT INTO stations VALUES (2,2,'true',48.238836,16.379323);
INSERT INTO stations VALUES (3,3,'true',48.196068,16.337239);

INSERT INTO charging_stations_history VALUES (1,1,5432,54012,'2021-11-25 14:32:56');
INSERT INTO charging_stations_history VALUES (2,1,2344,46850,'2021-11-28 08:14:12');
INSERT INTO charging_stations_history VALUES (3,1,5413,55445,'2021-11-29 19:42:41');
INSERT INTO charging_stations_history VALUES (4,2,5432,11111,'2022-06-22 19:28:51');