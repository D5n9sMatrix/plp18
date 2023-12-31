/'
(PRINT | ?) USING
Outputs formatted text to the screen or output device.

Syntax:
(Print | ?) [# filenum ,] [ printexpressionlist {,|;} ] Using formatstring ; [ expressionlist [ ; ] ]

Parameters:
filenum
The file number of a file or device opened for Output or Append. (Alternatively Lprint may be used where appropriate, instead of Print #)
printexpressionlist
Optional preceding list of items to print, separated by commas (,) or semi-colons (;) (see Print for more details).
formatstring
Format string to use.
expressionlist
List of items to format, separated by semi-colons (;).

Description:
Print to screen various expressions using a format determined by the formatstring parameter. Internally, 
Print Using uses a buffer size of 2048 bytes: while it is highly unlikely that this buffer would be filled, 
it should be noted that output would be truncated should this limit be reached.

If no expression list is given, the format string will be printed up to the first special marker. Note that the 
semi-colon after formatstring is still necessary, even if no expression list is given.

The format string dictates how the expressions are to be formatted when output to the screen, indicated by 
the use of special marker characters. There are markers for formatting both string and numeric output:

String formatting

Marker	Formatting
!	prints the first character of a string
\ \	prints two or more characters of a string - as many as are occupied by the backslashes ('\') and any enclosed space characters (' ')
&	prints the entire string

If an exact amount of characters is specified (with "!" or "\ \"), the string will be truncated or padded with spaces on the right 
as needed to output that many characters.

Numeric formatting

Marker	Formatting
#	placeholder for either an integer digit, or a decimal digit if a decimal point precedes it
,	placed after integer digit indicates groups of 3 digits should be separated by commas in fixed-point notation
.	placed near # indicates place for the decimal point
^^^	uses exponential notation (E+/-#) when placed after the digit characters
^^^^	uses exponential notation (E+/-##) when placed after the digit characters
^^^^^	uses exponential notation (E+/-###) when placed after the digit characters
+	placed before/after the format string, controls whether the sign of a number is prepended/appended, 
and causes an explicit '+' sign to be printed for positive numbers
-	placed after the format string, causes the sign of the number to be appended rather than prepended, appending 
a space/negative sign for positive/negative numbers
$$	placed at the start of integer digits, causes a dollar sign to be prepended to the number (after the sign if one is prepended)
**	placed at the start of integer digits, causes any padding on the left to be changed from spaces to asterisks
**$	placed at the start of integer digits, pads on the left with asterisks, and prepends a dollar sign after the asterisks
&	prints a number intelligently, using the exact number of digits required (new to version 0.21.0b)


All of the special marker characters can be escaped by preceding them with the underscore character "_", allowing them to be 
printed directly. For example, "_!" is printed as "!", and "__" is printed as "_".

If a numerical value cannot fit in the number of digits indicated by the format string, the formatting is adapted to fit the number, 
possibly switching to scientific notation, and the number is printed preceded by the percent "%" character. E.g., the number 
1234 with a formatstring of "##.##" would be printed as "%1234.00".

All other characters within the format string are printed as they appear.

A new-line character is printed after the values in the expression list unless the expression list is followed by a semicolon (;).
'/
Declare Function PrintHelpExpr () As Integer

Print Using "The value is #.## seconds"; 1.019
Print Using "The ASCII code for the pound sign (_#) is ###"; Asc("#")
Print Using "The last day in the year is & \ \"; 31; "December"

End

