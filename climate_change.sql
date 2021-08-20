--LOOKING AT THE AVERAGE TEMPERATURE ---

SELECT * FROM state_climate;
SELECT state, year, tempc, AVG(tempc) OVER (
  PARTITION BY state
  ORDER BY year
) AS running_avg_temp FROM state_climate;

--GETTING THE LOWEST TEMPERATURE

SELECT state, year, tempc, FIRST_VALUE(tempc) OVER (
  PARTITION BY state
  ORDER BY tempc
) AS lowest_temp FROM state_climate;

--GETTING THE HIGHEST TEMPERATURE

SELECT state, year, tempc, LAST_VALUE(tempc) OVER (
  PARTITION BY state
  RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
) AS lowest_temp FROM state_climate;

--TEMPERATURE OF THE PREVIOUS DAY

SELECT state, year, tempc, tempc - LAG(tempc, 1, tempc) OVER (
  PARTITION BY state
) AS change_in_temp FROM state_climate;

--COLDEST STATE RANK
SELECT state, year, tempc, RANK() OVER (
  PARTITION BY state
  ORDER BY tempc 
) AS coldest_rank FROM state_climate;


-- WARMEST STATE RANK --

SELECT state, year, tempc, RANK() OVER (
  PARTITION BY state
  ORDER BY tempc DESC
) AS warmest_rank FROM state_climate;

SELECT state, year, tempc, NTILE(4) OVER (
  PARTITION BY state
  ORDER BY tempc
) AS coldest_rank_quartile FROM state_climate;

SELECT state, year, tempc, NTILE(5) OVER (
  PARTITION BY state
  ORDER BY tempc
) AS coldest_rank_quartile FROM state_climate;













