//! By convention, main.zig is where your main function lives in the case that
//! you are building an executable. If you are making a library, the convention
//! is to delete this file and start with root.zig instead.
const std = @import("std");
const expect = std.testing.expect;

pub fn main() !void {
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
}
const SearchError = error{invalidArray};
pub fn createBinarySeach(array: [10]u8, target: u8) SearchError!u8 {
    var min: u8 = 0;
    var max: u8 = array.len - 1;
    while (min < max) {
        const palpiteIndex: u8 = (min + max) / 2;
        if (array[palpiteIndex] == target) return palpiteIndex;
        if (palpiteIndex < target) {
            min = palpiteIndex + 1;
        } else max = palpiteIndex - 1;
    }
    return SearchError.invalidArray;
}
