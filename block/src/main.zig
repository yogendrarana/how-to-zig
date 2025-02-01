const std = @import("std");
const print = std.debug.print;

pub fn canVote(age: i32) bool {
    return decision: {
        if (age >= 18) break :decision true;
        break :decision false;
    };
}

pub fn main() void {
    const age1: i32 = 20;
    const age2: i32 = 15;

    print("Age: {}, Can Vote: {}\n", .{ age1, canVote(age1) });
    print("Age: {}, Can Vote: {}\n", .{ age2, canVote(age2) });
}
