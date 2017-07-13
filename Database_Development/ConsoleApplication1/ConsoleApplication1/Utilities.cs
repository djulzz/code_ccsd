using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Utilities
    {
        public static String Stringify( String input )
        {
            return "'" + input + "'";
        }

        public static void UnitTest( )
        {
            String input = "Test";
            input = Stringify(input);
            Console.WriteLine(input);
        }
    }
}
