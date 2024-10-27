vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO andatr/object_pool
  REF "v${VERSION}"
  SHA512 e4765e1367c63506c02140bca4cd0337ae999f191684f5d1fd62ea3b2effbc4fb78bc9dce12e7f4b1f0f5383107f4e6da052cb3d0492c14cb01de6d5e1d6e9fc
  HEAD_REF master
)

vcpkg_cmake_install()