using System;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Text;

namespace ILAsm {

    class Program {
        static string GetTemplateString() {
            var assembly = Assembly.GetExecutingAssembly();
            var resourceStream = assembly.GetManifestResourceStream("IlAsm.Empty.il");
            var reader = new StreamReader(resourceStream, Encoding.UTF8);
            return reader.ReadToEnd();
        }
        static void Main(string[] args) {
            if (args.Length != 1) {
                Console.WriteLine(" > No input file");
            }

            var file = args[0];

            if (File.Exists(file)) {
                var temp = Path.Combine(Path.GetTempPath(), Path.GetFileName(file));
                var template = GetTemplateString();
                var il = File.ReadAllText(file);
                var newContent = template + "\n\n\n" + il;
                File.WriteAllText(temp, newContent);
                Utility.Asm(temp);
            } else {
                Console.WriteLine(" > File not exist {0}", file);
            }
        }
    }
}
