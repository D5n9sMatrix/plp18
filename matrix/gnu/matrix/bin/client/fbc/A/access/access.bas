/'
ACCESS
Clause of the Open statement to specify requested privileges

Syntax:
open filename for binary Access {Read | Write | Read Write} as [#]filenum

Usage:
open filename for binary Access Read as #filenum
open filename for binary Access Write as #filenum
open filename for binary Access Read Write as #filenum

Parameters:
Read
Open the file with only read privileges.
Write
Open the file with only write privileges.
Read Write
Open the file with read and write privileges.

Description:
Access is used with the Open statement to request read, write, or read and write privileges. If the Access clause 
is not specified, Read Write is assumed.

Examples:

This example shows how to open the file "data.raw" with read and then "data.out" with write access, in Binary mode, 
in an open file number returned by FreeFile.
'/
Declare Function AccessInc () As Integer

Dim As Long o

  '' get an open file number.
  o = FreeFile
 
  '' open file for read-only access.    
  Open "data.raw" For Binary Access Read As #o
   
    '' make a buffer in memory thats the entire size of the file
    Dim As UByte file_char( LOF( o ) - 1 )

      '' get the file into the buffer.      
      Get #o, , file_char()
   
  Close
 
  '' get another open file number.
  o = FreeFile
 
  '' open file for write-only access.    
  Open "data.out" For Binary Access Write As #o

    '' put the buffer into the new file.      
    Put #o, , file_char()
   
  Close

  Print "Copied file ""data.raw"" to file ""data.out"""

  Sleep

  End