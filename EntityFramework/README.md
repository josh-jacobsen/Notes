Ensure default project is set to DataAccess/Data and start up project is set to API

`EntityFramework\Enable-Migrations -ProjectName MyContextProjectNameHere -StartUpProjectName MyStartUpProjectNameHere -Verbose`


`EntityFramework\Add-Migration AddRecipeCategorySelectionTable -Project Data -StartupProject API`

`Get-Migrations`

```
PM> Get-Migrations
Retrieving migrations that have been applied to the target database.
201912110144586_AddInsertNzPostDedicatedAndOvernightColumns
201912100003241_AddIsDeletedToRecipeSwap
201912092126394_CourierResolutionFreeGoods
201912022331441_UpdateDeliverySlotProductUniqueConstraint
201910292054419_AddLastUpdatedByUserToIssues
201802270217008_Initial
```

To roll back a migration, specify the target migration as the migration immediatly before the one you want to roll back

`EntityFramework\Update-Database -TargetMigration:"201912110144586_AddInsertNzPostDedicatedAndOvernightColumns"`

`EntityFramework\Update-Database -TargetMigration:"202001070218551_AddRecipeCategorySelectionTable"`

`EntityFramework\Update-Database -TargetMigration:"202001070218551_AddRecipeCategorySelectionTable" -Script`


