load("@rules_cc//cc:defs.bzl", "cc_binary")
load(":example.bzl", "foo_binary")

foo_binary(
  name = "bin",
  deps = [
    ":bar",
  ]
)

foo_binary(
  name = "bar",
)

foo_binary(
  name = "baz",
)

cc_binary(
    name = "compiler_target",
    srcs = ["compiler.cpp"],
    deps = [
    ],
)