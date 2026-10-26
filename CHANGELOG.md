# Changelog

## 14.6.202.34.1 - 25-10-2026

- Renamed drm51_libv8_node, so DRM51's builds can't be mistaken for upstream
  libv8-node releases, and versioned on the V8 version it contains
  (V8 14.6.202.34, then our build number). Built from Node 26.12.1; same build
  as 26.12.1.0.2. The require path (`libv8-node`) and `Libv8::Node` are
  unchanged.
- Can't be installed alongside upstream libv8-node: they provide the same files.
