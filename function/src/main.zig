const std = @import("std");

pub fn main() !void {
    const a: i32 = 3;
    const b: i32 = 7;

    const sum = add(a, b);
    const stdout = std.io.getStdOut().writer();
    try stdout.print("The sum of {d} and {d} is {d}\n", .{ a, b, sum });
}

pub export fn add(a: i32, b: i32) i32 {
    return a + b;
}
