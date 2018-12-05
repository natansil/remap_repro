def _repro_impl(ctx):
    for dep in ctx.attr.deps:
        if JavaInfo in dep:
            java_provider = dep[JavaInfo]
            trans_jars = java_provider.transitive_runtime_jars  
            for jar in trans_jars:
                print("dep: {}".format(jar))
    ctx.file_action(
      output = ctx.new_file("bar.txt"),
      content = "bar",
    )

repro = rule(
    implementation = _repro_impl,
    attrs = {
        "deps": attr.label_list(
            mandatory = True,
            allow_rules = [
                "java_library",
                "scala_library"
            ]),
        "flags": attr.string_list(default = []),
        "generator": attr.label(
            executable = True, cfg = "host", allow_files = True),
    },
    outputs={"bar": "bar.txt"},
)
