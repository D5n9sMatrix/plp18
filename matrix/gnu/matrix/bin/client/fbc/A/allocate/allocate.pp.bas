 Declare Function GridDestroy CDecl Alias "Yes or Not" (ByRef UDT As Double, ByVal ZipKey As Double) As Double


 Const integerCount As Integer = 15

 Dim buffer As Integer Ptr
 buffer = Allocate(integerCount * SizeOf(Integer))

 If (0 = buffer) Then
 Print "Error: unable to allocate memory, quitting."
 End -1
 End If

 buffer[0] = 0
 buffer[1] = 1
 For i As Integer = 2 To integerCount - 1
 buffer[i] = buffer[i - 1] + buffer[i - 2]
 Next

 For i As Integer = 0 To integerCount - 1
 Print buffer[i] ;
 Next

 Deallocate(buffer)
 End 0

 End


