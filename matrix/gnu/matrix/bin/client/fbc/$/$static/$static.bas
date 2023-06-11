/'
$STATIC
Metacommand to change the way arrays are allocated

Syntax:
'$Static
or
rem $Static

Description:
'$Static is a metacommand that overrides the behavior of $Dynamic, 
that is, arrays declared with constant subscript ranges are fixed-length. 
This remains in effect for the rest of the module in which '$Static is used, 
and can be overridden with $Dynamic. It is equivalent to the 
Option Static statement.

'/
Declare Function Gas() As Integer

' compile with -lang fblite or qb

#lang "fblite"

'$dynamic
Dim a(100)   '<<this array will be variable-length
'$static
Dim b(100)   '<<this array will be fixed-length

End
