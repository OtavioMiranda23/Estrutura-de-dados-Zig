const std = @import("std");
const expect = std.testing.expect;

const main = @import("./src/main.zig");
test "cria busca binaria" {
    const input = [10]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    const binarySeach: ?u8 = try main.createBinarySeach(input, 3);
    try expect(binarySeach == 2);
}
