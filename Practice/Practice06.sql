--실습

select *
from author;

select *
from book;

delete from book;

-- seq_author_id 시퀀스 생성
create sequence seq_author_id
increment by 1
start with 1
nocache;

-- seq_book_id 시퀀스 생성
create sequence seq_book_id
increment by 1
start with 1
nocache;

-- author insert
insert into author values (seq_author_id.nextval, '이문열', '경북 영양');
insert into author values (seq_author_id.nextval, '박경리', '경상남도 통영');
insert into author values (seq_author_id.nextval, '유시민', '17대 국회의원');
insert into author values (seq_author_id.nextval, '기안84', '기안동에서 산 84년생');
insert into author values (seq_author_id.nextval, '강풀', '온라인 만화가 1세대');
insert into author values (seq_author_id.nextval, '김영하', '알쓸신잡');

-- book insert
insert into book(book_id, title, pubs, pub_date, author_id)
values(seq_book_id.nextval, '우리들 일그러진 영웅', '다림', to_date('1998-02-22', 'yyyy-mm-dd'), 1);
insert into book(book_id, title, pubs, pub_date, author_id)
values(seq_book_id.nextval, '삼국지', '민음사', to_date('2002-03-01', 'yyyy-mm-dd'), 1);
insert into book(book_id, title, pubs, pub_date, author_id)
values(seq_book_id.nextval, '토지', '마로니에북스', to_date('2012-08-15', 'yyyy-mm-dd'), 2);
insert into book(book_id, title, pubs, pub_date, author_id)
values(seq_book_id.nextval, '유시민의 글쓰기 특강', '생각의길', to_date('2015-04-01', 'yyyy-mm-dd'), 3);
insert into book(book_id, title, pubs, pub_date, author_id)
values(seq_book_id.nextval, '패션왕', '중앙북스(books)', to_date('2012-02-22', 'yyyy-mm-dd'), 4);
insert into book(book_id, title, pubs, pub_date, author_id)
values(seq_book_id.nextval, '순정만화', '재미주의', to_date('2011-08-03', 'yyyy-mm-dd'), 5);
insert into book(book_id, title, pubs, pub_date, author_id)
values(seq_book_id.nextval, '오직두사람', '문학동네', to_date('2017-05-04', 'yyyy-mm-dd'), 6);
insert into book(book_id, title, pubs, pub_date, author_id)
values(seq_book_id.nextval, '26년', '재미주의', to_date('2012-02-04', 'yyyy-mm-dd'), 5);

-- 강풀의 author_desc 정보를 '서울특별시'로 변경
update author
set author_desc = '서울특별시'
where author_id = 5;

-- author 테이블에서 기안84 데이터를 삭제 -> 삭제 안됨
delete from author
where author_id = 4;

-- 출력
select  b.book_id,
        b.title,
        b.pubs,
        b.pub_date,
        a.author_id,
        a.author_name,
        a.author_desc
from book b, author a
where b.author_id = a.author_id;
