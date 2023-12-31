/'
(PRINT | ?)
Writes text to the screen

Syntax:
(Print | ?) [ expressionlist ] [ , | ; ]

Parameters:
expressionlist
list of items to print

Description:
Print outputs a list of values to the screen. Numeric values are converted to their string representation, 
with left padding for the sign. Objects of user-defined types must overload Operator Cast () As String.

Consecutive values in the expression list are separated either by a comma (,) or semicolon (;). A comma 
indicates printing should take place at the next 14 column boundary, while a semicolon indicates values 
are printed with no space between them. This has a similar effect to concatenating expressions using + or &.

Print also supports the special expressions, Spc() and Tab(). These can be used to space out expressions, 
or to align the printing to a specific column.

A new-line character is printed after the values in the expression list unless the expression list is followed by 
a comma or semicolon. A Print without any expressions or separators following it will just print a new-line.

NOTE: Print resets the Err value after each expression is printed.

NOTE: In graphics mode, Draw String provides a flexible alternative to Print: it prints a string to the screen 
with pixel positioning, transparent background, and can use a user-supplied font.

'/
Sub main()
       Print "Hello World!"
End Sub
Declare Function PrintHelp (ByRef Help As Integer) As Integer

'' print "Hello World!", and a new-line
Print "Hello World!"

'' print several strings on one line, then print a new-line
Print "Hello";
Print "World"; "!";
Print

'' column separator
Print "Hello!", "World!"

End