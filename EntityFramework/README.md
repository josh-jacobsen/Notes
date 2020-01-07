Ensure default project is set to DataAccess/Data and start up project is set to API

`EntityFramework\Enable-Migrations -ProjectName MyContextProjectNameHere -StartUpProjectName MyStartUpProjectNameHere -Verbose`


`EntityFramework\Add-Migration AddRecipeCategorySelectionTable -Project Data -StartupProject API`

`Get-Migrations`

To roll back a migration, specify the target migration as the migration immediatly before the one you want to roll back

`EntityFramework\Update-Database -TargetMigration:"201912110144586_AddInsertNzPostDedicatedAndOvernightColumns"`
