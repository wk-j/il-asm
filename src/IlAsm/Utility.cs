using System;
using System.Diagnostics;
using System.IO;

namespace ILAsm {
    public class Utility {
        public static string GetGlobalPackagesLocation() {
            var home = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile);
            return $"{home}/.nuget/packages";
        }

        public static string GetILAsmPath() {
            var global = GetGlobalPackagesLocation();
            return $"{global}/runtime.osx-x64.Microsoft.NETCore.ILAsm/2.0.8/runtimes/osx-x64/native/ilasm";
        }

        public static void AllowExecute(string path) {
            Process.Start("chmod", $"u+x {path}");
        }

        public static void Asm(string path) {
            var name = Path.GetFileNameWithoutExtension(path);
            var output = $".output/{name}.dll";
            Process.Start("ilasm", $"/dll /output={output} {path}");
        }
    }
}