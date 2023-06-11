/'
ALIAS (Modifier)
Modifies the data type name mangling (decoration) of a public symbol

Syntax:
... as [ const ] datatype alias "modifier" [ const [ ptr ... ] ]

Usage:
dim variable as datatype alias "modifier"
type name as datatype alias "modifier"
declare sub name ( param as datatype alias "modifier", ... )
declare function name ( param as datatype alias "modifier", ... ) as datatype alias "modifier"

Parameters:
datatype
Standard data type or user defined data type to modify
modifier
One of the supported modifiers as described in Description section following

Description:
Alias "modifier", when specified following a data type, gives an alternate meaning to the data type, which may be needed 
for linking with languages other than FreeBASIC.

Public symbol names are mangled (decorated) to encode information about the data type that is used for the symbol. When 
linking with the c language, the special meaning of the alias modifier is meaningless, since the extra information is not 
encoded in to the public name. When linking with the c++ language, typically more information is encoded in to the public 
symbol, and the alias modifier may be required. The public name is written to the compiled object file, and used by the 
linker to match symbol names from one object module to another.

The same rules for mapping data types is used regardless of which backend (gas or gcc) code emitter is used, And the intent 
is that FB's compiled code can link consistently with it's own object modules and object modules (or libraries) compiled from 
other languages.
'/
Declare Function FreeBASIC CDecl Alias "QBasic" (ByRef fb As Double, ByVal qb As Double) As Double

#lang "fb"
Dim fb As Double 
Dim qb As Double 

fb = 80
qb = 80

End