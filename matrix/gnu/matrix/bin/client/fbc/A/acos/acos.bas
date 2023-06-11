/'
ACOS
Finds the arccosine of an angle

Syntax:
declare function Acos ( byval number as double ) as double

Usage:
result = Acos( number )

Parameters:
number
A cosine value in the range [-1..1].

Return Value:
The arccosine of number, in radians, in the range [0..Pi].

Description:
Acos returns the arccosine of the argument number as a Double within the range of 0 to Pi. The arccosine is the inverse of the Cos function. The returned angle is measured in radians (not degrees).

Acos can be overloaded as operator to accept user-defined types.
'/
Declare Function AcosRadians (ByRef number As Double) As Double

Dim h As Double
Dim a As Double
Input "Please enter the length of the hypotenuse of a triangle: ", h
Input "Please enter the length of the adjacent side of the triangle: ", a
Print ""
Print "The angle between the sides is"; Acos ( a / h )
Sleep
End
Declare Function AcosDegree (ByRef number As Double) As Double

Dim i As Double
Dim j As Double
Input "Please enter the length of the hypotenuse of a triangle: ", i
Input "Please enter the length of the adjacent side of the triangle: ", j
Print ""
Print "The angle between the sides is"; Acos ( i / j )
Sleep
End

