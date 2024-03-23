CREATE DATABASE IF NOT EXISTS atelier_bd;
USE atelier_bd;

ALTER TABLE musician DROP FOREIGN KEY musician_ibfk_1;
ALTER TABLE musician DROP COLUMN bandName;
ALTER TABLE musician DROP COLUMN role;
DROP TABLE band;
ALTER TABLE musician rename to singer;
ALTER TABLE singer RENAME COLUMN musicianName to singerName;
ALTER TABLE album DROP FOREIGN KEY album_ibfk_1;

