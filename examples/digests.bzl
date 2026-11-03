"""Text fixtures shared by the example digest tests."""

load("@bazel_skylib//rules:write_file.bzl", "write_file")

def write_digests(name, content):
    # type: (str, list[str]) -> None
    """Write digest lines to <name>.txt."""

    # Skylib 1.9.2 leaves write_file's parameters untyped.
    write_file(name = name, out = name + ".txt", content = content)  # ty: ignore[non-static-type]
