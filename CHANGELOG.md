# Changelog

## 14.6.202.34.2 - 26-10-2026

- Linux (glibc) gems are built on Debian bookworm with clang 19 instead of
  trixie with GCC 14, so they load on glibc 2.36 and with older libstdc++:
  Debian bookworm, Ubuntu 22.04, RHEL 9, Amazon Linux 2023. The trixie-built
  14.6.202.34.1 needed glibc 2.38. CI now fails a build that needs a newer
  glibc, and tests the gems on bookworm.

## 14.6.202.34.1 - 25-10-2026

- Renamed drm51_libv8_node, so DRM51's builds can't be mistaken for upstream
  libv8-node releases, and versioned on the V8 version it contains
  (V8 14.6.202.34, then our build number). Built from Node 26.12.1; same build
  as 26.12.1.0.2. The require path (`libv8-node`) and `Libv8::Node` are
  unchanged.
- Can't be installed alongside upstream libv8-node: they provide the same files.
