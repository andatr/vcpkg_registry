vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO andatr/object_pool
  REF "v${VERSION}"
  SHA512 0
  HEAD_REF master
)

vcpkg_cmake_install()