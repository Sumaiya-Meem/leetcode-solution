select d.name as Department,e.name as Employee ,e.salary AS Salary
from Department d
inner join Employee e
on d.id=e.departmentId
where e.salary=(
  select max(salary) 
  from Employee
  where departmentId=d.id
)