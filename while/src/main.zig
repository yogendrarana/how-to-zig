const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var i: i32 = 1;

    while (i <= 10) {
        var j: i32 = 1;
        while (j <= 10) {
            print("{} ", .{i * j});
            j += 1;
        }
        print("\n", .{});
        i += 1;
    }
}
