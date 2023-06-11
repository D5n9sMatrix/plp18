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

