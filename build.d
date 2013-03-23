module test;

import std.algorithm;
import std.array;
import std.exception;
import std.file;
import std.parallelism;
import std.path;
import std.process;
import std.string;

alias std.string.join join;

void main(string[] args)
{
    args.popFront();
    enforce(args.length);

    string[] mods = map!(a => a.name)(dirEntries(r".\win32", SpanMode.shallow)).array;
    string flags = "-version=Unicode -version=WindowsXP";

    if (args.front == "multicore")
    {
        foreach (mod; parallel(mods))
        {
            string cmd = format("dmd -c %s %s", mod, flags);
            system(cmd);
        }

        auto objs = map!(a => a.baseName.setExtension(".obj"))(mods);
        string cmd = format("dmd -lib -ofmulti_win32.lib %s %s", flags, objs.join(" "));
        system(cmd);
    }
    else
    if (args.front == "fullbuild")
    {
        string cmd = format("dmd -lib -offull_win32.lib %s %s", flags, mods.join(" "));
        system(cmd);
    }
}
