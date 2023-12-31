/'
$LANG
Metacommand statement to set the compiler dialect.

Syntax:
'$lang: "lang"
or
rem $lang: "lang"

Parameters:
"lang"
The dialect to set, enclosed in double quotes, and must be one of "fb", "fblite", "qb", or "deprecated".

Description:
If the -forcelang option was not given on the command line, $lang can be used to set the dialect for the source module in which it appears. 
At most two passes will be made on the source module. On the first pass, if the specified dialect is anything other than the default dialect 
(chosen with -lang, or "fb" by default), the compiler will reset the parser for another pass and restart compilation at the beginning of the 
source module. If this metacommand is encountered again on the second pass, and the specified dialect does not match the new current 
dialect, a warning is issued and compilation continues. If any errors were encountered on the first pass, the compiler will not attempt 
a second pass.

$lang may not be used in any compound statement, scope, or subroutine. However, it may be nested in module level preprocessor 
statements or used in an include file.

There is currently no restriction on where this directive may be placed in a source module. In future this may change, therefore best 
practice would be to use this directive before the first declaration, definition, or executable statement in the source.

This directive overrides the -lang option if it was given on the command line. However, if the -forcelang option was given on the 
command line, this directive will have no effect. A warning is issued, the directive is ignored, and compilation will continue. This 
allows the user to explicitly override $lang metacommands.

This metacommand was introduced in FreeBASIC version 0.20.0. Older versions of FB, and QuickBASIC, will treat it as a comment 
and silently ignore it.
'/
Declare Function FreeBASIC (ByRef Array As Const Any, ByVal  List As String) As String

#lang "fb"
#define ArrayString "fb"
Type ArrayList
        Dim Str As String = "fb"
        Dim Item As Integer
 End Type

#Print Array List Abs(27+ 55) * 80 

 End                       