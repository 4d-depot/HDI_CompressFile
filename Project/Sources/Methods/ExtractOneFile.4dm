//%attributes = {}
If (bTrace=1)
	TRACE:C157
End if 

  // Extract the selected file
$file:=currentItem.copyTo(Form:C1466.tempFolder.folder("Extract"))

  // Show result on disk
SHOW ON DISK:C922($file.platformPath)

