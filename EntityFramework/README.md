Ensure default project is set to DataAccess/Data and start up project is set to API

`EntityFramework\Enable-Migrations -ProjectName MyContextProjectNameHere -StartUpProjectName MyStartUpProjectNameHere -Verbose`


`EntityFramework\Add-Migration AddRecipeCategorySelectionTable -Project Data -StartupProject API`
`EntityFramework\Update-Database`
