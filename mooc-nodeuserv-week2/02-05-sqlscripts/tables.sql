/* Copyright © 2017 Oracle and/or its affiliates. All rights reserved. */
/* RUN ONLY ONCE AS MOVIE_USR */
CREATE TABLE MOVIES (
      MOVIEID INTEGER NOT NULL PRIMARY KEY,
      MOVIENAME VARCHAR(255),
      YEAR INTEGER,
      STUDIO VARCHAR(255),
      GENRE VARCHAR(255),
      RATING VARCHAR(255),
      RUNTIME INTEGER,
      DIRECTOR VARCHAR(255),
      MOVIEDESCRIPTION VARCHAR(2048)
); 
    
CREATE TABLE REVIEWS (
  REVIEWID INTEGER NOT NULL PRIMARY KEY,
  MOVIEID INTEGER NOT NULL,
  REVIEWERNAME VARCHAR(255),
  SCORE INTEGER NOT NULL,
  REVIEWDATE VARCHAR(255),
  REVIEWDESCRIPTION VARCHAR(2048)
); 

CREATE SEQUENCE MOVIES_SEQ
 START WITH     100
 INCREMENT BY   1; 

CREATE SEQUENCE REVIEWS_SEQ
 START WITH     1000
 INCREMENT BY   1; 

