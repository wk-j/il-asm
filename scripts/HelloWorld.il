.class private auto ansi '<Module>'
{
} // end of class <Module>

.class public auto ansi beforefieldinit C
    extends [mscorlib]System.Object
{
    // Methods
    .method private hidebysig static
        void Main (
            string[] args
        ) cil managed
    {
        // Method begins at RVA 0x2050
        // Code size 13 (0xd)
        .maxstack 8
        .entrypoint

        IL_0000: nop
        IL_0001: ldstr "Hello, world"
        IL_0006: call void [mscorlib]System.Console::WriteLine(string)
        IL_000b: nop
        IL_000c: ret
    } // end of method C::Main

    .method public hidebysig specialname rtspecialname
        instance void .ctor () cil managed
    {
        // Method begins at RVA 0x205e
        // Code size 8 (0x8)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [mscorlib]System.Object::.ctor()
        IL_0006: nop
        IL_0007: ret
    } // end of method C::.ctor

} // end of class C