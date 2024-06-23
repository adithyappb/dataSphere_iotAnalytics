load("@io_bazel_rules_go//go:def.bzl", "go_library", "go_binary")

go_binary(
    name = "main",
    srcs = ["main.go"],
    deps = [
        "//controllers:device_controller",
        "@com_github_gorilla_mux//:mux",
    ],
)

go_library(
    name = "device_controller",
    srcs = ["controllers/device_controller.go"],
    importpath = "example.com/project/controllers",
    visibility = ["//visibility:public"],
)
