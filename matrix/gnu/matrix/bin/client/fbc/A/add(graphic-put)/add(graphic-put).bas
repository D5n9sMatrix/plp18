/'
ADD
Parameter to the Put graphics statement which selects addition as the blitting method

Syntax:
Put [ target, ] [ STEP ] ( x,y ), source [ ,( x1,y1 )-( x2,y2 ) ], Add[ ,multiplier ]

Parameters:
Add
Required.
multiplier
Optional value between 0 and 255. The source pixels are premultiplied by (multiplier / 256) before being added. 
If omitted, this value defaults to 255.

Description:
Add selects addition as the method for blitting an image buffer. For each source and target pixel, the values 
of each respective component are added together to produce the result.
The addition is saturated - i.e. if the sum of the two values is 256 or more, then it will be cropped down to 255.

This method will work in all color modes. Mask colors (color 0 for indexed images, magenta (RGB(255, 0, 255)) 
for full color images) will be skipped, though full color values of 0 (RGBA(0, 0, 0, 0)) will have also have no effect.

'/
Declare Function AddGraphicPut (ByRef PutColor As Double) As Double

Dim Syms As Double
Dim Graphics As Double
Dim Value As Double
Dim PutColor As Integer
' variable
Syms = 10
Graphics = 25
' function variable
PutColor = Acos(Syms * Graphics) * Value

#Print  PutColor

End