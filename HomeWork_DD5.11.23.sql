use uni;

select * from competencies;
select * from courses;
select * from students;
select * from teachers;
select * from students2courses;
select * from teachers2competencies;

 -- 1 уровень сложности: 
 
 
-- 1) Задачу 1 сделали в классе.
-- 2) Вывести имена всех преподавателей с их компетенциями

select
	t1.name,
	t3.title 
from teachers as t1
inner join teachers2competencies t2 on t2.teacher_id=t1.id
inner join competencies t3 on t2.competencies_id=t3.id;

-- 3) Найти преподавателя, у которого нет компетенций

select
	teachers.id,
	teachers.name,
    competencies.title as competency
from teachers 
	left join teachers2competencies on teachers.id=teachers2competencies.teacher_id
    left join competencies on competencies.id=teachers2competencies.competencies_id
    where competencies.title is null;

        

-- 4) Найти имена студентов, которые не проходят ни один курс

select
	students.id,
	students.name,
    courses.title
from students
	left join students2courses on students2courses.student_id=students.id
    left join courses on students2courses.course_id=courses.id
    where courses.title is null;


-- 5) Найти курсы, которые не посещает ни один студент

select
	courses.id,
	courses.title,
	students.id 
from courses
	left join students2courses on students2courses.course_id=courses.id
    left join students on students2courses.student_id=student_id
	where students.id is null;

-- 6) Найти компетенции, которых нет ни у одного преподавателя

select
	competencies.title,
    teachers.id
from competencies
	left join teachers2competencies on teachers2competencies.competencies_id=competencies.id
    left join teachers on teachers.id=teachers2competencies.teacher_id
	where teachers.id is null;

-- 8) Вывести имя студента и имена старост, которые есть на курсах, которые он проходит

select
	students.name,
    courses.headman_id,
    courses.title
from students
	left join students2courses on students2courses.student_id=students.id
    left join courses on courses.id=students2courses.course_id;


