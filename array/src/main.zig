const std = @import("std");

pub fn main() void {
    // declaring an array of 5 elements
    var numbers: [5]i32 = [5]i32{ 1, 2, 3, 4, 5 };

    // accessing array elements
    const first: i32 = numbers[0];
    std.debug.print("First element: {d}\n", .{first});

    // modifying array elements
    numbers[0] = 10;
    const new_first: i32 = numbers[0];
    std.debug.print("\nNew first element: {d}\n", .{new_first});

    // iterating over array elements
    std.debug.print("\nArray elements:\n", .{});
    for (numbers, 0..) |number, index| {
        std.debug.print("numbers[{}] = {}\n", .{ index, number });
    }

    // creating slices
    const slice = numbers[1..4];
    std.debug.print("\nSliced array elements:\n", .{});
    for (slice, 0..) |number, index| {
        std.debug.print("slice[{}] = {}\n", .{ index, number });
    }
}
