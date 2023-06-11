 Declare Function PrintHelpList () As Double

Open "bleh.dat" For Output As #1

 Print #1, "abc def"
 Print #1, 1234, 5678.901, "xyz zzz"

 Close #1

 End
