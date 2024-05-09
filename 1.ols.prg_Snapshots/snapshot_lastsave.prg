'=========================================================
'       Learn econometrics by programming in Eviews								
'
'    Author.- Jhon R. Ordoñez
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
		shell mkdir "1.slides"
		shell mkdir "2.program_files"
		shell mkdir "3.raw_data"
		shell mkdir "4.documentation"
		shell mkdir "5.processed_data"
		shell mkdir "6.results"
			shell mkdir "6.results\6.1.tables"
			shell mkdir "6.results\6.2.figures"
		shell mkdir "7.analysis"

' #3.- Import data
	

