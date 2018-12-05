workspace(name = "a")

http_archive(
    name = "com_google_protobuf",
    sha256 = "118ac276be0db540ff2a89cecc5dfb9606d4d16e91cc4ea8883ae8160acb5163",
    strip_prefix = "protobuf-0456e269ee6505766474aa8d7b8bba7ac047f457",
    urls = ["https://github.com/google/protobuf/archive/0456e269ee6505766474aa8d7b8bba7ac047f457.zip"],
)

http_archive(
    name = "com_google_protobuf_java",
    sha256 = "118ac276be0db540ff2a89cecc5dfb9606d4d16e91cc4ea8883ae8160acb5163",
    strip_prefix = "protobuf-0456e269ee6505766474aa8d7b8bba7ac047f457",
    urls = ["https://github.com/google/protobuf/archive/0456e269ee6505766474aa8d7b8bba7ac047f457.zip"],
)

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

load("@io_bazel_rules_scala//scala_proto:scala_proto.bzl", "scala_proto_repositories")

scala_proto_repositories()
