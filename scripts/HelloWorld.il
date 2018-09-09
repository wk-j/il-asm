.class private auto ansi '<Module>'
{
} // end of class <Module>

.class public auto ansi beforefieldinit C
    extends [mscorlib]System.Object
{
    // Methods
    .method public hidebysig static
        void Main (
            string[] args
        ) cil managed
    {
        // Method begins at RVA 0x2050
        // Code size 11 (0xb)
        .maxstack 8

        IL_0000: ldstr "Hello, world!"
        IL_0005: call void [mscorlib]System.Console::WriteLine(string)
        IL_000a: ret
    } // end of method C::Main

    .method public hidebysig specialname rtspecialname
        instance void .ctor () cil managed
    {
        // Method begins at RVA 0x205c
        // Code size 7 (0x7)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [mscorlib]System.Object::.ctor()
        IL_0006: ret
    } // end of method C::.ctor

} // end of class C
