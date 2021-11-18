CREATE TABLE "customers" (
  "customer_id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar(50)
);

CREATE TABLE "tickets" (
  "ticket_id" integer PRIMARY KEY,
  "movie_id" integer,
  "customer_id" integer,
  "date" timestamp,
  "time" timestamp,
  "seat_number" int
);

CREATE TABLE "concessions" (
  "concession_id" integer PRIMARY KEY,
  "customer_id" integer,
  "item_name" varchar,
  "item_cost" float,
  "item_amount" integer
);

CREATE TABLE "movies" (
  "movie_id" integer PRIMARY KEY,
  "name" varchar,
  "rating" varchar
);

ALTER TABLE "tickets" ADD FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

ALTER TABLE "tickets" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id");

ALTER TABLE "concessions" ADD FOREIGN KEY ("customer_id") REFERENCES "customers" ("customer_id");

INSERT INTO movies VALUES(1,'All About the Benjamins','R');
INSERT INTO movies VALUES(2,'Black Knight','PG-13');
INSERT INTO movies VALUES(3,'Catch Me if You Can','PG-13');
INSERT INTO movies VALUES(4,'Deez Nutz','R');
INSERT INTO movies VALUES(5,'Everyone Has to Get Got Sometimes','R');

INSERT INTO customers VALUES(1,'Derek','Hawkins','dhawkins@codingtemple.com');
INSERT INTO customers VALUES(2,'Lucas','Lang','lucastle@codingtemple.com');
INSERT INTO customers VALUES(3,'Russell','Anderson','randerson@codingtemple.com');
INSERT INTO customers VALUES(4,'David','Leon','dleon@codingtemple.com');
INSERT INTO customers VALUES(5,'Jay','Patel','jpatel@codingtemple.com');

insert into tickets values(1, 1, 1, '2021-11-17', '2021-11-17 03:00:00', 1);
insert into tickets values(2, 2, 2, '2021-11-18', '2021-11-18 03:01:00', 2);
insert into tickets values(3, 3, 3, '2021-11-19', '2021-11-19 03:01:01', 3);
insert into tickets values(4, 4, 4, '2021-11-20', '2021-11-20 04:00:00', 4);
insert into tickets values(5, 5, 5, '2021-11-21', '2021-11-21 04:01:00', 5);

insert into concessions values(1, 1, 'Popcorn', 8.99, 1);
insert into concessions values(2, 2, 'Drink', 5.99, 2);
insert into concessions values(3, 3, 'Candy', 4.99, 3);
insert into concessions values(4, 4, 'Icee', 6.99, 4);
insert into concessions values(5, 5, 'Water', 1.99, 5);