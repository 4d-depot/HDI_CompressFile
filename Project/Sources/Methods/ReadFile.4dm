//%attributes = {}
C_TEXT:C284($text)
C_BLOB:C604($blob)

If (bTrace=1)
	TRACE:C157
End if 

Case of 
	: (currentItem.extension=".txt")
		
		  // Read the content of a text file
		$text:=currentItem.getText()
		
		  // Display text
		ALERT:C41($text)
		
	: (currentItem.extension=".png")
		
		  // Read the content of the image file
		$blob:=currentItem.getContent()
		
		  // Display image
		BLOB TO PICTURE:C682($blob;$picture)
		Form:C1466.pict:=$picture
		Open form window:C675("Form_Image")
		SET WINDOW TITLE:C213(currentItem.name)
		DIALOG:C40("Form_Image";Form:C1466)
		
End case 

