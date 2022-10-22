---Function

--Function without parameter
create function showMessage()
returns varchar(100)
as
begin
return 'welcome to function'

end

--To call function

select dbo.showMessage();

--Function with single parameter

create function TakeANum(@num as int)
returns int
as 
begin
return(@num * @num) 
end

select dbo.TakeANum(10);


--Function with multiple parameter

create function Addition(@num1 as int,@num2 as int)
returns int
as 
begin
return(@num1 + @num2) 
end

select dbo.Addition(20,45);
select dbo.Addition(5,5);


--modify the function

alter function TakeANum(@num as int)
returns int
as 
begin
return(@num * @num *@num) 
end

select dbo.TakeANum(3);

--To delete a function
drop function dbo.TakeANum;


--using if block

create function CheckVotersAge(@age as int)
returns varchar(50)
as
begin
declare @str varchar(50)
if @age>=18
begin
set @str='You are eligible to vote'
end
else
begin
set @str='You are not eligible to vote'
end
return @str
end

select dbo.CheckVotersAge(15)

--calling other function
create function GetmyDate()
returns datetime
as
begin
 return GetDate();
end

select dbo.GetmyDate();