Project(cgltf C)
cmake_minimum_required(VERSION 3.0)

set(PROJECT_VERSION 3.0)
set(API_VERSION 300)

include_directories( ${CMAKE_CURRENT_LIST_DIR}/cgltf )
include_directories(.)

link_directories(${CMAKE_SOURCE_DIR}/../lib)

add_definitions("-DBUILD_LIBTYPE_SHARED")

set(CGLTF_SOURCES
    ${CMAKE_CURRENT_LIST_DIR}/cgltf.c
	)

# For " Policy CMP0042 is not set: MACOSX_RPATH is enabled by default."
if (APPLE)
    set(CMAKE_MACOSX_RPATH ON)
endif (APPLE)

add_library(cgltf SHARED ${CGLTF_SOURCES})

set_target_properties(cgltf PROPERTIES PREFIX "")

if (APPLE)
    set_target_properties(cgltf PROPERTIES
        XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY ""
	)
endif (APPLE)


#install
install(TARGETS cgltf
              RUNTIME DESTINATION  .
              LIBRARY DESTINATION  .
              ARCHIVE DESTINATION  .
              )
