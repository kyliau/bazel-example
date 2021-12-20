def _foo_binary_impl(ctx):
    output = ctx.actions.declare_file(
      ctx.label.name + ".out"
    )
    #ctx.actions.run(
    #  outputs = [output],
    #  executable = ctx.file._compiler,
    #  arguments = [output.path],
    #)
    ctx.actions.run_shell(
      outputs = [output],
      command = "sleep 8; echo 'Hello world' > " + output.path
    )
    return [DefaultInfo(files = depset([output]))]

foo_binary = rule(
    implementation = _foo_binary_impl,
    attrs = {
        "username": attr.string(
          #mandatory = True,
        ),
        "deps": attr.label_list(

        ),
        "_compiler": attr.label(
          default = "//:compiler_target",
          allow_single_file = True,
          executable = True,
          cfg="exec",
        )
    },
)