declare @hour int

declare @minute int

set @hour=0
while @hour<24
begin

set @minute=0
while @minute<60
begin

INSERT INTO [dbo].[DimTime]
([TimeID]
,[Hour]
,[Minute])
select
(@hour*100) + (@minute) as TimeID,

@hour as [Hour],
@minute as [Minute]

set @minute=@minute+1
end

set @hour=@hour+1
end