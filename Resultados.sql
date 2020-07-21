select count(*) from flights;
select Origin AS Origin, AVG(ArrDelay) AS Prom_Arribades, AVG(DepDelay) AS Prom_Sortides from flights Group By Origin;
select Origin AS Origin, colYear AS año, colMonth AS Mes, ArrDelay AS Prom_Arribades from flights Order By Origin, colYear;
select City AS City, colYear AS año, colMonth AS Mes, ArrDelay AS Prom_Arribades from flights Join usairports ON flights.Origin=IATA Order By City, colYear;
select UniqueCarrier, colYear, colMonth, sum(Cancelled) AS total_cancelled from flights Group by colYear, colMonth Order by total_cancelled DESC;
select TailNum, sum(Distance) AS totalDistance from flights group by TailNum order by totalDistance DESC LIMIT 10;
select UniqueCarrier, avg(ArrDelay) AS avgDelay from flights group by uniqueCarrier HAVING avgDelay >10   Order By avgDelay DESC;