include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mat007/turtle
    REF e92f52821da312c5e30b447c8046893e576aefca
    SHA512 a9997a67690e165d7fb5b3f55439e6506595c56873e8d6e87facf92d2ce988036bc18019dd44d4f255dc34a7e0666abc662bca43b9c4bdfb87b7e527cc53dfea
    HEAD_REF master
)

file(MAKE_DIRECTORY ${CURRENT_PACKAGES_DIR}/include)
file(COPY ${SOURCE_PATH}/include DESTINATION ${CURRENT_PACKAGES_DIR})

file(COPY ${SOURCE_PATH}/LICENSE_1_0.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/turtle)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/turtle/LICENSE_1_0.txt ${CURRENT_PACKAGES_DIR}/share/turtle/copyright)
