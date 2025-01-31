const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var x: i32 = 100;
    var y: i32 = 10;

    // pointer to x
    const ptr1: *i32 = &x;
    const ptr2: *i32 = &y;

    // dereference the pointer, and print the value
    const value = ptr1.*;
    print("Value: {}\n", .{value});

    // dereference the pointer, and change the value
    ptr2.* = 20;
    print("Value: {}\n", .{y});

    // constant pointer
    // const CONST_PTR: *i32 = &x;

    var arr = [_]i32{ 1, 2, 3, 4, 5 };
    var arr_ptr: [*]i32 = &arr;
    arr_ptr[0] = 100;
    print("Array: {any}\n", .{arr});

    // optional pointer
    const optional_ptr: ?*i32 = &x;
    if (optional_ptr) |ptr| {
        ptr.* = 200;
    }
    print("Value: {}\n", .{x});
}
