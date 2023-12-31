/'
ABS
Calculates the absolute value of a number

Syntax:
declare function Abs ( byval number as integer ) as integer
declare function Abs ( byval number as uinteger ) as uinteger
declare function Abs ( byval number as double ) as double

Usage:
result = Abs( number )

Parameters:
number
Value to find the absolute value of.

Return Value:
The absolute value of number.

Description:
The absolute value of a number is its positive magnitude. If a number is negative, its value will be negated 
and the positive result returned. For example, Abs(-1) and Abs(1) both return 1. The required number argument 
can be any valid numeric expression.
Unsigned numbers will be treated as if they were signed, i.e. if the highest bit is set the number will be treated as 
negative, and its value negated.
The value returned will be greater than or equal to 0, with the exception of signed integers containing the lowest 
possible negative value that can be stored in its type, in which case negating it will overflow the result.

The Abs unary operator can be overloaded with user defined types.
'/
Declare Function AbsGas() As Integer

Dim n As Integer

Print Abs( -1 )
Print Abs( -3.1415 )
Print Abs( 42 )
Print Abs( n )

n = -69

Print Abs( n )

End
