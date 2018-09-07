using System;
using System.Diagnostics;
using System.IO;

namespace ILAsm {
    public class Utility {

        public static void UpdateEnv() {
            // DYLD_LIBRARY_PATH /usr/local/share/dotnet/shared/Microsoft.NETCore.App/2.2.0-preview-26820-02/ $DYLD_LIBRARY_PATH
            Environment.SetEnvironmentVariable("DYLD_LIBRARY_PATH", "/usr/local/share/dotnet/shared/Microsoft.NETCore.App/2.2.0-preview-26820-02");
        }

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
            var asmPath = GetILAsmPath();
            UpdateEnv();
            AllowExecute(asmPath);

            var name = Path.GetFileNameWithoutExtension(path);
            var output = $".output/{name}.dll";

            if (!Directory.Exists(".output")) Directory.CreateDirectory(".output");
            Process.Start(asmPath, $"{path} -dll -output={output} ");
        }
    }
}