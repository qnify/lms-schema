-- Copyright (©) 2024 - Zenlit Technology Solutions
-- Licensed under the GNU AGPLv3, check LICENSE for more details.
-- Auto generated, Don't edit by hand

CREATE TABLE live_class (
  id           BIGINT PRIMARY KEY AUTO_INCREMENT,
  course_id    SMALLINT REFERENCES course (id),
  catalogue_id SMALLINT REFERENCES catalogue (id),
  teacher_id   BIGINT REFERENCES account (id),
  starts_at    BIGINT NOT NULL,
  duration     SMALLINT NOT NULL,
  class_status SMALLINT NOT NULL CHECK (class_status > 0 AND class_status < 5)
) AUTO_INCREMENT = 10101;

CREATE TABLE live_class_material (
  id            BIGINT PRIMARY KEY AUTO_INCREMENT,
  live_class_id BIGINT REFERENCES live_class (id),
  document_id   INTEGER REFERENCES document (id),
  pdf_id        INTEGER REFERENCES pdf (id),
  test_id       INTEGER REFERENCES test (id),
  video_id      INTEGER REFERENCES video (id)
) AUTO_INCREMENT = 10101;
