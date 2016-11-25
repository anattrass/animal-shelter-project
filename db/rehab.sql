DROP TABLE musicians;
DROP TABLE bands;


CREATE TABLE bands (
    id SERIAL8 primary key,
    name VARCHAR(255)
);

CREATE TABLE musicians (
    id SERIAL8 primary key,
    name VARCHAR(255),
    instrument VARCHAR(255),
    days_here INT4,
    musician_pic_url VARCHAR(255),
    band_id INT8 references bands(id)
);