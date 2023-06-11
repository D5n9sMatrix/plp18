/'
$DYNAMIC
Metacommand to change the way arrays are allocated

Syntax:
'$Dynamic
or
rem $Dynamic

Description:
'$Dynamic is a metacommand that specifies that any 
following array declarations are variable-length, whether they 
are declared with constant subscript ranges or not. This remains 
in effect for the rest of the module in which '$Dynamic is used, 
and can be overridden with '$Static. It is equivalent to the Option 
Dynamic statement.
'/
Declare Function DynamicArray (ByRef Items As EVENT) As EVENT

#Lang "fblite"

'$Dynamic
Dim a(21, 27, 28)
' verify the $Dynamic
ReDim a(500)

End


