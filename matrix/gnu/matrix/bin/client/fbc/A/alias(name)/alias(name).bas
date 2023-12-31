/'
ALIAS (Name)
Clause of the Sub and Function statements that provides an alternate internal name.

Syntax:
[declare] { sub | function } usablename Alias "alternatename" (...)

Usage:
declare sub usablename Alias "alternatename" ( ... )
or
declare function usablename Alias "alternatename" ( ... )
or
sub usablename Alias "alternatename" ( ... )
...
end sub
or
function usablename Alias "alternatename" ( ... )
...
end function
or
type typename Alias "alternatename" ( ... )
...
end type

Description:
Alias gives an alternate name to a procedure. This alternate name cannot be used within the program to call the procedure, 
but it is visible (if the function is not private) to the linker when linking with code written in other languages.

Alias is commonly used for procedures in libraries written in other languages when such procedure names are valid in the 
other language but invalid in BASIC. When using Alias with Declare, only the alternate name is used by the linker.

Differently from normal procedure names, Alias does not change the case of the alternate name, so it is useful when external 
code requires an exported function with a particular name or with a particular case.

Alias can be used to specify an alternate name for type definitions.

Alias can be used as a modifier that specifies an alternate name mangling for procedure parameters. See Alias (Modifier)

'/
Declare Function FreeBASIC CDecl Alias "QBasic" (ByRef fb As Double, ByVal qb As Double) As Double

#lang "fb"
Dim fb As Double
Dim qb As Double

fb = 80
qb = 80



End

