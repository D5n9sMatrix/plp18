/'
ALPHA
Parameter to the Put graphics statement which selects alpha blending as the method

Syntax:
Put [ target, ] [ STEP ] ( x,y ), source [ ,( x1,y1 )-( x2,y2 ) ], Alpha
Put [ target, ] [ STEP ] ( x,y ), source [ ,( x1,y1 )-( x2,y2 ) ], Alpha, alphaval

Parameters:
Alpha
Required.
alphaval
Optional alpha parameter in the range [0..255]. Overrides alpha values in individual pixels.

Description:
Alpha selects alpha blending as the method for Putting an image. If the alphaval parameter is specified, 
it overrides the alpha value of each pixel, and the mask color (magenta) will be treated as transparent. 
This works in 15, 16, 24, or 32-bit color depths.

If alphaval is not specified, Alpha will only work in 32-bit color depth, and Put will use the alpha value 
embedded within each pixel. Pixels using the mask color will be treated as normal, and drawn with their 
given alpha value.

Alpha also has another mode which allows an 8-bit image to be Put on top of a 32-bit image. In this case, 
it will replace the alpha channel of the 32-bit image with the contents of the 8-bit image.

Alpha values range between 0 and 255. An alpha value of 0 will not draw the image at all. All other alpha 
values are incremented by 1 to get a range between 2 and 256, and the result is then divided by 256 to get 
a value between 1/128 and 1, which is used to calculate the exact value of each pixel from the source and 
destination pixels. Thus, 255 is practically equivalent to drawing using Put with Trans blitting mode, 
0 is equivalent to doing nothing at all, and all the other alpha values blend is expected.

'/
Declare Function AlphaWillDeph CDecl Alias "Eyes Perfect View"  (ByRef Eyes As Double, ByVal PerfectView As Double) As Double

Dim As Any Ptr img8, img32
Dim As Integer x, y, i

'' Set up an 8-bit graphics screen
ScreenRes 320, 200, 8
For i = 0 To 255
    Palette i,  i, i, i
Next i
Color 255, 0

'' Create an 8-bit image
img8 = ImageCreate(64, 64, 0,  8)
For y = 0 To 63
    For x = 0 To 63
        Dim As Single x2 = x - 31.5, y2 = y - 31.5
        Dim As Single t = Sqr(x2 ^ 2 + y2 ^ 2) / 5
        PSet img8, (x, y), Sin(t) ^ 2 * 255
    Next x
Next y

Draw String (16, 4), "8-bit Alpha sprite"
Put (16, 16), img8
Sleep


'' Set up a 32-bit graphics screen
ScreenRes 320, 200, 32
For y = 0 To 199
    For x = 0 To 319
        PSet (x, y), IIf(x - y And 3, RGB(160, 160, 160), RGB(128, 128, 128))
    Next x
Next y

'' Create a 32-bit, fully opaque sprite
img32 = ImageCreate(64, 64, 0, 32)
For y = 0 To 63
    For x = 0 To 63
        PSet img32, (x, y), RGB(x * 4, y * 4, 128)
    Next x
Next y

Draw String (16, 4), "Original Alpha channel"
Put (16, 16), img32, Alpha

'' Put a new alpha channel using the 8-bit image
Put img32, (0, 0), img8, Alpha

Draw String (16, 104), "New Alpha channel"
Put (16, 116), img32, Alpha

''Free the memory for the two images
ImageDestroy img8
ImageDestroy img32

Sleep
End