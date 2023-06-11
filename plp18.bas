/'
$DYNAMIC
Metacommand to change the way arrays are allocated

Syntax:
'$Dynamic
or
rem $Dynamic

Description:
'$Dynamic is a metacommand that specifies that any following array 
declarations are variable-length, whether they are declared with constant 
subscript ranges or not. This remains in effect for the rest of the module 
in which '$Dynamic is used, and can be overridden with '$Static. It is 
equivalent to the Option Dynamic statement.

'/
Declare Function OptionDynamic(ByRef Array As Integer) As Integer

#Lang  "fblite"
#Define Array 512
#If (Array = 512)
     #Macro m(Array)
           Type List
           	      Dim ListMod As Integer
           	      Dim ListItem As Integer
           	      Dim ListVals As Integer
           	      ' notion of array
           	      ListMod = Abs(1 + 2 * 3) * 80
           	      ListItem = Cos(1 + 2 * 3) * 80
           	      ListVals = Sin(1 + 2 * 3) * 80           	      
           End Type
     #EndMacro
#Else
    Mod 1
    Dim Item As EVENT
    Val Item 
#EndIf

End
     
