--2.7.1
select student_id, surname, stipend*1.2
	from student
	order by 3;

select student_id, surname, stipend*1.2
	from student
	order by 2;

--2.7.2
select student_id, min(mark), max(mark), avg(mark)
	from exam_marks
	group by student_id;

--2.7.3
select semester, subj_name, subj_id
	from subject
	order by semester desc;

select semester, hour, subj_name, subj_id
	from subject
	order by hour;

--2.7.4
select exam_date, sum(mark)
	from exam_marks
	group by exam_date
	order by 2 desc;