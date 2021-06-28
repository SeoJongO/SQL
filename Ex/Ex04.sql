select em.first_name, de.department_name, jo.job_title
from employees em, departments de, jobs jo
where em.department_id = de.department_id
and em.job_id = jo.job_id;

select  em.employee_id,
        em.first_name,
        em.department_id,
        de.department_name
from employees em left outer join departments de
on em.department_id = de.department_id
or em.department_id = de.department_id;

select  em.employee_id,
        em.first_name,
        em.department_id,
        de.department_name
from employees em, departments de
where em.department_id = de.department_id(+);

select  em.employee_id,
        em.first_name,
        em.department_id,
        de.department_name
from employees em right outer join departments de
on em.department_id = de.department_id;

select  em.employee_id,
        em.first_name,
        em.department_id,
        de.department_name
from employees em, departments de
where em.department_id(+) = de.department_id;

select  em.employee_id,
        em.first_name,
        em.department_id,
        de.department_name
from employees em full outer join departments de
on em.department_id = de.department_id;

select  em.employee_id,
        em.first_name,
        em.department_id,
        de.department_name
from employees em, departments de
where em.department_id = de.department_id;

select  em.employee_id,
        em.first_name,
        em.department_id,
        de.department_name
from employees em right outer join departments de
on em.department_id = de.department_id;

select  em.employee_id 사원번호,
        em.first_name 이름,
        em.manager_id 매니저번호,
        ma.first_name 담당매니저,
        ma.phone_number
from employees em, employees ma
where em.manager_id = ma.employee_id
order by em.manager_id asc;

select *
from employees em, locations lo
where em.salary = lo.location_id;

select first_name, salary
from employees
where salary >= (select salary
                 from employees
                 where first_name = 'Den');