vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO andatr/object_pool
  REF "v${VERSION}"
  SHA512 5162ca2dc7a64f9a80b2ac3cbe4d4e4513067395ff45c05eaa875a44ca2251e85b2e93d7be1dbf741703b7f619fd1e32dbb5d726ca492e76ba4c8a5cd6f5940d
  HEAD_REF master
)
vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS "-DOBJECT_POOL_TEST=OFF -DOBJECT_POOL_EXAMPLES=OFF"
)
vcpkg_cmake_install()