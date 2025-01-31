const std = @import("std");
const print = std.debug.print;

const User = struct {
    name: []const u8,
    age: u32,
    address: []const u8,

    // methods on the struct
    pub fn greet(self: User) void {
        print("Hello, I am {s} from {s} and I am {} years old.\n", .{ self.name, self.address, self.age });
    }

    // constructor like method
    pub fn init(name: []const u8, age: u32, address: []const u8) @This() {
        return @This(){
            .name = name,
            .age = age,
            .address = address,
        };
    }
};

pub fn main() void {
    const John = User{
        .name = "John Doe",
        .age = 25,
        .address = "New York",
    };

    John.greet();

    const Jane = User.init("Jane Doe", 30, "Autralia");
    Jane.greet();
}
