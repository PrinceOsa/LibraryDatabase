Drop Database LibraryShelf;
Create Database LibraryShelf;
USE LibraryShelf;


Create table Person (
PersonID Int NOT NULL,
FName VARCHAR(155),
LName VARCHAR(155),
StreetName VARCHAR(300),
City VARCHAR(155),
State VARCHAR(200),
ZIP VARCHAR(200),
Phone VARCHAR(200),
Email VARCHAR(300),
Primary Key (PersonID)
);

Create Table Editor (
EditorsID INT NOT NULL,
EditorsName VARCHAR(55),
EditorsLastName VARCHAR(55),
EmployerName VARCHAR(200),
PersonID Int,
FOREIGN KEY (PersonID) references Person (PersonID),
Primary Key (EditorsID)
);

Create Table Author (
AuthorID INT NOT NULL,
Nationality VARCHAR(300),
DateOfBirth DATE DEFAULT '2019-03-01',
PersonID INT,
FOREIGN KEY (PersonID) references Person (PersonID),
Primary Key (AuthorID)
);

Create table Publisher (
PublisherID Int NOT NULL,
PublisherLocation VARCHAR(300),
PublisherName VARCHAR(255),
Primary Key (PublisherID)
);

Create Table Subject (
SubjectID INT NOT NULL,
SubjectName VARCHAR(255),
Primary Key (SubjectID)
);
Create Table Photographers (
PhotographID INT NOT NULL,
YearCreated INT,
PhotoName VARCHAR(55),
ColorCode VARCHAR(255),
AuthorID INT,
SubjectID INT,
FOREIGN KEY (AuthorID) references Author (AuthorID),
FOREIGN KEY (SubjectID) references Subject (SubjectID),
Primary Key (PhotographID)
);

Create Table Quote( 
QuoteID Int NOT Null DEFAULT 0,
QuoteText VARCHAR(1500),
Primary Key (QuoteID)
);




Create Table Title (
TitleID INT NOT NULL,
Name VARCHAR(350),
ISBN INT,
Edition VARCHAR(255),
Published INT,
NumberOfPages INT,
Media VARCHAR(55),
PublisherID INT,
SubjectID INT,
PhotographID INT,
AuthorID INT,
EditorsID INT,
QuoteID INT,
FOREIGN KEY (PublisherID) references Publisher (PublisherID),
FOREIGN KEY (SubjectID) references Subject (SubjectID),
FOREIGN KEY (PhotographID) references Photographers (PhotographID),
FOREIGN KEY (AuthorID) references Author (AuthorID),
FOREIGN KEY (EditorsID) references Editor (EditorsID),
Primary Key (TitleID)
);

INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (1,"Marsden","Newman","Ap #564-480 Egestas Street","Stirling","Jersey","28876-008","1-337-695-7956","venenatis.a.magna@atpedeCras.ca");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (11,"Gannon","Campbell","Ap #699-4861 Sodales Road","Lidingo","Mayotte","54663","1-684-342-1384","quis@AliquamnislNulla.ca");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (21,"Vincent","Berry","154-6459 Placerat. St.","Córdoba","Jersey","4808 OT","1-224-638-5304","nec@malesuadaaugue.org");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (22,"Tarik","Riley","1548 Id Street","Cobourg","Liechtenstein","314995","1-489-805-5961","lectus.Nullam.suscipit@variuset.edu");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (23,"Cyrus","Duran","Ap #517-4324 Aliquam Road","Viesville","Angola","6715","1-324-344-1107","gravida.non@vestibulum.ca");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (24,"Gil","Campos","P.O. Box 550, 2683 Vitae Ave","Sterrebeek","Georgia","31715","1-886-219-2117","ante@euelitNulla.net");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (25,"Burke","Houston","P.O. Box 586, 9401 Nunc Rd.","Des Moines","Viet Nam","87077","1-413-758-3446","risus.a.ultricies@idliberoDonec.ca");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (26,"Carl","Bernard","Ap #458-8721 Phasellus Avenue","Augsburg","Congo (Brazzaville)","73922","1-900-804-4701","Aenean@sagittisplacerat.edu");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (27,"Garth","Clay","3594 Sodales St.","Nederhasselt","Fiji","4677 KP","1-342-479-4193","natoque.penatibus@necluctus.net");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (28,"Ishmael","Lang","Ap #717-8897 Ante. Road","Sant'Ilario dello Ionio","Saint Pierre and Miquelon","8127","1-842-394-8771","Vestibulum.ante.ipsum@montesnasceturridiculus.net");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (29,"Jack","Santana","686-3500 Convallis Street","Helkijn","Kuwait","G9N 5EO","1-772-940-4798","Quisque@orci.edu");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (30,"Allen","Frye","836-7412 Mauris Av.","Viesville","United States Minor Outlying Islands","15262","1-165-822-6744","penatibus.et.magnis@Integer.co.uk");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (31,"Quinlan","Coffey","P.O. Box 128, 6384 Nec, Road","Southaven","Philippines","18016","1-903-381-8373","tempus.risus.Donec@morbitristique.net");
INSERT INTO `Person` (`PersonID`,`FName`,`LName`,`StreetName`,`City`,`State`,`ZIP`,`Phone`,`Email`) VALUES (32,"Hector","Camacho","P.O. Box 196, 5823 Aliquam Street","Shreveport","Korea, South","13989","1-528-273-6314","nisl@ipsumnonarcu.co.uk");

INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (1,'Tom', 'Carey',"Ligula Aliquam Erat Company", 1);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (2,'James','Worthy',"Blandit At Nisi Institute", 11);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (3,'Jordan', 'Banks',"Vitae Diam Proin Associates",21);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (5,'Tommy', 'John',"Sed Nunc Est Corp.", 22);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (6,'Jenny','Racer',"Luctus Ipsum LLC",23);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (7,'Taylor', 'Giffith',"Risus Ltd", 24);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (8,'Johnny', 'Cash',"Mattis Cras Eget Corporation", 25);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (9,'Avery', 'Johnson',"Quis Tristique Ac Incorporated", 26);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (10,'Paul', 'George',"Leo Vivamus Foundation", 27);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (11,'Chris', 'Paul', "Et Corp.", 28);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (12,'Kevin', 'James', "In Magna Consulting", 29);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (13,'Josh', 'Mason', "Aliquet Molestie Tellus Institute", 30);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (14,'Bradley', 'Beal', "Morbi Non Limited", 31);
INSERT INTO `Editor` (`EditorsID`,`EditorsName`, `EditorsLastName`, `EmployerName`, `PersonID`) VALUES (15,'Constant', 'Leprish',"Lectus Industries", 32);

INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (1,"Cape Verde",'2021-5-11', 1);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (2,"Algeria",'2011-3-11', 11);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (3,"Saint Helena, Ascension and Tristan da Cunha",'2001-5-1',21);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (4,"Liberia",'2021-2-4', 22);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (5,"Uzbekistan",'2021-5-11', 23);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (6,"Guinea",'2012-9-8',24);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (7,"Ukraine",'1989-3-1',25);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (8,"Gibraltar",'1993-12-6',26);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (9,"Cayman Islands",'2014-7-10',27);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (10,"Romania",'1982-5-12',28);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (11,"Côte D'Ivoire (Ivory Coast)",'1978-5-3',29);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (12,"Antarctica",'1953-3-11',30);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (13,"Czech Republic",'1999-9-1',31);
INSERT INTO `Author` (`AuthorID`,`Nationality`,`DateOfBirth`, `PersonID`) VALUES (14,"Kiribati",'1985-5-6',32);

INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (1,"GO","In Ltd");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (2,"Saskatchewan","Sit Inc.");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (3,"South Australia","In Foundation");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (4,"CA","Nibh Lacinia Orci Institute");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (5,"QC","Diam Dictum Industries");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (6,"NI","Convallis Foundation");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (7,"Connacht","Consectetuer Rhoncus Nullam LLC");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (8,"PA","Fusce Fermentum Limited");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (9,"Haryana","Malesuada Integer Id Corp.");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (10,"Bursa","Eget Inc.");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (11,"ON","Suspendisse Tristique Neque Institute");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (12,"ON","Rhoncus Donec Est Institute");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (13,"North Island","Eros Turpis Industries");
INSERT INTO `Publisher` (`PublisherID`,`PublisherLocation`,`PublisherName`) VALUES (14,"Puglia","Risus Varius Orci Ltd");

INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (1,"History");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (2,"Fiction");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (3,"Biography");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (4,"Auto Biography");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (5,"Historical Fiction");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (6,"Non Fiction");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (7,"Fiction");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (8,"Fiction");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (9,"Non Fiction");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (10,"History");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (11,"Biography");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (12,"Auto Biography");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (13,"History");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (14,"History");
INSERT INTO `Subject` (`SubjectID`,`SubjectName`) VALUES (15,"Fiction");

INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (1,1912,"Turnpike","Yellow",1,1);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (2,1919,"Sunrise","Yellow",2,2);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (3,2005,"Sunset","Purple",3,3);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (4,1915,"Rise","Blue",4,4);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (5,1978,"Car","Green",5,5);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (6,1976,"Tree","Yellow",6,6);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (7,1959,"Pumpkin","Red",7,7);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (8,1930,"Orange","Turquios",8,8);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (9,1913,"Apple","Green",9,9);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (10,1973,"Money","Orange",10,10);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (11,1942,"coins","Pink",11,11);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (12,1960,"Phone","Purple",12,12);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (13,1928,"Mercedes","Red",13,13);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (14,2013,"Charger","Yellow",14,14);
INSERT INTO `Photographers` (`PhotographID`,`YearCreated`,`PhotoName`,`ColorCode`,`AuthorID`,`SubjectID`) VALUES (15,1992,"Lightning","Blue",14,15);

INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (1 , "All I want for Christmas is You!");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (2 , "Hey Mr Carter");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (3 , "Theres a snake in my boot.");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (4 , "Your time is limited so dont waste it");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (5 , "Give, Give, Give");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (6 , "Dont stop jimmy");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (7 , "Run Forest Run!");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (8 , "Don't touch my hair.");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (9 , "Hey, its Johnny.");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (10 , "This right here is my swag");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (11, "Dont make enemies with me");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (12 , "Dont stop grinding till you make it to the top");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (13 , "All these long nights will pay off");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (14 , "Strugle Strugle Strugle we had to Strugle");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (15 , "Hi, dont stop making that money");
INSERT INTO `Quote` (`QuoteID`,`QuoteText`) Values (16 , "The jungle was full of Animals");

INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (1,"Books are Made for Reading",1727943472,"1","2015",199,"Audio",1,1,1,1,1,1);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (2,"Relashionships in the digital era",1791976595,"1","2002",212,"Audio",2,2,2,2,2,2);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (3,"Money is Crutial",1448021750,"5","2012",203,"ebook",3,3,3,3,3,3);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (4,"How to be an Owner",220127138,"7","2011",213,"ebook",4,4,4,4,5,4);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (5,"Investing while broke",2042015835,"2","2000",109,"Audio",5,5,5,5,5,5);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (6,"Only in America",1547273176,"1","1994",478,"ebook",6,6,6,6,6,6);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (7,"Millionaire Mindset",1211308771,"1","2008",56,"Audio",7,7,7,6,7,7);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (8,"The Songhai Empire",1597279663,"1","2014",102,"Audio",8,8,8,7,8,8);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (9,"Egypt at its peak",221683980,"2","1999",324,"Audio",9,9,9,8,9,9);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (10,"Creation of man",1269838937,"2","1996",442,"ebook",10,10,10,9,10,10);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (11,"Money is the round table",1224026046,"1","1996",353,"Audio",11,11,11,10,11,11);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (12,"Adventures in the Woods",1947391246,"4","1990",434,"Audio",12,12,12,11,12,12);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (13,"Rich Dad Poor Dad",2051103889,"3","2003",95,"ebook",13,13,13,12,13,13);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (14,"The Conquering",1232423898,"2","1991",148,"Audio",14,14,15,13,14,14);
INSERT INTO `Title` (`TitleID`,`Name`,`ISBN`,`Edition`,`Published`,`NumberOfPages`,`Media`,`PublisherID`,`SubjectID`,`PhotographID`, `AuthorID`,`EditorsID`,`QuoteID`) VALUES (15,"Beauty and the Beast",1754682225,"1","2004",80,"ebook",14,15,15,14,15,15);

