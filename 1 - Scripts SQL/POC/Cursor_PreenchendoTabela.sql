create table poc (codigo int primary key identity, nome varchar (100));
go

declare @ctr int = 1;

label1:

insert into poc(nome) values ('Fulano' + CAST(@ctr as varchar(10)));

set @ctr = @ctr + 1;

while (@ctr <=  5000) goto label1;
go

select * from poc;

go

delete from poc;