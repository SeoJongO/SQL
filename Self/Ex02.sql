-- 절대값
select abs(-55)
from dual;

-- 보다 크거나 같은 최소 정수
select ceil(-55.4)
from dual;

-- 보다 작거나 같은 최대 정수
select floor(-55.4)
from dual;

-- 나머지
select mod(55,2)
from dual;

-- 제곱
select power(2,2)
from dual;

-- 반올림
select round(55.456,1)
from dual;

-- 버림
select trunc(-55.456,1)
from dual;

-- 부호
select sign(10), sign(0), sign(-10)
from dual;

-- 날짜에 달 더하기
select add_months('02/06/07', 3)
from dual;

-- 날짜의 달 마지막 날
select last_day('02/06/07')
from dual;

-- 날짜 사이의 달 수
select months_between('02/06/07', '02/09/11')
from dual;

-- 타임존 생성
select new_time(to_date('02/06/07'), 'pst', 'est')
from dual;

-- 일 후의 첫 요일의 날짜
select next_day('21/06/27', 1) "1=일요일~7=토요일"
from dual;

-- 날짜반올림
select round(to_date('02/06/07'), 'month')
from dual;

-- 날짜내림
select trunc(to_date('02/06/07'), 'year')
from dual;

-- 현재 시간 반환
select sysdate
from dual;

-- 숫자형 -> 문자형
select  to_char(9876, '999999'),
        to_char(9876, '099999'),
        to_char(9876, '$9999'),
        to_char(9876, '9999.99'),
        to_char(9876, '9,999')
from dual;

-- 날짜 -> 문자형
select  to_char(sysdate, 'yyyy'),
        to_char(sysdate, 'yy'),
        to_char(sysdate, 'mm'),
        to_char(sysdate, 'month'),
        to_char(sysdate, 'dd'),
        to_char(sysdate, 'ddth'),
        to_char(sysdate, 'hh24'),
        to_char(sysdate, 'hh'),
        to_char(sysdate, 'mi'),
        to_char(sysdate, 'ss')
from dual;

-- null
select  nvl(commission_pct,0),
        nvl2(commission_pct, 'true', 'false')
from employees;