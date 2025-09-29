

CREATE TABLE drivers (
  driver_id NUMBER PRIMARY KEY,
  name VARCHAR2(50),
  city VARCHAR2(50)
);

CREATE TABLE routes (
  route_id NUMBER PRIMARY KEY,
  route_name VARCHAR2(100)
);

CREATE TABLE deliveries (
  delivery_id NUMBER PRIMARY KEY,
  driver_id NUMBER REFERENCES drivers(driver_id),
  route_id NUMBER REFERENCES routes(route_id),
  delivery_date DATE,
  delivery_time_minutes NUMBER
);

INSERT INTO drivers VALUES (501, 'Jane Doe', 'Kigali');
INSERT INTO drivers VALUES (502, 'John Smith', 'Musanze');
INSERT INTO drivers VALUES (503, 'Alice Kay', 'Huye');
INSERT INTO drivers VALUES (504, 'Peter Mugabo', 'Rubavu');

INSERT INTO routes VALUES (701, 'Kigali - Musanze');
INSERT INTO routes VALUES (702, 'Kigali - Huye');
INSERT INTO routes VALUES (703, 'Kigali - Rubavu');


INSERT INTO deliveries VALUES (9001, 501, 701, DATE '2025-09-01', 90);
INSERT INTO deliveries VALUES (9002, 501, 701, DATE '2025-09-02', 85);
INSERT INTO deliveries VALUES (9003, 502, 701, DATE '2025-09-03', 120);
INSERT INTO deliveries VALUES (9004, 503, 702, DATE '2025-09-01', 110);
INSERT INTO deliveries VALUES (9005, 503, 702, DATE '2025-09-08', 100);
INSERT INTO deliveries VALUES (9006, 504, 703, DATE '2025-09-01', 95);
INSERT INTO deliveries VALUES (9007, 504, 703, DATE '2025-09-15', 92);
INSERT INTO deliveries VALUES (9008, 501, 701, DATE '2025-09-10', 80);

COMMIT;

