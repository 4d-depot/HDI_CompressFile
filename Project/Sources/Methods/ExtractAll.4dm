//%attributes = {}
C_OBJECT:C1216($archive)

If (bTrace=1)
	TRACE:C157
End if 


If (Form:C1466.archive=Null:C1517)
	
	ReadArchive 
	
End if 


  // Clean up
Form:C1466.tempFolder.folder("ExtractAll").delete(Delete with contents:K24:24)

  // Extract all 
Form:C1466.archive.root.copyTo(Form:C1466.tempFolder.folder("ExtractAll"))


  // Show result on disk
SHOW ON DISK:C922(Form:C1466.tempFolder.folder("ExtractAll").platformPath)