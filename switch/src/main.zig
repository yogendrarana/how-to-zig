const std = @import("std");
const print = std.debug.print;

pub fn getDayOfWeek(day: u8) []const u8 {
    return switch (day) {
        1 => "Sunday",
        2 => "Monday",
        3 => "Tuesday",
        4 => "Wednesday",
        5 => "Thursday",
        6 => "Friday",
        7 => "Saturday",
        else => "Invalid day",
    };
}

pub fn main() void {
    const day = getDayOfWeek(1);
    print("Selected day is {s}\n", .{day});
}
