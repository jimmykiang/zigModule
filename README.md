##Usage

From a new folder, run the following commands:

zig init-exe

mkdir libs

cd libs

git clone https://github.com/jimmykiang/zigModule

## Code example

Add the following lines to build.zig

```sh

const zigModule = b.addModule("zigModule", .{
    .source_file = .{ .path = "libs/zigModule/squarey.zig" }
});
exe.addModule("zigModule", zigModule);
```

Place the content below to main.zig and run zig build run.

```sh

const std = @import("std");
const Squarey = @import("zigModule").Squarey;

pub fn main() !void {
    try std.io.getStdOut().writer().print("{}\n", .{Squarey(3)});
}
```