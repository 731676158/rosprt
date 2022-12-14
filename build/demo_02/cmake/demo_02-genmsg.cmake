# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "demo_02: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(demo_02_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jeff/rosprt/src/demo_02/srv/Addints.srv" NAME_WE)
add_custom_target(_demo_02_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo_02" "/home/jeff/rosprt/src/demo_02/srv/Addints.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(demo_02
  "/home/jeff/rosprt/src/demo_02/srv/Addints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_02
)

### Generating Module File
_generate_module_cpp(demo_02
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_02
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(demo_02_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(demo_02_generate_messages demo_02_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/rosprt/src/demo_02/srv/Addints.srv" NAME_WE)
add_dependencies(demo_02_generate_messages_cpp _demo_02_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_02_gencpp)
add_dependencies(demo_02_gencpp demo_02_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_02_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(demo_02
  "/home/jeff/rosprt/src/demo_02/srv/Addints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_02
)

### Generating Module File
_generate_module_lisp(demo_02
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_02
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(demo_02_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(demo_02_generate_messages demo_02_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/rosprt/src/demo_02/srv/Addints.srv" NAME_WE)
add_dependencies(demo_02_generate_messages_lisp _demo_02_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_02_genlisp)
add_dependencies(demo_02_genlisp demo_02_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_02_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(demo_02
  "/home/jeff/rosprt/src/demo_02/srv/Addints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_02
)

### Generating Module File
_generate_module_py(demo_02
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_02
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(demo_02_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(demo_02_generate_messages demo_02_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jeff/rosprt/src/demo_02/srv/Addints.srv" NAME_WE)
add_dependencies(demo_02_generate_messages_py _demo_02_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_02_genpy)
add_dependencies(demo_02_genpy demo_02_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_02_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_02)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_02
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(demo_02_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_02)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_02
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(demo_02_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_02)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_02\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_02
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(demo_02_generate_messages_py std_msgs_generate_messages_py)
endif()
