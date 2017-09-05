--***************************
-- 2017.08.02
-- [1]MEMBER_TAB
-- [2]SUBJECT_TAB
-- [3]MAJOR_TAB
-- [4]PROF_TAB
-- [5]STUDENT_TAB
-- [6]GRADE_TAB
-- [7]BOARD_TAB
--***************************
--mariadb 시퀀스 없음 : AUTO_INCREMENT - 테이블 생성시 사용
--set foreign_key_checks = 0; 외래키 걸린 테이블 삭제 후 1로 다시 변경 필요 

--***************************
-- Member table
-- 2017.08.02
-- 회원관리 테이블
-- mem_id, name, pw, ssn, regdate, phone, email, profile
--***************************
--DDL
CREATE TABLE Member(
	mem_id VARCHAR(10), 
	name VARCHAR(10),
	pw VARCHAR(10), 
	ssn VARCHAR(15), 
	regdate DATETIME,
	PRIMARY KEY(mem_id)
);

--phone, email, major, subject, profile
ALTER TABLE Member ADD phone VARCHAR(13);
ALTER TABLE Member ADD email VARCHAR(30);
ALTER TABLE member ADD profile VARCHAR(30);

commit;

--DML
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('kang','1','강다니엘','960101-1000001',now(), '010-1234-0001','kang@test.net', 'kang.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('park','1','박지훈','990101-1000002',now(), '010-1234-0002','park@test.net', 'park.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('hwi','1','이대휘','990101-1000003',now(), '010-1234-0003','hwi@test.net', 'hwi.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('jae','1','김재환','960101-1000004',now(), '010-1234-0004','jae@test.net', 'jae.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('ong','1','옹성우','950101-1000005',now(), '010-1234-0005','ong@test.net', 'ong.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('woo','1','박우진','990101-1000006',now(), '010-1234-0006','woo@test.net', 'woo.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('kuan','1','라이관린','990101-1000007',now(), '010-1234-0007','kuan@test.net', 'kuan.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('yoon','1','윤지성','910101-1000008',now(), '010-1234-0008','yoon@test.net', 'yoon.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('hwang','1','황민현','950101-1000009',now(), '010-1234-0009','hwang@test.net', 'hwang.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('bae','1','배진영','990101-1000010',now(), '010-1234-0010','bae@test.net', 'bae.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('ha','1','하성운','940101-1000011',now(), '010-1234-0011','ha@test.net', 'ha.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('se','1','정세운','970101-1000012',now(), '010-1234-0012','se@test.net', 'se.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('ho','1','강동호','950101-1000013',now(), '010-1234-0013','ho@test.net', 'ho.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('jong','1','김종현','950101-1000014',now(), '010-1234-0014','jong@test.net', 'jong.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('lim','1','임영민','950101-1000015',now(), '010-1234-0015','lim@test.net', 'lim.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('seop','1','안형섭','990101-1000016',now(), '010-1234-0016','seop@test.net', 'seop.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('seon','1','유선호','990101-1000017',now(), '010-1234-0017','seon@test.net', 'seon.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('samuel','1','김사무엘','990101-1000018',now(), '010-1234-0018','samuel@test.net', 'samuel.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('hak','1','주학년','990101-1000019',now(), '010-1234-0019','hak@test.net', 'hak.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('mingi','1','최민기','950101-1000020',now(), '010-1234-0020','mingi@test.net', 'mingi.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('yong','1','김용국','960101-1000021',now(), '010-1234-0021','yong@test.net', 'yong.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('bin','1','권현빈','970101-1000022',now(), '010-1234-0022','mingi@test.net', 'bin.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('woong','1','이의웅','950101-1000023',now(), '010-1234-0023','woong@test.net', 'woong.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('kenta','1','켄타','950101-1000024',now(), '010-1234-0024','kenta@test.net', 'kenta.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('roh','1','노태현','930101-1000025',now(), '010-1234-0025','roh@test.net', 'roh.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('kyun','1','김상균','950101-1000026',now(), '010-1234-0026','kyun@test.net', 'kyun.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('hyun','1','김동현','980101-1000027',now(), '010-1234-0027','hyun@test.net', 'hyun.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('tdong','1','김태동','970101-1000028',now(), '010-1234-0028','tdong@test.net', 'tdong.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('seo','1','서성혁','990101-1000029',now(), '010-1234-0029','seo@test.net', 'seo.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('ye','1','김예현','990101-1000030',now(), '010-1234-0030','ye@test.net', 'ye.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('keon','1','이건희','980101-1000031',now(), '010-1234-0031','keon@test.net', 'keon.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('han','1','김동한','980101-1000034',now(), '010-1234-0034','mingi@test.net', 'han.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('jin','1','이우진','030101-1000035',now(), '010-1234-0035','jin@test.net', 'jin.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('dam','1','박우담','950101-1000036',now(), '010-1234-0036','dam@test.net', 'dam.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('dong','1','정동수','900101-1000037',now(), '010-1234-0037','dong@test.net', 'dong.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('sung','1','박성우','880101-1000038',now(), '010-1234-0038','sung@test.net', 'sung.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('sun','1','홍은기','970101-1000039',now(), '010-1234-0039','sun@test.net', 'sun.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('hoe','1','유회승','950101-1000040',now(), '010-1234-0040','hoe@test.net', 'hoe.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('young','1','우진영','970101-1000041',now(), '010-1234-0041','young@test.net', 'young.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('joo','1','주진우','930101-1000042',now(), '010-1234-0042','joo@test.net', 'joo.jpg');

insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('kimprof','1234','김교수','480101-1000043',now(), '010-1111-5678','kimprof@test.net', 'kimprof.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('ohprof','1234','오교수','580101-1000043',now(), '010-2222-5678','ohprof@test.net', 'ohprof.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('leeprof','1234','이교수','670101-1000044',now(), '010-3333-5678','leeprof@test.net', 'leeprof.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('jangprof','1234','장교수','790101-1000045',now(), '010-4444-5678','jangprof@test.net', 'jangprof.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('laprof','1234','라교수','770101-1000044',now(), '010-5555-5678','laprof@test.net', 'laprof.jpg');
insert into member(MEM_ID, pw ,name, ssn, regdate, phone, email, profile) values('hongprof','1234','홍교수','590101-1000045',now(), '010-6666-5678','hongprof@test.net', 'hongprof.jpg');

commit;

SELECT * FROM MEMBER;
SELECT count(*) AS count FROM MEMBER;
SELECT * FROM member WHERE mem_id='hong';

update MEMBER set pw='2' where id='hong';
update MEMBER set phone='010-1234-5678';
update member set profile='defaultimg.jpg';

delete from MEMBER where mem_id='test';

--***************************
-- subject table
-- 2017.08.02
-- 과목 테이블
-- subj_id, title, major_id
--***************************
--DDL
create table subject(
	subj_id VARCHAR(10),
	title VARCHAR(10),
	primary key(subj_id)
);

--DML
insert into subject(subj_id, title)values('java','자바');
insert into subject(subj_id, title)values('c','C언어');
insert into subject(subj_id, title)values('html','HTML');
insert into subject(subj_id, title)values('css','CSS');
insert into subject(subj_id, title)values('javascript','JavaScript');
insert into subject(subj_id, title)values('sql','SQL');

commit;

select * from subject;

--***************************
-- major table
-- 2017.08.02
-- 전공 테이블
-- major_id, title
--***************************
--DDL
create table major(
	major_id VARCHAR(10),
	title VARCHAR(10),
	subj_id VARCHAR(10),
	mem_id VARCHAR(10),
	PRIMARY KEY(major_id)
);

select * from major;

--***************************
-- Prof table
-- 2017.08.02
-- 교수 테이블
-- mem_id, salary
--***************************
--DDL
CREATE TABLE Prof(
	mem_id VARCHAR(10),
	salary VARCHAR(10),
	PRIMARY KEY(mem_id)
);
--FOREIGN KEY(mem_id) REFERENCES MEMBER(mem_id) ON DELETE CASCADE

--DML
insert into prof(mem_id, salary) values('kimprof', '10200');
insert into prof(mem_id, salary) values('ohprof', '8000');
insert into prof(mem_id, salary) values('leeprof', '6600');
insert into prof(mem_id, salary) values('jangprof', '9000');
insert into prof(mem_id, salary) values('laprof', '5600');
insert into prof(mem_id, salary) values('hongprof', '10800');

commit;

select m.mem_id, m.NAME, p.SALARY
from prof p, member m
where p.mem_id = m.mem_id;

--***************************
-- student table
-- 2017.08.02
-- 학생 테이블
-- view 테이블
--***************************
create view student (id, pw, name, ssn, email, phone, subjs, regdate)
as 
select t.id, t.pw, t.name, t.ssn, t.email, t.phone, t.subj, t.regdate 
from(
    select a.mem_id as id, a.pw, a.name, rpad(substr(a.ssn,1,8),14,'*') as ssn, a.email, a.phone, group_concat(distinct s.title order by s.subj_id) as subj, DATE_FORMAT(a.regdate, '%Y-%m-%d') as regdate
    from member a 
    left join major m on a.mem_id = m.mem_id
    left join subject s on m.subj_id = s.subj_id 
    group by a.mem_id, a.name, a.ssn, a.regdate, a.phone, a.email
    order by a.regdate
)t ;

--***************************
-- grade table
-- 2017.08.02
-- 성적 테이블
-- grade_seq, score, exam_date, subj_id, id
--***************************
--DDL
create table grade(
	grade_seq int AUTO_INCREMENT,
	score VARCHAR(3),
	exam_date VARCHAR(12),
	subj_id VARCHAR(10),
	mem_id VARCHAR(10), 
	primary key(grade_seq)
	
);
--foreign key(mem_id) references MEMBER(mem_id) on delete cascade,
--foreign key(subj_id) references subject(subj_id) on delete cascade

--DML
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '90', '2017-03', 'java', 'park');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '70', '2017-04', 'java', 'park');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '66', '2017-05', 'java', 'park');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '85', '2017-06', 'java', 'park');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '100', '2017-03', 'java', 'lee');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '95', '2017-04', 'java', 'lee');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '85', '2017-05', 'java', 'lee');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '85', '2017-06', 'java', 'lee');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '95', '2017-03', 'java', 'kim');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '65', '2017-04', 'java', 'kim');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '66', '2017-05', 'java', 'kim');
insert into grade(grade_seq, score, exam_date, subj_id, mem_id) values (seq.nextval, '85', '2017-06', 'java', 'kim');

--***************************
-- board table
-- 2017.08.02
-- 게시판관리 테이블
-- article_seq, id, title, content, regdate, hitcount
--***************************
--DDL
CREATE TABLE board(
	article_seq int AUTO_INCREMENT,
	id VARCHAR(10),
	title VARCHAR(20),
	content VARCHAR(100),
	regdate DATETIME,
	hitcount int,
	PRIMARY KEY(article_seq)
);
--FOREIGN KEY(id) REFERENCES MEMBER(mem_id) ON DELETE CASCADE

--DML
insert into board(id, title, content, hitcount, regdate)values('hong', 'title hong', '반짝이는 이상을 발휘하기 꽃이 말이다',0,now());
insert into board(id, title, content, hitcount, regdate)values('park', 'title park', '얼음과 거선의 원대하고, 새가 작고 운다',0,now());
insert into board(id, title, content, hitcount, regdate)values('kim', 'title kim', '보는 그들의 일월과 창공에 두손을 눈에 우리 아니다',0,now());
insert into board(id, title, content, hitcount, regdate)values('jun', 'title jun', '열매를 있는 인간에 새가 옷을 봄바람이다',0,now());
insert into board(id, title, content, hitcount, regdate)values('jung', 'title jung', '청춘이 그들의 철환하였는가 소담스러운 봄바람이다',0,now());
insert into board(id, title, content, hitcount, regdate)values('jung2', 'title jung2', '우리의 이상의 피는 같으며, 속에 우리는 황금시대다',0,now());
insert into board(id, title, content, hitcount, regdate)values('jung2', 'title jung2', '얼마나 크고 있는 뜨고, 이성은 싹이 대한 만물은 것이다',0,now());
insert into board(id, title, content, hitcount, regdate)values('jun', 'title jun', '풍부하게 얼음에 끝까지 사막이다',0,now());
insert into board(id, title, content, hitcount, regdate)values('la', 'title la', '것은 간에 인생에 피가 약동하다',0,now());
insert into board(id, title, content, hitcount, regdate)values('kang', 'title kang', '피부가 있을 석가는 투명하되 모래뿐일 뿐이다',0,now());
insert into board(id, title, content, hitcount, regdate)values('ong', 'title ong', '우리 행복스럽고 청춘을 쓸쓸하랴?',0,now());
insert into board(id, title, content, hitcount, regdate)values('kang', 'title kang2', '끝까지 그들의 그와 힘차게 자신과 구하지 위하여 황금시대다',0,now());

commit;

select * from board;

select  m.name, m.ssn
from member m, board b
where m.id = b.id

--***************************
-- member table
-- 2017.08.02
-- 회원 테이블
-- foreign key 추가: 없는 컬럼 추가후 제약조건 추가
--***************************
alter table member add major_id VARCHAR2(10);
alter table member add constraint member_fk_major
foreign key(major_id) references major(major_id);

--***************************
-- member, board, grade  table
-- 2017.08.02
-- 회원, 게시판, 성적 테이블
-- 컬럼명 수정: 외래키로 맺은 해당 컬럼이 들어가 있는 테이블 다 수정필요
--***************************
ALTER TABLE member RENAME COLUMN id TO mem_id;
ALTER TABLE board RENAME COLUMN id TO mem_id;
ALTER TABLE grade RENAME COLUMN id TO mem_id;

--***************************
-- join
-- 2017.08.02
--***************************
select avg(SCORE) from 
(select m.mem_id as id, m.name, mj.title as major, sj.TITLE as subject, g.SCORE, g.EXAM_DATE
  from member m, student s, grade g, subject sj, major mj
 where m.mem_id = s.mem_id
   and m.mem_id = g.MEM_ID
   and sj.MAJOR_ID = mj.MAJOR_ID
   and sj.SUBJ_ID = g.SUBJ_ID
 order by m.mem_id, g.EXAM_DATE
 )t
 where t.id = 'kim';

--mem_id를 입력하면 평균점수를 반환하는 sql
select avg() from (
select m.mem_id as id, m.name, mj.title as major, sj.TITLE as subject, g.SCORE, g.EXAM_DATE
  from member m, student s, grade g, subject sj, major mj
 where m.mem_id = s.mem_id
   and m.mem_id = g.MEM_ID
   and sj.MAJOR_ID = mj.MAJOR_ID
   and sj.SUBJ_ID = g.SUBJ_ID
 order by m.mem_id, g.EXAM_DATE
);


select t.id, avg(t.SCORE) 
from (select m.mem_id as id
           , g.SCORE
      from grade g
        inner join subject sj on sj.SUBJ_ID = g.SUBJ_ID
        inner join member m on m.mem_id = g.MEM_ID
     )t
group by t.id
having avg(t.SCORE) >70
order by avg(t.SCORE) desc
;

--paging처리
select rownum as no, t2.*  
from (
    select t.id, avg(t.SCORE) as avg
    from (select m.mem_id as id
               , g.SCORE
          from grade g
            inner join subject sj on sj.SUBJ_ID = g.SUBJ_ID
            inner join member m on m.mem_id = g.MEM_ID
         )t
    group by t.id
    order by avg(t.SCORE) desc
) t2
where rownum < 11
;

select t.id, avg(t.SCORE) as avg, ROW_NUMBER() OVER(ORDER BY avg(t.SCORE) DESC) rank
    from (select m.mem_id as id
               , g.SCORE
          from grade g
            inner join subject sj on sj.SUBJ_ID = g.SUBJ_ID
            inner join member m on m.mem_id = g.MEM_ID
         )t
    group by t.id
    order by avg(t.SCORE) desc
    ;

select * from (
select m.mem_id as id, m.name, mj.title as major, sj.TITLE as subject, g.SCORE
  from grade g
    inner join member m on m.mem_id= g.mem_id
    inner join student s on s.mem_id = m.mem_id
    inner join subject sj on sj.SUBJ_ID = g.SUBJ_ID
    inner join major mj on sj.MAJOR_ID = mj.MAJOR_ID
  where m.mem_id='park'
order by m.mem_id, g.EXAM_DATE
);



select * 
from member
where mem_id not in (
        select distinct m.mem_id
        from member m, board b
        where m.mem_id = b.mem_id
)
;

select * 
from member m
where NOT EXISTS (
        select 1
        from board b
        where m.mem_id = b.mem_id
)
;

select m.mem_id, m.name, b.title, b.content
from member m,
    (select mem_id, title, content from board
      where mem_id='jung2') b
where m.mem_id = b.mem_id
;