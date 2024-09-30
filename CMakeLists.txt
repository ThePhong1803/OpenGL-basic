# Top level hierarchical
cmake_minimum_required(VERSION 3.10)
project(gui)

# Dependency and header file
include_directories(${PROJECT_SOURCE_DIR}/inc)
include_directories(${PROJECT_SOURCE_DIR}/inc/glfw/deps)
include_directories(${PROJECT_SOURCE_DIR}/inc/glfw)
add_subdirectory(${PROJECT_SOURCE_DIR}/inc/glfw)

# Grouping source file
file(GLOB SOURCES "src/*.cpp")
set(GLAD_GL "${PROJECT_SOURCE_DIR}/inc/glfw/deps/glad/gl.h"
            "${PROJECT_SOURCE_DIR}/inc/glfw/deps/glad_gl.c")
set(GETOPT "${PROJECT_SOURCE_DIR}/inc/glfw/deps/getopt.h"
           "${PROJECT_SOURCE_DIR}/inc/glfw/deps/getopt.c")

# Create executable file
add_executable(main src/main.cpp 
                    src/shader.cpp
                    src/VertexBufferArray.cpp 
                    src/VertexArray.cpp
                    src/ElementBuffer.cpp 
                    src/fileloader.cpp
                    src/stb.cpp
                    src/Texture.cpp
                    src/camera.cpp
                    ${GLAD_GL})
#add_executable(example src/example.cpp ${SOURCES}  ${GLAD_GL})
target_link_libraries(main glfw)
#target_link_libraries(example glfw)
