DROP TABLE list_of_countries CASCADE
DROP TABLE mortality CASCADE
DROP TABLE happiness CASCADE


CREATE TABLE list_of_countries (
	
  	country_id INT PRIMARY KEY,
	country VARCHAR
  
);

CREATE TABLE mortality(
  
  infant_mortality_rate INT,
  gender VARCHAR,
  year INT,
  country_id INT,
  FOREIGN KEY (country_id) REFERENCES list_of_countries(country_id)
);

CREATE TABLE happiness(
  
  happiness_rank INT,
  happiness_score INT,
  gdp_per_capita INT,
  health_life_expectancy INT,
  year INT,
  country_id INT,
  FOREIGN KEY (country_id) REFERENCES list_of_countries(country_id)
);
