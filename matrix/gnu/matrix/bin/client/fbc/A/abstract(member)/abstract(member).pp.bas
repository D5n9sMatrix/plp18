 Declare Function AbstractHelp () As Integer

Type Hello extends object
 Declare abstract Sub hi( )
End Type

Type HelloEnglish extends Hello
 Declare Sub hi( )
End Type

Type HelloFrench extends Hello
 Declare Sub hi( )
End Type

Type HelloGerman extends Hello
 Declare Sub hi( )
End Type


Sub HelloEnglish.hi( )
 Print "hello!"
End Sub

Sub HelloFrench.hi( )
 Print "Salut!"
End Sub

Sub HelloGerman.hi( )
 Print "Hallo!"
End Sub


 Randomize( Timer( ) )

 Dim As Hello Ptr h

 For i As Integer = 0 To 9
 Select Case( Int( Rnd( ) * 3 ) + 1 )
 Case 1
 h = New HelloFrench
 Case 2
 h = New HelloGerman
 Case Else
 h = New HelloEnglish
 End Select

 h->hi( )
 Delete h
 Next

 End
