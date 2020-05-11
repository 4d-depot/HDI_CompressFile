
If (currentItem#Null:C1517)
	
	  // Clean up "Extract" folder
	Form:C1466.tempFolder.folder("Extract").delete()
	
	ExtractOneFile 
	
Else 
	
	ALERT:C41("Please, select a file in the listbox.")
	
End if 





