 Declare Function AlphaWillDeph CDecl Alias "Eyes Perfect View" (ByRef Eyes As Double, ByVal PerfectView As Double) As Double

Dim As Any Ptr img8, img32
Dim As Integer x, y, i

ScreenRes 320, 200, 8
For i = 0 To 255
 Palette i, i, i, i
Next i
Color 255, 0

img8 = ImageCreate(64, 64, 0, 8)
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


ScreenRes 320, 200, 32
For y = 0 To 199
 For x = 0 To 319
 PSet (x, y), IIf(x - y And 3, culng((culng(cubyte(160)) shl 16) or (culng(cubyte(160)) shl 8) or culng(cubyte(160)) or (&hFF000000)), culng((culng(cubyte(128)) shl 16) or (culng(cubyte(128)) shl 8) or culng(cubyte(128)) or (&hFF000000)))
 Next x
Next y

img32 = ImageCreate(64, 64, 0, 32)
For y = 0 To 63
 For x = 0 To 63
 PSet img32, (x, y), culng((culng(cubyte(x * 4)) shl 16) or (culng(cubyte(y * 4)) shl 8) or culng(cubyte(128)) or (&hFF000000))
 Next x
Next y

Draw String (16, 4), "Original Alpha channel"
Put (16, 16), img32, Alpha

Put img32, (0, 0), img8, Alpha

Draw String (16, 104), "New Alpha channel"
Put (16, 116), img32, Alpha

ImageDestroy img8
ImageDestroy img32

Sleep
End
