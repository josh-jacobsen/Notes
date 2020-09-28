# Collection of useful SQL/EF scripts 


##### I mean try not to use while loops in SQl.....

```
DECLARE @NumberOfTimesToRun INT = 600
WHILE ( @NumberOfTimesToRun > 0)
BEGIN
    update top (10000) Payment 
    set SettlementDate = DateCreated,
    LastUpdated = DATEADD(HOUR, 13, GETUTCDATE()), 
    LastUpdatedUTC = GETUTCDATE()
    where SettlementDate is null
    SET @NumberOfTimesToRun = @NumberOfTimesToRun - 1;
    WAITFOR DELAY '00:00:10'
END
```
