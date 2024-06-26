'=========================================================
'                 Learn econometrics by programming in Eviews								
'
'    Author.- Jhon R. Ordo�ez
'    Date.- May 9, 2024
'    Description.- Ordinary least squares method 
'
'==========================================================

' #1.- Cleaning 
	close @all

' #2.- Define the root working directory
	'#2.1.- Root folder
		%root = @runpath
		cd %root
	' #2.2.- Create folders
		'shell mkdir "1.slides"
		'shell mkdir "2.program_files"
		'shell mkdir "3.raw_data"
		'shell mkdir "4.documentation"
		'shell mkdir "5.processed_data"
		'shell mkdir "6.results"
			'shell mkdir "6.results\6.1.tables"
			'shell mkdir "6.results\6.2.figures"
		'shell mkdir "7.analysis"

' #3.- Data Import
	import "D:\master\programming_courses\eviews\3.raw_data\Table I_1.xls" range=data!$B$1:$C$47 colhead=1 na="#N/A" @freq A 1960 @smpl @all

' #4.- Rename variables
	rename y pce
	rename x gdp

' #5.-  Estimation by OLS 		
	ls pce c gdp
	ls pce gdp

	equation eq1.ls pce c gdp ' With interception
	equation eq2.ls pce gdp ' Without  interception
' #6.- Save data as "TableI_1.wf1"
	wfsave(2) "D:\master\programming_courses\eviews\5.processed_data\TableI_1.wf1"


