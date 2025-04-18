const std = @import("std");

// Although this function looks imperative, note that its job is to
// declaratively construct a build graph that will be executed by an external
// runner.
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const exe = b.addExecutable(.{
        .name = "adder",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
    });
    // Link the separate assembly file.
    exe.addAssemblyFile(b.path("src/add.s"));
    b.installArtifact(exe);
}
