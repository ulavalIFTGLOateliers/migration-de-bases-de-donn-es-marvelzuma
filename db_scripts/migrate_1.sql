CREATE DATABASE IF NOT EXISTS atelier_bd;
USE atelier_bd;

ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName to musicianName;
ALTER TABLE musician ADD role varchar(50);
ALTER TABLE musician ADD bandName varchar(50);
UPDATE musician SET role="vocals", bandName="Crazy Duo" WHERE musician.musicianName="Alina";
UPDATE musician SET role="piano", bandName="Luna" WHERE musician.musicianName="Luna";
UPDATE musician SET role="guitar", bandName="Mysterio" WHERE musician.musicianName="Mysterio";
UPDATE musician SET role="percussion", bandName="Crazy Duo" WHERE musician.musicianName="Rainbow";
CREATE TABLE IF NOT EXISTS band (bandName varchar(50), creation YEAR, genre varchar(50));
INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"), ("Mysterio", 2019, "pop");
ALTER TABLE band ADD PRIMARY KEY (bandName);
ALTER TABLE musician ADD FOREIGN KEY (bandName) REFERENCES band(bandName);
ALTER TABLE album ADD FOREIGN KEY (labelName) REFERENCES label(labelName);
