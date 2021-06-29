-- 문제1
select count(salary)
from employees
where salary < (select avg(salary)
                from employees);
                
-- 문제2 수정필요
select  employee_id,
        first_name,
        salary,
        avg(salary),
        max(salary)
from employees
group by salary, employee_id, first_name
having avg(salary) >= (select avg(salary)
                      from employees)
and max(salary) <= (select max(salary)
                    from employees)
order by salary asc;
                    
-- 문제3
select *
from employees;

select  l.location_id,
        l.street_address,
        l.postal_code,
        l.city,
        l.state_province,
        l.country_id
from employees e, departments d, locations l
where e.department_id = d.department_id
and d.location_id = l.location_id
and first_name = 'Steven'
and last_name = 'King';

-- 문제4
select  employee_id,
        first_name,
        salary
from employees
where salary <any (select salary
                   from employees
                   where job_id = 'ST_MAN')
order by salary desc;

-- 문제5
select  employee_id,
        first_name,
        salary,
        department_id
from employees
where (department_id, salary) in (select department_id, max(salary)
                                  from employees
                                  group by department_id)
order by salary desc;

-- 문제6
select  j.job_title
from jobs j
group by job_title;

select  j.job_title,
        
from employees e, jobs j
where e.job_id = j.job_id
group by j.job_title, e.salary*12;