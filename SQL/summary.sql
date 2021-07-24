use DataJob2;

Select j.JobCategory , avg(rating)
From job j Natural Join measurement m 
Natural Join location l 
where j.job_id = m.job_id and l.location_id = m.location_id
group by j.JobCategory;

Select State, Count(JobCategory) from location 
Natural Join job Natural Join  measurement Group by State;

Select City , Round(Avg(Salary_Max_Estimate) ,0)
from job Natural Join measurement 
Natural Join location 
where 
Trim(City) = "San Mateo" or Trim(City) = "San Jose" or
Trim(City) = "San Ramon" or Trim(City) = "Santa Clara" or
Trim(City) = "Stanford" or Trim(City) = "Walnut Creek" or
Trim(City) = "Mountain View" or Trim(City) = "Palo Alto" or
Trim(City) = "Pleasanton" or Trim(City) = "Redwood City" or
Trim(City) = "San Rafael" or Trim(City) = "Sunnyvale" or
Trim(City) = "Union City" or  Trim(City) = "San Francisco" or
Trim(City) = "Los Gatos" or Trim(City) = "Menlo Park" or
Trim(City) = "Milpitas" or Trim(City) = "Concord" or
Trim(City) = "Cupertino" or Trim(City) = "Foster City" or
Trim(City) = "Fremont" or Trim(City) = "Berkeley"
group by City;
