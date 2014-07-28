INSERT INTO interview.Roles (Id, Name) VALUES ('1', 'ADMIN');
INSERT INTO interview.Roles (Id, Name) VALUES ('2', 'USER');
INSERT INTO interview.Roles (Id, Name) VALUES ('3', 'HR');

INSERT INTO interview.Users (Id, Active, Email, Name, Password, Phone, Surname, role_Id) VALUES ('1', 1, 'lucky@strike.com', 'John', 'eed346aede1c64193b74d7264a809c3e', '0634942253', 'Doe', '1');
INSERT INTO interview.Users (Id, Active, Email, Name, Password, Phone, Surname, role_Id) VALUES ('2', 1, 'va@gmail.com', 'Victoria', 'eed346aede1c64193b74d7264a809c3e', '0634942253', 'Smith', '2');
INSERT INTO interview.Users (Id, Active, Email, Name, Password, Phone, Surname, role_Id) VALUES ('3', 1, 'bb@gmail.com', 'Bernardo', 'eed346aede1c64193b74d7264a809c3e', '0634942253', 'Batista', '3');
INSERT INTO interview.Users (Id, Active, Email, Name, Password, Phone, Surname, role_Id) VALUES ('4', 1, 'ac@ybivai.com', 'Alla', 'eed346aede1c64193b74d7264a809c3e', '0634942253', 'Cruper', '1');
INSERT INTO interview.Users (Id, Active, Email, Name, Password, Phone, Surname, role_Id) VALUES ('5', 1, 'dod@dod.com', 'Francisco', 'eed346aede1c64193b74d7264a809c3e', '0634942253', 'Chang', '1');
INSERT INTO interview.Users (Id, Active, Email, Name, Password, Phone, Surname, role_Id) VALUES ('6', 1, 'paoloA@gmail.com', 'Paolo', 'eed346aede1c64193b74d7264a809c3e', '0634942253', 'Accorti', '2');
INSERT INTO interview.Users (Id, Active, Email, Name, Password, Phone, Surname, role_Id) VALUES ('7', 1, 'fran@gmail.com', 'Fran', 'eed346aede1c64193b74d7264a809c3e', '0634942253', 'Wilson', '3');

INSERT INTO interview.Questions VALUES ('1', 'What do you know about Java?', 1);
INSERT INTO interview.Questions VALUES ('2', 'What are the supported platforms by Java Programming Language?', 1);
INSERT INTO interview.Questions VALUES ('3', 'List any five features of Java?', 1);
INSERT INTO interview.Questions VALUES ('4', 'What kind of variables a class can consist of?', 1);
INSERT INTO interview.Questions VALUES ('5', 'What is a static variable?', 1);
INSERT INTO interview.Questions VALUES ('6', 'Why is String class considered immutable?', 1);
INSERT INTO interview.Questions VALUES ('7', 'Explain Set Interface.', 2);
INSERT INTO interview.Questions VALUES ('8', 'Difference between throw and throws?', 3);
INSERT INTO interview.Questions VALUES ('9', 'Describe life cycle of thread.', 4);
INSERT INTO interview.Questions VALUES ('10', 'Explain suspend() method under Thread class.', 4);

INSERT INTO interview.Users_Questions VALUES ('1', '1');
INSERT INTO interview.Users_Questions VALUES ('1', '2');
INSERT INTO interview.Users_Questions VALUES ('1', '3');
INSERT INTO interview.Users_Questions VALUES ('1', '4');
INSERT INTO interview.Users_Questions VALUES ('1', '5');
INSERT INTO interview.Users_Questions VALUES ('1', '6');
INSERT INTO interview.Users_Questions VALUES ('1', '7');
INSERT INTO interview.Users_Questions VALUES ('1', '8');
INSERT INTO interview.Users_Questions VALUES ('1', '9');
INSERT INTO interview.Users_Questions VALUES ('1', '10');

