create view student (num, id, pw, name, ssn, email, phone, subj, regdate)
as
select rownum as NO, t.id, t.pw, t.name, t.ssn, t.email, t.phone, t.subj, t.regdate 
from(
		select m.mem_id as id, m.pw as pw, m.name as name, substr(m.ssn,1,6) as ssn, m.email as email, m.phone as phone, listagg(s.title,',') within group(order by s.title)as subj, substr(m.regdate,1) as regdate
		  from member m left join major j on m.mem_id like j.mem_id
	  	  				left join subject s on j.subj_id like s.subj_id
	  	  group by m.mem_id, name, ssn, email, phone, regdate 
	  	  order by m.regdate
	)t 
order by NO desc;


select * 
from member a 
left join major m on a.mem_id = m.mem_id
left join subject s on m.subj_id = m.subj_id 

;



