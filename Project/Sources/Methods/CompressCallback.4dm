//%attributes = {}
C_OBJECT:C1216($destination;$zip)

If (bTrace=1)
	TRACE:C157
End if 

  // destination
$destination:=Form:C1466.tempFolder.file("ZipCallback.zip")


  // Create zip archive object
$zip:=New object:C1471
$zip.files:=Folder:C1567(fk resources folder:K87:11).folder("Tests/Images").folders()

  // Callback formula
$zip.callback:=Formula:C1597(FormulaCompressing ($1))

  // Init progress bar
progID:=Progress New 
Progress SET PROGRESS (progID;0)

  // Compress Folder
ZIP Create archive:C1640($zip;$destination)

  // Close progress bar
Progress QUIT (progID)


  // Show result on disk
SHOW ON DISK:C922($destination.platformPath)