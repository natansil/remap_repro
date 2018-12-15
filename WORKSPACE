workspace(name = "a")

load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")

java_import_external(
    name = "com_google_guava",
    licenses = ["notice"],  # Apache 2.0
    jar_urls = [
        "http://bazel-mirror.storage.googleapis.com/repo1.maven.org/maven2/com/google/guava/guava/20.0/guava-20.0.jar",
        "http://repo1.maven.org/maven2/com/google/guava/guava/20.0/guava-20.0.jar",
        "http://maven.ibiblio.org/maven2/com/google/guava/guava/20.0/guava-20.0.jar",
    ],
    jar_sha256 = "36a666e3b71ae7f0f0dca23654b67e086e6c93d192f60ba5dfd5519db6c288c8",
    deps = [
        "@a//src/a_pkg:foo"
    ],
)