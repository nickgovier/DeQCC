using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace DeQcc
{
    class Strings
    {
        private static List<string> _strings = new List<string>();
        private static Dictionary<int, int> _stringOffsetMap = new Dictionary<int, int>();    // helper map to get from QC string offset to string index in "strings" List

        public static void AddString(string stringToAdd, int offset)
        {
            _strings.Add(stringToAdd);
            _stringOffsetMap.Add(offset, _strings.Count - 1);
        }

        public static string GetString(int offset)
        {
            // hack for string offsets which start in the middle of the string
            // corrupted progs.dat? only seems to happen for quake rally
            if(!_stringOffsetMap.ContainsKey(offset))
            {
                int prevOffset = 0;
                foreach(KeyValuePair<int, int> kvp in _stringOffsetMap)
                {
                    if(kvp.Key > offset) { break; }
                    if(kvp.Key > prevOffset) { prevOffset = kvp.Key; }
                }
                return _strings[_stringOffsetMap[prevOffset]].Substring(offset - prevOffset);
            }

            return _strings[_stringOffsetMap[offset]];
        }

        public static void WriteCSV(string filename)
        {
            StreamWriter outfile = new StreamWriter(filename, false);
            outfile.WriteLine("row,offset,id,string");
            int i = 0;
            foreach (KeyValuePair<int, int> kvp in _stringOffsetMap)
            {
                outfile.WriteLine((i++) + "," + kvp.Key + "," + kvp.Value + "," + DeQCC.CleanseString(_strings[kvp.Value]));
            }
            outfile.Close();
        }
    }
}
