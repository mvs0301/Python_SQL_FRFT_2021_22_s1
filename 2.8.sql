--2.8.1
select * from student where stipend=(
	select max(stipend) from student
	) order by surname;

--2.8.2
select * from student where stipend>(
	select avg(stipend) from student
	) order by surname;

--2.8.3
select * from student
	where student.univ_id in (
		select university.univ_id from university
		where university.city="Воронеж"
	)
	order by univ_id, kurs;

--2.8.4
select subject.subj_name from subject
	where subject.hour = (
		select max(hour) from subject
	);

--2.8.5
select * from student
	where student.city not in (
		select university.city from university
		where student.univ_id=university.univ_id
	);

--2.8.6
select * from university
	where city="Москва" and
	rating < (
		select rating from university 
			where univ_name="ВГУ"
			);