//%attributes = {}
C_OBJECT:C1216($source;$destination)

If (bTrace=1)
	TRACE:C157
End if 

  // destination
$destination:=Form:C1466.tempFolder.file("folder.zip")

  // source
$source:=Folder:C1567(fk resources folder:K87:11).folder("Tests/Images")

  // Compress Folder
ZIP Create archive:C1640($source;$destination)

  // Show result on disk
SHOW ON DISK:C922($destination.platformPath)