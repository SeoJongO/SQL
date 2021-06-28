-- 문제1
select  em.employee_id,
        em.first_name||' '||last_name,
        de.department_name
from employees em, departments de
where em.department_id = de.department_id
order by de.department_name asc, employee_id desc;

-- 문제2
select  e.employee_id,
        e.first_name,
        e.salary,
        d.department_name,
        j.job_title
from employees e, departments d, jobs j
where e.department_id = d.department_id
and e.job_id = j.job_id
order by e.employee_id asc;

-- 문제2-1
select  e.employee_id,
        e.first_name,
        e.salary,
        d.department_name,
        j.job_title
from employees e, departments d, jobs j
where e.department_id = d.department_id(+)
and e.job_id = j.job_id
order by e.employee_id asc;

-- 문제3
select  l.location_id,
        l.city,
        d.department_name,
        d.department_id
from departments d, locations l
where d.location_id = l.location_id
order by l.location_id;

-- 문제3-1
select  l.location_id,
        l.city,
        d.department_name,
        d.department_id
from departments d, locations l
where d.location_id(+) = l.location_id
order by l.location_id;

-- 문제4
select  r.region_name 지역이름,
        c.country_name 나라이름
from regions r, countries c
where r.region_id = c.region_id
order by r.region_name asc, c.country_name desc; 

-- 문제5
select  e.employee_id 사원번호,
        e.first_name 이름,
        e.hire_date 입사일,
        m.first_name 매니저이름,
        m.hire_date 매니저입사일
from employees e, employees m
where e.manager_id = m.employee_id
and e.hire_date < m.hire_date;

-- 문제6
select  c.country_name,
        c.country_id,
        l.city,
        l.location_id,
        d.department_name,
        d.department_id
from departments d, locations l, countries c
where l.location_id = d.location_id
and l.country_id = c.country_id
order by c.country_name;

-- 문제7
select  e.employee_id,
        e.first_name||' '||last_name,
        j.job_id,
        j.start_date,
        j.end_date
from employees e, job_history j
where e.employee_id = j.employee_id(+)
and j.job_id = 'AC_ACCOUNT';

--문제 8
select  e.department_id,
        d.department_name,
        e.first_name,
        l.city,
        c.country_name,
        r.region_name
from    employees e,
        departments d,
        locations l,
        countries c,
        regions r
where   e.employee_id = d.manager_id 
and     e.department_id = d.department_id
and     d.location_id = l.location_id
and     l.country_id = c.country_id
and     c.region_id = r.region_id;

--문제 9
select  e.employee_id,
        e.first_name,
        d.department_name,
        m.first_name
from employees e, employees m, departments d
where e.department_id = d.department_id(+)
and e.manager_id = m.employee_id;