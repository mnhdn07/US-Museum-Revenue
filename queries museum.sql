#Checking values in data
select * from dbo.museum;


#Clearing null values for metrics
delete from dbo.museum
where income is NULL
and state is NULL 
and revenue is NULL;


#Total revenue for all museums
select sum(revenue) as total_revenue 
from dbo.museum;


#Getting all types of museum and order by revenue
select museum_type, sum(revenue) as revenue
from dbo.museum
group by museum_type
order by revenue desc;


#Highest revenue per state 
#Washington DC is included as a state due to revenue from Smithsonian
select max(revenue) as highest_revenue, state
from dbo.museum
group by state
order by highest_revenue desc;


#Total museums per type
select museum_type, count(museum_type) as total_museums 
from dbo.museum
group by museum_type
order by total_museums desc;



