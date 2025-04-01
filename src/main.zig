extern fn add_numbers(a: usize, b: usize) usize;

pub fn main() !void {
    const result = add_numbers(40, 2);
    std.debug.print("40 + 2 = {}\n", .{result});
}

const std = @import("std");
