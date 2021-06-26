-- 사원의 이름과 전화번호, 입사일, 연봉을 출력
select  first_name||' '||last_name 이름,
        phone_number 전화번호,
        hire_date 입사일,
        salary 급여
from employees;

-- 사원의 이름과 성, 급여, 전화번호, 이메일, 입사일을 출력
select  first_name||' '||last_name 이름,
        salary 급여,
        phone_number 전화번호,
        email 이메일,
        hire_date 입사일
from employees;

--사원의 이름과 전화번호, 입사일, 급여로 표시되도록 출력
select  first_name||' '||last_name 이름,
        phone_number 전화번호,
        hire_date 입사일,
        salary 급여
from employees;

-- 사원의 사원번호와 이름, 급여, 전화번호, 이메일, 입사일로 표시되도록 출력하세요
select  employee_id 사원번호,
        first_name||' '||last_name 이름,
        salary 급여,
        phone_number 전화번호,
        email 이메일,
        hire_date 입사일
from employees;

/* 다음과 같이 출력하세요 
성명 성과 이름사이에 - 로 구분
급여
연봉 (급여*12)
연봉2 (급여*12+5000)
전화번호 */
select  first_name||'-'||last_name 이름,
        salary 급여,
        (salary*12) 연봉,
        (salary*12+5000) 연봉2,
        phone_number 전화번호
from employees;

-- 연봉이 15000 이상인 사원들의 이름과 월급을 출력
select  first_name||' '||last_name 이름,
        salary 월급
from employees
where (salary*12) >= 15000;

-- 07/01/01 일 이후에 입사한 사원들의 이름과 입사일을 출력
select  first_name||' '||last_name 이름,
        hire_date 입사일
from employees
where hire_date >= '07/01/01';

-- 이름이 Lex인 직원의 연봉을 출력
select  first_name||' '||last_name 이름,
        (salary*12) 연봉
from employees
where first_name = 'Lex';

-- 연봉이 14000 이하이거나 17000 이상인 사원의 이름과 연봉을 출력
select  first_name||' '||last_name 이름,
        (salary*12) 연봉
from employees
where (salary*12) <= 14000
or (salary*12) >= 17000;

-- 입사일이 04/01/01 에서 05/12/31 사이의 사원의 이름과 입사일을 출력
select  first_name||' '||last_name 이름, 
        hire_date 입사일
from employees
where hire_date between '04/01/01'
and '05/12/31';

-- 월급이 2100, 3100, 4100, 5100 인 사원의 이름과 연봉을 구하시오
select  first_name||' '||last_name 이름,
        salary 월급
from employees
where salary in ('2100', '3100', '4100', '5100');

-- 이름에 am 을 포함한 사원의 이름과 월급을 출력
select  first_name||' '||last_name 이름,
        salary 월급
from employees
where first_name like '%am%';

-- 이름의 두번째 글자가 a 인 사원의 이름과 연봉을 출력
select  first_name||' '||last_name 이름,
        (salary*12) 연봉
from employees
where first_name like '_a%';

-- 이름의 네번째 글자가 a 인 사원의 이름을 출력
select  first_name||' '||last_name 이름
from employees
where first_name like '___a%';

-- 이름이 네글자인 사원중 끝에서 두번째 글자가 a 인 사원의 이름을 출력
select  first_name||' '||last_name 이름
from employees
where first_name like '__a_';

-- 커미션 비율이 있는 사원의 이름과 연봉, 커미션 비율을 출력
select  first_name||' '||last_name 이름,
        (salary*12) 연봉,
        commission_pct "커미션 비율"
from employees
where commission_pct is not null;

-- 담당 매니저가 없고 커미션 배율이 없는 직원의 이름을 출력
select  first_name||' '||last_name 이름
from employees
where manager_id is null
and commission_pct is null;

-- 부서번호를 오름차순으로 정렬하고 부서번호, 급여, 이름을 출력
select  department_id 부서번호,
        salary 급여,        
        first_name||' '||last_name 이름
from employees
order by department_id asc;

-- 급여가 10000 이상인 직원의 이름, 급여를 급여가 큰 직원부터 출력
select  first_name||' '||last_name 이름,
        salary 급여
from employees
where salary >= 10000
order by salary desc;

-- 부서번호를 오름차순으로 정렬하고 부서번호가 같으면 급여가 높은 사람부터 부서번호, 급여, 이름을 출력
select  department_id 부서번호,
        salary 급여,        
        first_name||' '||last_name 이름
from employees
order by department_id asc, salary desc;

-- 첫글자만 대문자로 변경
select initcap(first_name||' '||last_name) 이름
from employees;

-- 소문자, 대문자로 변경
select  lower(first_name||' '||last_name) 소문자,
        upper(first_name||' '||last_name) 대문자
from employees;

-- 왼쪽 채움, 오른쪽 채움
select  lpad(first_name||' '||last_name, 20, '*') 왼쪽,
        rpad(first_name||' '||last_name, 20, '*') 오른쪽
from employees;

-- 왼쪽, 오른쪽 문자열 제거
select  first_name||' '||last_name 이름,
        ltrim(first_name||' '||last_name, 'El') 왼쪽,
        rtrim(first_name||' '||last_name, 'el') 오른쪽
from employees;

-- ASCII 값이 n인 문자 반환, ASCII 값 반환
select  chr(66) "ASCII 값 66 = B",
        ascii('B') "ASCII 값 B = 66"
from dual;

-- 문자열 치환
select  replace('ABCDEFGH', 'CDE', '   ') "REPLACE",
        translate('ABCDEFGH', 'CEG', '   ') "TRANSLATE"
from dual;

-- ~번째 부터 길이 ~인 문자열 반환
select  substr('abdcefg', 5, 2)
from dual;

-- 문자열 길이 반환
select length('123456789') "LENGTH"
from dual;

-- 문자열 검색
select  instr('ABCDEFGEH', 'E', 1, 1),
        instr('ABCDEFGEH', 'E', 1, 2),
        instr('ABCDEFGEH', 'E', 6, 1)
from dual;
