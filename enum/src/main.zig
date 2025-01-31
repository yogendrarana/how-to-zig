const std = @import("std");
const print = std.debug.print;

const Color = enum {
    Red,
    Green,
    Blue,
};

pub fn main() void {
    const color: Color = Color.Green;

    switch (color) {
        Color.Red => print("Color is Red\n", .{}),
        Color.Green => print("Color is Green\n", .{}),
        Color.Blue => print("Color is Blue\n", .{}),
    }
}
