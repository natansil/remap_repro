workspace(name = "a")

rules_scala_version="4be50865a332aef46c46c94b345c320c3353e9e1" # update this as needed
rules_scala_version_sha256="6f2be4982047c351de7ecc2215c40cedcc3174a8320e954277dafd0c4f352ce0"
http_archive(
             name = "io_bazel_rules_scala",
             url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
             type = "zip",
             strip_prefix= "rules_scala-%s" % rules_scala_version,
             sha256 = rules_scala_version_sha256,
)

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")
scala_register_toolchains()