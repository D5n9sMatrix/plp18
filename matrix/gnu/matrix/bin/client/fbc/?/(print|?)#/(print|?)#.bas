/'
(PRINT | ?) #
Writes a list of values to a file or device

Syntax:
(Print | ?) # filenum, [ expressionlist ] [ , | ; ]

Parameters:
filenum
The file number of a file or device opened for Output or Append.
expressionlist
List of values to write.

Description:
Print # outputs a list of values to a text file or device. Numeric values are converted to their string representation, 
with left padding for the sign. Objects of user-defined types must overload Operator Cast () As String.

Consecutive values in the expression list are separated either by a comma (,) or semicolon (;). A comma indicates 
printing should take place at the next 14 column boundary, while a semicolon indicates values are printed with no 
space between them.

A new-line character is printed after the values in the expression list unless the expression list is followed 
by a comma or semicolon.

Note that the comma (,) immediately following the file number is still necessary, even the expression list is 
empty. In this case a new-line is printed, just as with a normal expression list that doesn't have a comma or 
semicolon at the end.

'/
Declare Function PrintHelpList () As Double

Open "bleh.dat"  For Output As #1
   
    Print #1, "abc def"
    Print #1, 1234, 5678.901, "xyz zzz"
   
    Close #1

 End   