Delete From Quote Where QuoteID =16;
Update Quote 
Set QuoteText = 'Jingle bell Jingle bell Jingle Bell Rock'
Where QuoteID = 15 ;

/*SQL Procedure*/
DELIMITER $$
CREATE Procedure SelectAllCustomers ()
BEGIN
SELECT *FROM Author;
END$$
DELIMITER ;
Call SelectAllCustomers;

/*SQL Trigger*/
Delimiter $$ 
Create Trigger SubjectDelete Before Delete
On Subject
For each row Begin
Insert Into Title (SubjectID) Values(0);
End$$
Delimiter ;


SELECT *from Person;
SELECT *from Title;
SELECT *from Publisher;
SELECT *from Subject;
SELECT *from Editor;
SELECT *from Photographers;

/*Author Reports -SQL for required reports*/
SELECT Person.FName,Title.Name
From Title,Person,Author
Where Title.authorID = Author.authorID AND Author.PersonID = Person.PersonID
Order By Fname; 

SELECT Person.FName,Title.Name,Editor.EmployerName, Publisher.PublisherName, Publisher.PublisherLocation
From Title,Person,Author,Editor,Publisher
Where Title.authorID = Author.authorID AND Author.PersonID = Person.PersonID AND Person.PersonID = Editor.PersonID AND Title.PublisherID = Publisher.PublisherID;

SELECT Person.FName, Person.LName, Author.DateofBirth
From Author, Person
Where Author.PersonID = Person.PersonID and TIMESTAMPDIFF(Year, Author.DateOfBirth, '2019-12-3') < 31;

/*Editor Reports -SQL for required reports*/
SELECT Editor.EditorsName, Editor.EditorsLastName, Person.Fname, Person.Lname, Title.Name
From Author, Editor, Person, Title
Where Title.AuthorID = Author.AuthorID And Title.EditorsID = Editor.EditorsID AND Author.PersonID = Person.PersonID;

Select Editor.EditorsName, Editor.EditorsLastName, Editor.EmployerName
From Editor;

/*Title Reports -SQL for required reports*/
Select Name, FName, LName, published, SubjectName, Media, PhotoName
From Title,Person,Subject,Author,Photographers
Where Title.AuthorID = Author.AuthorID AND Author.PersonID = Person.PersonID And Title.SubjectID = Subject.SubjectID AND Title.photographID = Photographers.photographID;

SELECT PhotoName, Count(Title.photographID)
From Photographers, TItle
Where Title.photographID = Photographers.photographID
Group BY PhotoName
Having Count(Title.photographID) >1; 

SELECT Title.Name, PhotoName
FROM Photographers, Title
NATURAL JOIN Title PhotoName
WHERE Title.Media = 'ebook' AND Title.NumberofPages>200 AND Title.PhotographID = Photographers.photographID;

SELECT DISTINCT Title.Name, Photographers.PhotoName
FROM Photographers, Title
JOIN Title P2
WHERE Title.Media = 'ebook' AND Title.NumberofPages>200 AND Title.PhotographID = Photographers.photographID;

Select Name, SubjectName, QuoteText
From Title, Subject, Quote
Where Title.SubjectID = Subject.SubjectID AND Title.QuoteID = Quote.QuoteID AND Subject.SubjectName ='History' AND Title.Published<2000;

SELECT Title.Name, Edition
From Title 
Where Edition>1;