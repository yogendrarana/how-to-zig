const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    print("Start of main\n", .{});

    defer print("End of main\n", .{});

    print("Middle of main\n", .{});
}
