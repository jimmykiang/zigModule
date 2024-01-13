const std = @import("std");

pub fn Squarey(x: f32) f32 {

    return x * x;
}

test "Squarey" {

    const s = Squarey(3);
    try std.testing.expectEqual(s, 9);
}