select first_name, salary, commission_pct, salary*commission_pct
from employees
where salary between 13000 and 15000;

select *
from employees
where commission_pct is null;

select *
from employees
where commission_pct is not null;

select first_name, salary, commission_pct
from employees
where commission_pct is not null;

select first_name
from employees
where manager_id is null and commission_pct is null;

select first_name, salary
from employees
where salary >= 9000
order by salary desc;

select first_name, salary
from employees
where salary >= 9000
order by salary asc;

select first_name, salary
from employees
order by salary asc, first_name desc;

select department_id, salary, first_name
from employees
order by department_id asc;

select first_name, salary
from employees
where salary >= 10000
order by salary desc;

select department_id, salary, first_name
from employees
order by department_id asc, salary desc;

select email, initcap(email)
from employees;

select initcap('aaa')
from dual;

select first_name, lower(first_name), upper(first_name)
from employees
where department_id = 100;

select first_name, substr(first_name,2,3), substr(first_name,-3,2)
from employees
where department_id = 100;

select  first_name,
        lpad(first_name, 10, '*'),
        rpad(first_name, 10, '*')
from employees;

select  first_name,
        replace(first_name, 'a', '*'),
        replace(first_name, substr(first_name,1,4), '****')
from employees;

select  round(123.456, 2) "r2",
        round(123.456, 0) "r0",
        round(123.456, -1) "r-1"
from dual;

select  trunc(123.456, 2) "r2",
        trunc(123.456, 0) "r0",
        trunc(123.456, -1) "r-1"
from dual;

select  sysdate
from dual;

select  trunc(months_between(sysdate, hire_date), 0) "1"
from employees
where department_id = 110;

select first_name, to_char(salary*12, '$999,999.99')
from employees
where department_id = 110;

select  to_char(9876, '999'),
        to_char(9876, '099999'),
        to_char(9876, '$99999'),
        to_char(9876, '9999.99'),
        to_char(987654, '99,9999.99')
from dual;

select sysdate, to_char(sysdate, 'yyyy-mm-dd'), to_char(sysdate, 'month-dd-day'),
       to_char(sysdate, 'hh-hh24-mi-ss-ddth'), to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss') 
from dual;

select first_name "name", nvl2(commission_pct,'true',0) "nvl2", nvl(commission_pct,0) "nvl"
from employees;

