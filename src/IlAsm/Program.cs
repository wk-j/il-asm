using System;
using System.Diagnostics;
using System.IO;

namespace ILAsm {

    class Program {
        static void Main(string[] args) {
            if (args.Length != 1) {
                Console.WriteLine(" > No input file");
            }

            var file = args[0];

            if (File.Exists(file)) {
                Utility.Asm(file);
            } else {
                Console.WriteLine(" > File not exist {0}", file);
            }
        }
    }
}
