include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mat007/turtle
    REF v1.3.1
    SHA512 2a79a23ca7da669a11012dea98216aad44d2bed1be4dd4b75e5fbb07a7ba61f87a117284157bd117698544c31eefe06df8621727acd287ab6530a0138f524434
    HEAD_REF master
)

file(MAKE_DIRECTORY ${CURRENT_PACKAGES_DIR}/include)
file(COPY ${SOURCE_PATH}/include DESTINATION ${CURRENT_PACKAGES_DIR})

file(COPY ${SOURCE_PATH}/LICENSE_1_0.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/turtle)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/turtle/LICENSE_1_0.txt ${CURRENT_PACKAGES_DIR}/share/turtle/copyright)