INSERT INTO interview.Applicants (Id, Email, Phone, Birthday, Name, Surname) VALUES ('1', 'lefft@ya.ru', '', 0, 'Anton', 'Kravchuk');
INSERT INTO interview.Applicants (Id, Email, Phone, Birthday, Name, Surname) VALUES ('2', 'vasya@pupkin.su',  '', 0, 'Vasya', 'Pupkin');
INSERT INTO interview.Applicants (Id, Email, Phone, Birthday, Name, Surname) VALUES ('3', 'rastaman@gmail.com', '', 0, 'Jozef', 'Jonson');
INSERT INTO interview.Applicants (Id, Email, Phone, Birthday, Name, Surname) VALUES ('4', 'vasiliy@gmail.com', '', 0, 'Harison', 'Ford');
INSERT INTO interview.Applicants (Id, Email, Phone, Birthday, Name, Surname) VALUES ('5', 'nikolay@gmail.com', '', 0, 'Mary', 'Bloody');
INSERT INTO interview.Applicants (Id, Email, Phone, Birthday, Name, Surname) VALUES ('6', 'denis@gmail.com', '', 0, 'Jecob', 'Tornnnntoooon');
INSERT INTO interview.Applicants (Id, Email, Phone, Birthday, Name, Surname) VALUES ('7', 'andrey@gmail.com', '', 0, 'Francis', 'Copppola');
INSERT INTO interview.Applicants (Id, Email, Phone, Birthday, Name, Surname) VALUES ('8', 'anton@gmail.com', '', 0, 'Billy', 'Jeam');


INSERT INTO interview.Course (Id, ImageReference, Name) VALUES ('297ea2cd476e53d001476e540a5e0111', 'pen-java.png', 'Java');
INSERT INTO interview.Course (Id, ImageReference, Name) VALUES ('297ea2cd476e53d001476e540a5f0012', 'pen-net.png', '.NET');
INSERT INTO interview.Course (Id, ImageReference, Name) VALUES ('297ea2cd476e53d001476e540a600013',  'pen-devops.png', 'DevOps');
INSERT INTO interview.Course (Id, ImageReference, Name) VALUES ('297ea2cd476e53d001476e540f350015', 'pen-jsui.png', 'JavaScript');



INSERT INTO interview.Groups (Id, Address, Capacity, EndTime, GroupName, StartBoardingTime, StartTime, course_Id) VALUES ('297ea2cd47737b6c0147737b8ced0001', 'Degtya', 0, 0, 'ITA-004', 0, 0, '297ea2cd476e53d001476e540a5e0111');
INSERT INTO interview.Groups (Id, Address, Capacity, EndTime, GroupName, StartBoardingTime, StartTime, course_Id) VALUES ('297ea2cd47737b6c0147737b8ced0002', 'Degtya', 0, 0, 'ITA-005', 0, 0, '297ea2cd476e53d001476e540a5f0012');
INSERT INTO interview.Groups (Id, Address, Capacity, EndTime, GroupName, StartBoardingTime, StartTime, course_Id) VALUES ('297ea2cd47737b6c0147737b8ced0003', 'Degtya', 0, 0, 'ITA-006', 0, 0, '297ea2cd476e53d001476e540a600013');
INSERT INTO interview.Groups (Id, Address, Capacity, EndTime, GroupName, StartBoardingTime, StartTime, course_Id) VALUES ('297ea2cd47737b6c0147737b8ced0004', 'Degtya', 0, 0, 'ITA-007', 0, 0, '297ea2cd476e53d001476e540f350015');


