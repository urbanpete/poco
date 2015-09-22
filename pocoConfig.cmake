get_filename_component(THIS_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

set(PKG_NAME poco)
set(${PKG_NAME}_LIB_DIR ${THIS_CMAKE_DIR}/lib)
set(${PKG_NAME}_INCLUDE_DIR ${THIS_CMAKE_DIR}/include)
set(${PKG_NAME}_SRC_DIR ${THIS_CMAKE_DIR}/src)

set(${PKG_NAME}_LIBS
    PocoFoundation
    PocoJSON
    PocoUtil
    PocoXML)

if (${CMAKE_BUILD_TYPE} MATCHES debug)
    set(BuildTypeLibExtension "mdd")
else()   
    set(BuildTypeLibExtension "md")
endif()   
if (${TARGET_NAME} MATCHES "x86_64-linux-gcc")
    set(LibraryPrefix "lib")
endif()   
foreach(lib ${${PKG_NAME}_LIBS})
    add_library(${lib}  STATIC IMPORTED)
    set_property(TARGET ${lib} PROPERTY IMPORTED_LOCATION ${${PKG_NAME}_LIB_DIR}/${LibraryPrefix}${lib}${BuildTypeLibExtension}${CMAKE_STATIC_LIBRARY_SUFFIX})
endforeach(lib)

add_definitions(-DPOCO_NO_AUTOMATIC_LIBS)
add_definitions(-DPOCO_STATIC)
