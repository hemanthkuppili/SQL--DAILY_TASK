 -- use_case9--
  
  CREATE TABLE movies (  movie_id INT AUTO_INCREMENT,
  movie_code VARCHAR(12) NOT NULL,
  title VARCHAR(200) NOT NULL,
  genre VARCHAR(60) NOT NULL,
  original_language VARCHAR(40) NOT NULL,
  release_date DATE,
  duration_minutes SMALLINT NOT NULL,
  director_name VARCHAR(120) NOT NULL,
  age_certificate VARCHAR(20) NOT NULL DEFAULT 'UNRATED',
  audience_rating DECIMAL(3,1),
  production_budget DECIMAL(15,2),
  catalog_status VARCHAR(20)NOT NULL DEFAULT 'UPCOMING',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `pk_movie_id` PRIMARY KEY(movie_id),
  CONSTRAINT `uk_movie_code` UNIQUE (movie_code),
  CONSTRAINT `chk_duration_minutes` CHECK(duration_minutes>=0),
  CONSTRAINT `chk_audience_rating` CHECK(audience_rating IS NULL OR audience_rating 
  BETWEEN 0.00 AND 10.0),
  CONSTRAINT `chk_production_budget` CHECK(production_budget IS NULL OR
  production_budget>=0)
  );
  SELECT *FROM movies;
  INSERT INTO movies(movie_code, title, genre, original_language, duration_minutes, director_name)
 VALUES('MOV0000001', 'Project Future', 'Science Fiction', 'English',130, 'John Smith');
 INSERT INTO movies(movie_code, title, genre, original_language, release_date,duration_minutes, director_name,
 age_certificate,audience_rating, production_budget, catalog_status)
 VALUES('MOV0000002', 'The Journey', 'Drama', 'English','2026-08-15', 145, 'David Brown',
 'PARENTAL_GUIDANCE',8.5, 50000000.00, 'RELEASED');