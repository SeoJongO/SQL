SELECT * FROM tab;

select *
from employees;

select *
from departments;

select  employee_id, first_name, last_name
from employees;

select first_name, phone_number, hire_date
from employees;

select first_name,
       last_name,
       salary,
       phone_number,
       email,
       hire_date
from employees;

select employee_id as "empNo",
       first_name as "f-Name",
       salary as "급 여"
from employees;

select first_name as "이름",
       phone_number as "전화번호",
       hire_date as "입사일",
       salary as "급여"
from employees;

select  employee_id 사원번호,
        first_name 이름,
        last_name 성,
        salary 급여,
        phone_number 전화번호,
        email 이메일,
        hire_date 입사일
from employees;

select  first_name || ' ' || last_name 이름
from employees;

select  first_name || ' hire date is ' || hire_date 입사일
from employees;

select  first_name,
        salary
from employees;

select  first_name 이름,
        salary 월급,
        salary*12 연봉
from employees;

select  first_name 이름,
        salary 월급,
        salary*12 연봉,
        (salary+300)*12 보너스
from employees;

select  first_name || '-' || last_name 성명,
        salary 급여,
        salary*12 연봉1,
        salary*12+5000 연봉2,
        phone_number 전화번호
from employees;

select first_name
from employees
where department_id = 10;

select  first_name,
        salary
from employees
where salary >= 15000;

select  first_name,
        hire_date
from employees
where hire_date >= '07/01/01';

select  salary
from employees
where first_name = 'Lex';

select  first_name
from employees
where salary >= 14000
and salary <= 17000;

select  first_name
from employees
where salary <= 14000
or salary >= 17000;

select first_name
from employees
where hire_date >= '04/01/01'
and   hire_date <= '05/12/31';

select first_name
from employees
where hire_date between '04/01/01'
                and '05/12/31';
                
select first_name, last_name, salary
from employees
where first_name in ('Neena','Lex','John');
                
select first_name, last_name, salary
from employees
where first_name = 'Neena'
or first_name = 'Lex'
or first_name = 'Jhon';

select  first_name,
        salary
from employees
where salary in ('2100', '3100', '4100', '5100');

select first_name, last_name, salary
from employees
where first_name like 'L%';

select first_name, salary
from employees
where first_name like '%am%';

select first_name, salary
from employees
where first_name like '_a%';

select first_name, salary
from employees
where first_name like '___a%';

select first_name
from employees
where first_name like '____'
and first_name like '__a%_';


