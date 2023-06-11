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
If successful, the address of the start of the allocated memory is returned. Otherwise, if the requested 
block size could not be allocated, or if count < 0, then the null pointer (0) is returned.

Description:
Allocates, or reserves, count number of bytes from the free store (heap). The newly allocated memory is not initialized.

As the initial value of newly allocated memory is unspecified, Allocate must not be directly used with String 
or UDT containing string, because the string descriptor being not cleared (containing random data), that may 
induce corrupted string or more (trying to write to a random place in memory or trying to deallocate a random pointer). 
It is mandatory in that case (with string or UDT containing string) to use Callocate (clearing memory), or New Expression 
(calling constructor) in case of UDT, or at worst after Allocate to explicitly clear the descriptor (setting to 0) before the 
first string use.
For allocating memory for a Zstring or a Wstring, see the corresponding page.

The pointer that is returned is an any ptr and points to the start of the allocated memory. This pointer is guaranteed to be unique, 
even if count is zero.

Allocated memory must be deallocated, or returned back to the free store, with Deallocate when no longer needed.

'/
Declare Function Constructors CDecl Alias "Restores" (ByRef  Items As Double, ByVal Value As Double) As Double

Dim Items As Double
Dim Value As Double

Items = Acos(21 + 27 + 80)
Value = Acos(21 + 27 + 80)

Assert(Items + Value)

End

Declare Function Destructors CDecl Alias "Restores" (ByRef  Objects As Double, ByVal Modifier As Double) As Double

Dim Objects As Double
Dim Modifier As Double

Objects = Acos(21 + 27 + 80)
Modifier = Acos(21 + 27 + 80)

Assert(Objects + Modifier)

End

Declare Function Restores CDecl Alias "Restores" (ByRef  Obj As Double, ByVal Modes As Double) As Double

Dim Obj As Double
Dim Modes As Double

Obj = Acos(21 + 27 + 80)
Modes = Acos(21 + 27 + 80)

Assert(Obj + Modes)

End


