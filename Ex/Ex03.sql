select first_name, round(salary, -4)
from employees;

select  avg(salary)
from employees;

select  count(*), --null O
        count(first_name), --null X
        count(commission_pct) --null X
from employees;

select count(*)
from employees
where salary > 16000;

select  sum(salary)
from employees;

select count(*), sum(salary), avg(salary)
from employees;

select count(*), sum(salary), avg(nvl(salary,0))
from employees;

select  count(*) 전체,
        count(commission_pct) 커밋,
        sum(commission_pct) 합,
        round(avg(nvl(commission_pct, 0)),3) 널포함평균, -- null O
        round(avg(commission_pct),3) 널미포함평균, -- null X
        round(sum(commission_pct)/count(*),3) 널포함, -- null O
        round(sum(commission_pct)/count(commission_pct),3) 널미포함 -- null X
from employees;

select  max(salary),
        min(salary)
from employees;

select nvl(department_id, 0) 부서번호, round(avg(salary), 0) 평균
from employees
group by department_id 
order by department_id asc;

select department_id, job_id, avg(salary)
from employees
group by department_id, job_id;

select department_id, count(*), sum(salary)
from employees
group by department_id;

select department_id, count(*), sum(salary)
from employees
group by department_id
having sum(salary)>=20000
order by sum(salary) asc;

select department_id, count(*), sum(salary)
from employees
group by department_id
having sum(salary)>=20000
and department_id = 100
order by sum(salary) asc;

select department_id, job_id, count(*), sum(salary)
from employees
group by department_id, job_id
having sum(salary) >= 20000
and job_id = 'IT_PROG';

/*
select
from
where
group by
having
order by
*/

select  employee_id, job_id, salary,
case    when job_id = 'IT_PROG' then salary + salary * 0.1
        when job_id = 'FI_ACCOUNT' then salary + salary * 0.2
        when job_id = 'PU_CLERK' then salary + salary * 0.3
        when job_id = 'ST_CLERK' then salary + salary * 0.4
        else salary
end     realSalary
from employees;

select  employee_id, job_id, salary,
decode( job_id, 'IT_PROG', salary + salary * 0.1,
                'FI_ACCOUNT', salary + salary * 0.2,
                'PU_CLERK', salary + salary * 0.3,
                'ST_CLERK', salary + salary * 0.4,
        salary ) realSalary
from employees;

select  first_name, job_id, department_id,
case    when department_id <= '50' then 'A-Team'
        when department_id <= '60' then 'B-Team'
        when department_id <= '110' then 'C-Team'
        else '팀없음'
end     Team
from employees;

select first_name, department_name, e.department_id, e.manager_id
from employees e, departments d
where e.department_id = d.department_id;

select first_name, department_name
from employees , departments;
