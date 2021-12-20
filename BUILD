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

genrule(
  name = "compiler_target",
  srcs = ["compiler"],
  outs = ["compiler_out"],
  cmd = "cp $< $@",
  executable = True,
)
