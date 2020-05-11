Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		initHDI 
		
		Form:C1466.tempFolder:=New object:C1471
		Form:C1466.tempFolder:=Folder:C1567(Temporary folder:C486;fk platform path:K87:2).folder("ZipTests")
		Form:C1466.tempFolder.create()
		
		
		Form:C1466.archive:=Null:C1517
		Form:C1466.content:=Null:C1517
		
	: (Form event code:C388=On Page Change:K2:54)
		
		Case of ()
				
			: (FORM Get current page:C276=4)
				
				  // Create archive for testing
				ZIP Create archive:C1640(Folder:C1567(fk resources folder:K87:11).folder("Tests/Images");Form:C1466.tempFolder.file("content.zip");ZIP Without enclosing folder:K91:7)
				
				
		End case 
		
		
		
End case 