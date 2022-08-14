# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "demo_01: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idemo_01:/home/jeff/rosprt/src/demo_01/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(demo_01_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jeff/rosprt/src/demo_01/msg/Person.msg" NAME_WE)
add_custom_target(_demo_01_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo_01" "/home/jeff/rosprt/src/demo_01/msg/Person.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(demo_01
  "/home/jeff/rosprt/src/demo_01/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_01
)

### Generating Services

### Generating Module File
_generate_module_cpp(demo_01
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_01
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(demo_01_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(demo_01_generate_messages demo_01_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/rosprt/src/demo_01/msg/Person.msg" NAME_WE)
add_dependencies(demo_01_generate_messages_cpp _demo_01_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_01_gencpp)
add_dependencies(demo_01_gencpp demo_01_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_01_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(demo_01
  "/home/jeff/rosprt/src/demo_01/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_01
)

### Generating Services

### Generating Module File
_generate_module_lisp(demo_01
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_01
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(demo_01_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(demo_01_generate_messages demo_01_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/rosprt/src/demo_01/msg/Person.msg" NAME_WE)
add_dependencies(demo_01_generate_messages_lisp _demo_01_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_01_genlisp)
add_dependencies(demo_01_genlisp demo_01_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_01_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(demo_01
  "/home/jeff/rosprt/src/demo_01/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_01
)

### Generating Services

### Generating Module File
_generate_module_py(demo_01
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_01
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(demo_01_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(demo_01_generate_messages demo_01_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/rosprt/src/demo_01/msg/Person.msg" NAME_WE)
add_dependencies(demo_01_generate_messages_py _demo_01_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_01_genpy)
add_dependencies(demo_01_genpy demo_01_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_01_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_01)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_01
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(demo_01_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_01)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_01
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(demo_01_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_01)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_01\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_01
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(demo_01_generate_messages_py std_msgs_generate_messages_py)
endif()
