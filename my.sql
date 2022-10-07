
/*
Sql -> Structure query languge
1. DDl(Data defination languge):
create
alter
drop
rename
turncae
comment
-----------------
2. DML(Data manipation languge):
select
insert 
update 
delete
merge 
call
explain plan
lock table
-------------------------
3. TCL(Transaction control languge):
commit 
rollback
savepoint
set transaction
-----------------------
4. DCl(Data control languge):
Grant 
Revoke
Deny -> readonly


------------------------
Normalization
1.Normal Form 1N:(Horizontal Depency)
  1. Pk(Primary key)
  2. Domain value reserved
  3. atomic Value(تقسيم القيم)
  
2. 2NF: Vertical Dependency  
  1. 1NF
  2. Composite key:All non key attributes full dependancy on table pk
     Single key   :By Defulte Fully Dependncy satsified 
  3. vertical redundancy

3. 3rd Normal Form(3NF): Transitive Dependency 
   1. 2NF
   2. All Non key attributes are soley Dependent on the table Pk
4. 3.5 Norma form(Boyce code Normal form) (Stricter 3NF shape)
  1. 3rd NF
  2. Composite Key
  3. Super key left hand side
  

 -Query
 -- foreign key
    - ManagerId int foreign key refernces MP.Managers(Id) not null
    - foreign key ( ManagerId) refernces  MP.Managers(Id)

 -- alter
    - alter table [name table] add col12 varchar(34) not null
    - alter table [name table ] drop column col12

 -- add Unique constraint
    - alter table  [name table] add constraint UN_Email unique(Email);
 -- Default
    -alter table  [name table] add constraint DFT_Parked defualt 0 for proked

 --identity
    -id int primary key identity(1,1)
*/