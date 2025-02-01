const std = @import("std");
const print = std.debug.print;

const SimpleUnion = union {
    int: i32,
    float: f32,
    string: []const u8,
};

const TaggedUnion = union(enum) {
    int: i32,
    float: f32,
    string: []const u8,
};

pub fn main() void {
    const value: SimpleUnion = SimpleUnion{ .int = 42 };
    print("Value: {}\n", .{value.int});

    const myValue: TaggedUnion = TaggedUnion{ .string = "Hello, World!" };
    switch (myValue) {
        .int => |val| print("int: {}\n", .{val}),
        .float => |val| print("float: {}\n", .{val}),
        .string => |val| print("String: {s}\n", .{val}),
    }
}