INSERT INTO interview.Appointments (Id, ActualStartTime, ApplicantId, DurationTime, GroupId, StartTime) VALUES ('4028819947789da3014778a3bf850000', 0, '1', 1800000, '297ea2cd47737b6c0147737b8ced0001', 1407672000000);
INSERT INTO interview.Appointments (Id, ActualStartTime, ApplicantId, DurationTime, GroupId, StartTime) VALUES ('4028819947789da3014778a3eb8c0001', 0, '8', 1800000, '297ea2cd47737b6c0147737b8ced0001', 1407675600000);
INSERT INTO interview.Appointments (Id, ActualStartTime, ApplicantId, DurationTime, GroupId, StartTime) VALUES ('4028819947789da3014778a4019e0002', 0, '6', 1800000, '297ea2cd47737b6c0147737b8ced0001', 1407679200000);
INSERT INTO interview.Appointments (Id, ActualStartTime, ApplicantId, DurationTime, GroupId, StartTime) VALUES ('4028819947789da3014778a416b70003', 0, '3', 1800000, '297ea2cd47737b6c0147737b8ced0001', 1407682800000);
INSERT INTO interview.Appointments (Id, ActualStartTime, ApplicantId, DurationTime, GroupId, StartTime) VALUES ('4028819947789da3014778a6d52d0004', 0, '4', 1800000, '297ea2cd47737b6c0147737b8ced0001', 1407686400000);


INSERT INTO interview.ApplicantsWithStatus (Id, ApplicantsStatus, ApplicantId) VALUES ('297ea2cd47737b6c0147737b8ced0001', 0xACED00057372002E636F6D2E736F66747365727665696E632E6974612E656E746974792E4170706C6963616E7442656E63686D61726B17646B041C62E66002000249000472616E6B4C000673746174757374002E4C636F6D2F736F66747365727665696E632F6974612F656E746974792F4170706C6963616E74245374617475733B7870000000027E72002C636F6D2E736F66747365727665696E632E6974612E656E746974792E4170706C6963616E742453746174757300000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740008454D504C4F594544, '1');
INSERT INTO interview.ApplicantsWithStatus (Id, ApplicantsStatus, ApplicantId) VALUES ('297ea2cd47737b6c0147737b8ced0002', 0xACED00057372002E636F6D2E736F66747365727665696E632E6974612E656E746974792E4170706C6963616E7442656E63686D61726B17646B041C62E66002000249000472616E6B4C000673746174757374002E4C636F6D2F736F66747365727665696E632F6974612F656E746974792F4170706C6963616E74245374617475733B7870000000027E72002C636F6D2E736F66747365727665696E632E6974612E656E746974792E4170706C6963616E742453746174757300000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740008454D504C4F594544, '2');
INSERT INTO interview.ApplicantsWithStatus (Id, ApplicantsStatus, ApplicantId) VALUES ('297ea2cd47737b6c0147737b8ced0003', 0xACED00057372002E636F6D2E736F66747365727665696E632E6974612E656E746974792E4170706C6963616E7442656E63686D61726B17646B041C62E66002000249000472616E6B4C000673746174757374002E4C636F6D2F736F66747365727665696E632F6974612F656E746974792F4170706C6963616E74245374617475733B7870000000027E72002C636F6D2E736F66747365727665696E632E6974612E656E746974792E4170706C6963616E742453746174757300000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740008454D504C4F594544, '3');
INSERT INTO interview.ApplicantsWithStatus (Id, ApplicantsStatus, ApplicantId) VALUES ('297ea2cd47737b6c0147737b8ced0004', 0xACED00057372002E636F6D2E736F66747365727665696E632E6974612E656E746974792E4170706C6963616E7442656E63686D61726B17646B041C62E66002000249000472616E6B4C000673746174757374002E4C636F6D2F736F66747365727665696E632F6974612F656E746974792F4170706C6963616E74245374617475733B7870000000027E72002C636F6D2E736F66747365727665696E632E6974612E656E746974792E4170706C6963616E742453746174757300000000000000001200007872000E6A6176612E6C616E672E456E756D00000000000000001200007870740008454D504C4F594544, '4');


INSERT INTO interview.Interview (interview_id, InterviewType) VALUES ('1', 0);
INSERT INTO interview.Interview (interview_id, InterviewType) VALUES ('2', 0);