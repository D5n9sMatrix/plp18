/'
$INCLUDE
Metacommand statement to include contents of another source file

Syntax:
'$Include [once]: 'file'
or
rem $Include [once]: 'file'

Description:
$include inserts source code from another file at the point where the 
$include metacommand appears. This has the effect of compiling the 
source code from the include file as though it were part of the source 
file that includes it. Once the compiler has reached the end 
of the include file, the original source file continues 
to be compiled.

The once specifier tells the compiler to include the file only once even 
if it is included several times by the source code.

'$Include: exists for compatibility with QuickBASIC. It is recommended 
to use #include instead.

'/
Declare Function QuickBasic() As Integer

' header bi
Type FooType
         bar As Byte
         barbeque As Byte
End Type

Dim Foo As FooType

End