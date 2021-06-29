select  e.department_id,
        e.first_name,
        d.department_name
from employees e full outer join departments d
on e.department_id = d.department_id;

-- avg(salary) = 6461
select  first_name,
        salary
from employees
where salary < ( select avg(salary)
                 from employees );
                 
select  first_name,
        salary,
        employee_id
from employees
where salary = ( select min(salary)
                 from employees );
                 
select  first_name,
        salary
from employees
where salary < ( select avg(salary)
                 from employees );
                 
select  first_name,
        salary
from employees
where salary in ( select salary
                  from employees
                  where department_id = 110 );
                  
select first_name
from employees
where (department_id, salary) in ( select department_id, max(salary)
                                   from employees
                                   group by department_id );
                                   
select first_name, salary
from employees
where salary >any ( select salary
                    from employees
                    where department_id = 110 );
                    
select first_name, salary
from employees
where salary >all ( select salary
                    from employees
                    where department_id = 110 );
                    
-- 예제
-- 각 부서별로 최고급여를 받는 사원을 출력
-- 1. 각 부서별 최고 급여 리스트 구하기
select department_id, max(salary)
from employees
group by department_id;

-- 2. 직원테이블 부서코드, 급여가 동시에 같은 직원 리스트 출력
select  first_name,
        department_id,
        salary
from employees
where (nvl(department_id,0), salary) in (select nvl(department_id,0), max(salary)
                                  from employees
                                  group by department_id);
                                  
select  employee_id,
        first_name,
        department_id
from employees;

select e.department_id, e.employee_id, e.first_name, e.salary, s.department_id, s.salary
from employees e, (select department_id, max(salary) salary
                   from employees
                   group by department_id) s
where e.department_id = s.department_id
and e.salary = s.salary;
        

-- rownum
-- 급여를 가장 많이 받는 5명
select  employee_id,
        first_name,
        salary
from employees
where rownum <= 5
order by salary desc;

select  rownum,
        ot.employee_id,
        ot.first_name,
        ot.salary,
        ot.hire_date
from    (select employee_id, first_name, salary, hire_date
         from employees
         order by salary desc) ot
where rownum <= 5;

select  ort.rn,
        ort.employee_id,
        ort.first_name,
        ort.salary
from (select  rownum rn,
              ot.employee_id,
              ot.first_name,
              ot.salary,
              ot.hire_date
      from (select employee_id,
                   first_name,
                   salary,
                   hire_date
            from employees
            order by salary desc) ot) ort
where rn >= 2
and rn <=5;

select *
from employees;

select  ort.rn,
        ort.first_name,
        ort.salary,
        ort.hire_date
from   (select  rownum rn,
                ot.first_name,
                ot.salary,
                ot.hire_date
        from   (select first_name,
                       salary,
                       hire_date
                from   employees
                where hire_date >= '07/01/01'
                and hire_date <= '07/12/31'
                order by salary desc) ot) ort
where rn >= 3
and rn <= 7;