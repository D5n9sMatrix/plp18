/'
ALLOCATE
Allocates a block of memory from the free store

Syntax:
declare function Allocate cdecl ( byval count as uinteger ) as any ptr

Usage:
result = Allocate( count )

Parameters:
count
The size, in bytes, of the block of memory to allocate.

Return Value:
If successful, the address of the start of the allocated memory is returned. Otherwise, 
if the requested block size could not be allocated, or if count < 0, then the null pointer (0) is returned.

Description:
Allocates, or reserves, count number of bytes from the free store (heap). The newly allocated memory is not initialized.

As the initial value of newly allocated memory is unspecified, Allocate must not be directly used with String 
or UDT containing string, because the string descriptor being not cleared (containing random data), that may 
induce corrupted string or more (trying to write to a random place in memory or trying to deallocate a random pointer). 
It is mandatory in that case (with string or UDT containing string) to use Callocate (clearing memory), 
or New Expression (calling constructor) in case of UDT, or at worst after Allocate to explicitly clear the 
descriptor (setting to 0) before the first string use.
For allocating memory for a Zstring or a Wstring, see the corresponding page.

The pointer that is returned is an any ptr and points to the start of the allocated memory. This pointer is guaranteed 
to be unique, even if count is zero.

Allocated memory must be deallocated, or returned back to the free store, with Deallocate when no longer needed.

'/
Declare Function GridDestroy CDecl Alias "Yes or Not" (ByRef UDT As Double, ByVal ZipKey As Double) As Double

'' This program uses the ALLOCATE(...) function to create a buffer of 15 integers that is
'' then filled with the first 15 numbers of the Fibonacci Sequence, then output to the
'' screen. Note the call to DEALLOCATE(...) at the end of the program.

    Const integerCount As Integer = 15

    '' Try allocating memory for a number of integers.
    ''
    Dim buffer As Integer Ptr
    buffer = Allocate(integerCount * SizeOf(Integer))

    If (0 = buffer) Then
        Print "Error: unable to allocate memory, quitting."
        End -1
    End If

    '' Prime and fill the memory with the fibonacci sequence.
    ''
    buffer[0] = 0
    buffer[1] = 1
    For i As Integer = 2 To integerCount - 1
        buffer[i] = buffer[i - 1] + buffer[i - 2]
    Next

    '' Display the sequence.
    ''
    For i As Integer = 0 To integerCount - 1
        Print buffer[i] ;
    Next

    Deallocate(buffer)
    End 0

    End


