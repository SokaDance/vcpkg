include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mat007/turtle
    REF v1.3.2
    SHA512 be6f6097d522fc2b96157692dbb5dc7a1ab47b8955956fe9955d4d1477958ed444c8e1a53fe616905669d0ec450eca7eddef6038ac137763bc02bbcbe2ffcf9d
    HEAD_REF master
)

file(MAKE_DIRECTORY ${CURRENT_PACKAGES_DIR}/include)
file(COPY ${SOURCE_PATH}/include DESTINATION ${CURRENT_PACKAGES_DIR})

file(COPY ${SOURCE_PATH}/LICENSE_1_0.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/turtle)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/turtle/LICENSE_1_0.txt ${CURRENT_PACKAGES_DIR}/share/turtle/copyright)
