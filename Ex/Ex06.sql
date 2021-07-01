select *
from book;

create table book(
    book_id     number(5),
    title       varchar2(50),
    author      varchar(10),
    pub_date    date
);

alter table book add (pubs varchar2(50));

alter table book modify (title varchar2(100));

alter table book rename column title to subject;

alter table book drop (author);

rename book to article;

drop table article;

create table author (
    author_id       number(10),
    author_name     varchar2(100)   not null,
    author_desc     varchar2(500),
    primary key(author_id)
);

create table book (
    book_id     number(10),
    title       varchar2(100)   not null,
    pubs        varchar2(100),
    pub_date    date,
    author_id   number(10),
    primary key(book_id),
    constraint book_fk foreign key (author_id)
    references author(author_id)
);



insert into author values(1, '박경리', '토지 작가');

insert into author( author_id, author_name )
values (2,'이문열');

insert into author( author_id, author_name, author_desc)
values (3,'구병모','위저드베이커리 작가');

update author
set author_name = '기안84',
    author_desc = '웹툰 작가'
where author_id = 2;

delete from author
where author_id = 3;

delete from author;

commit;

rollback;

create sequence seq_author_id
increment by 1
start with 1
nocache;

select seq_author_id.currval from dual;
select seq_author_id.nextval from dual;

drop sequence seq_author_id;

insert into author values (seq_author_id.nextval, '박경리', '토지 작가');
insert into author values (seq_author_id.nextval, '기안84', '웹툰 작가');
insert into author values (seq_author_id.nextval, '이문열', '삼국지 작가');

select *
from author;

select *
from user_sequences;
