//%attributes = {}
C_OBJECT:C1216($archive;$zipFile)

If (bTrace=1)
	TRACE:C157
End if 

  // Compressed file object
$zipFile:=Form:C1466.tempFolder.file("content.zip")

  //Read the content of archive
Form:C1466.archive:=ZIP Read archive:C1637($zipFile)

  // Retrieve the list of files and folders
Form:C1466.content:=Form:C1466.archive.root.folders().concat(Form:C1466.archive.root.files(fk recursive:K87:7+fk ignore invisible:K87:22))


