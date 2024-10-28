vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO andatr/object_pool
  REF "v${VERSION}"
  SHA512 43569b73422b3110e4ef8a28e578263f7d51525b0b790d73f6758afc693bb614deadd0b27be02927576d6c2a1ba86aac2bef3b4db9ba8e47249dc42889028015
  HEAD_REF master
)
vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    -DOBJECT_POOL_TEST=ON
    -DOBJECT_POOL_EXAMPLES=OFF
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME object_pool CONFIG_PATH "share/cmake/object_pool")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")