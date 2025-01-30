const std = @import("std");
pub fn main() void {
    // define vector of 4 integers
    const vec1: @Vector(4, i32) = @Vector(4, i32){ 1, 2, 3, 4 };
    const vec2: @Vector(4, i32) = @Vector(4, i32){ 5, 6, 7, 8 };

    // element wise addition
    const result = vec1 + vec2;
    std.debug.print("{d}\n", .{result});

    // extract and modify element
    var vec3: @Vector(4, i32) = @Vector(4, i32){ 10, 11, 12, 13 };
    const value = vec3[0];
    vec3[0] = value + 10;
    std.debug.print("{d}\n", .{vec3});

    // shuffling
    const vec4: @Vector(4, i32) = @Vector(4, i32){ 1, 2, 3, 4 };
    const vec5: @Vector(8, i32) = @Vector(8, i32){ 5, 6, 7, 8, 9, 10, 11, 12 };
    const shuffled = @shuffle(i32, vec4, vec5, @Vector(4, i32){ 0, 3, -1, -4 });
    std.debug.print("{any}\n", .{shuffled});
}
