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

load("@io_bazel_rules_scala//scala:scala_maven_import_external.bzl", "scala_maven_import_external", "scala_import_external")


scala_maven_import_external(
      name = "com_google_guava_guava",
      artifact = "com.google.guava:guava:25.1-jre",
      jar_sha256 = "6db0c3a244c397429c2e362ea2837c3622d5b68bb95105d37c21c36e5bc70abf",
      srcjar_sha256 = "b7ffb578b2bd6445c958356e308d1c46c9ea6fb868fc9444bc8bda3a41875a1b",
      deps = [
          "@a//src/a_pkg:foo"
      ],
      server_urls = ["https://repo.maven.apache.org/maven2/"],
      licenses = ["notice"],  # Apache 2.0
  )