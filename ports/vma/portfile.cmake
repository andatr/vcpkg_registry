vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL git@github.com:GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator.git
  REF a6bfc237255a6bac1513f7c1ebde6d8aed6b5191
)

vcpkg_check_features(OUT_FEATURE_OPTIONS FEATURE_OPTIONS
  FEATURES
  vulkan-static VMA_STATIC_VULKAN_FUNCTIONS
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    ${FEATURE_OPTIONS}
)

vcpkg_cmake_install()

file(
  INSTALL "${SOURCE_PATH}/LICENSE.md"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright
)