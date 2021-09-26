/*3. get number problems solved in codekata by combining the users*/

Use students;
SELECT users.userid, users.username,users.email, codekata.number_problems 
FROM users
INNER JOIN codekata ON users.userid = codekata.userid;

/*.....................................................................................................................................................*/

/*4. display the no of company drives attended by a user*/

/*for specific user*/
Use students;
SELECT userid ,count(userid) AS Drives_Attended
FROM company_drives
GROUP BY userid HAVING userid=1;

/*for all user*/
use students;

SELECT userid ,count(userid) AS Drives_Attended
FROM company_drives
GROUP BY userid;
/*.........................................................................................................................................................*/

/*5. combine and display students_activated_courses and courses for a specific user groping them based on the course*/

use students;

SELECT students_activated_courses.userid,students_activated_courses.courseid,
COUNT(students_activated_courses.courseid) ,courses.coursename
FROM students_activated_courses
INNER JOIN courses ON students_activated_courses.courseid=courses.courseid
WHERE students_activated_courses.userid=1
GROUP BY courses.courseid;

/*......................................................................................................................................................*/

/*6. list all the mentors*/

USE  students;
/*SELECT * from mentors;*/
SELECT mentorid,mentorname FROM mentors;

/*.........................................................................................................................................................*/

/*7. list the number of students that are assigned for a mentor*/

/*for specific mentor*/
USE students;
SELECT mentors.mentorid,mentors.mentorname,COUNT(users.mentorid) AS NUMBER_OF_STUDENTS
FROM mentors,users
WHERE mentors.mentorid=users.mentorid 
GROUP BY mentors.mentorid HAVING mentors.mentorid=4;

/*for all mentors*/
USE students;
SELECT mentors.mentorid,mentors.mentorname,COUNT(users.mentorid) AS NUMBER_OF_STUDENTS
FROM mentors,users
WHERE mentors.mentorid=users.mentorid 
GROUP BY mentors.mentorid;

