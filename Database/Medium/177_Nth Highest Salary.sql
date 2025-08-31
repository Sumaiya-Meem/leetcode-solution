CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN

  declare result int;
  set N=N-1;

  select distinct salary into result from Employee
  order by salary desc
  limit 1 offset N;

  return result;
END