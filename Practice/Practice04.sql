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
SELECT J.JOB_TITLE, SUM(E.SALARY)
FROM JOBS J, EMPLOYEES E
WHERE E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY SUM(E.SALARY) DESC;

-- 문제7
-- 자신의 부서 평균 급여보다 연봉(salary)이 많은 직원의 직원번호(employee_id), 이름(first_name)과 급여(salary)을 조회하세요
select employee_id, first_name, salary
from employees e, (select department_id, avg(salary) avs
                   from employees
                   group by department_id) a
where e.department_id = a.department_id
and e.salary > avs;
                                  
select department_id, avg(salary)
from employees
group by department_id;
                   
-- 문제8
select  rn,
        s.employee_id,
        s.first_name,
        s.salary,
        s.hire_date
from (select rownum rn,
        f.employee_id,
        f.first_name,
        f.salary,
        f.hire_date
 from (select employee_id,
                first_name,
                salary,
                hire_date
         from employees
         order by hire_date asc)f)s
where rn >= 11
and rn <= 15;