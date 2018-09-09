.assembly extern netstandard
{
  .ver 2:0:0:0
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 ) // .{...-.Q
}
.assembly 'Empty'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::'.ctor'(int32) =  (01 00 08 00 00 00 00 00 ) // ........

  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .custom instance void class [mscorlib]System.Diagnostics.DebuggableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) =  (01 00 07 01 00 00 00 00 ) // ........

  .custom instance void class [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::'.ctor'(string) =  (
		01 00 19 2E 4E 45 54 53 74 61 6E 64 61 72 64 2C   // ....NETStandard,
		56 65 72 73 69 6F 6E 3D 76 32 2E 30 01 00 54 0E   // Version=v2.0..T.
		14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61   // .FrameworkDispla
		79 4E 61 6D 65 00                               ) // yName.

  .custom instance void class [mscorlib]System.Reflection.AssemblyCompanyAttribute::'.ctor'(string) =  (01 00 05 45 6D 70 74 79 00 00 ) // ...Empty..

  .custom instance void class [mscorlib]System.Reflection.AssemblyConfigurationAttribute::'.ctor'(string) =  (01 00 05 44 65 62 75 67 00 00 ) // ...Debug..

  .custom instance void class [mscorlib]System.Reflection.AssemblyFileVersionAttribute::'.ctor'(string) =  (01 00 07 31 2E 30 2E 30 2E 30 00 00 ) // ...1.0.0.0..

  .custom instance void class [mscorlib]System.Reflection.AssemblyInformationalVersionAttribute::'.ctor'(string) =  (01 00 05 31 2E 30 2E 30 00 00 ) // ...1.0.0..

  .custom instance void class [mscorlib]System.Reflection.AssemblyProductAttribute::'.ctor'(string) =  (01 00 05 45 6D 70 74 79 00 00 ) // ...Empty..

  .custom instance void class [mscorlib]System.Reflection.AssemblyTitleAttribute::'.ctor'(string) =  (01 00 05 45 6D 70 74 79 00 00 ) // ...Empty..

  .hash algorithm 0x00008004
  .ver  1:0:0:0
}
.module Empty.dll // GUID = {F28BB42E-9D9C-4E48-9870-11695FE74EA3}