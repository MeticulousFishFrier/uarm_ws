# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "swiftpro: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iswiftpro:/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(swiftpro_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg" NAME_WE)
add_custom_target(_swiftpro_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swiftpro" "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg" ""
)

get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg" NAME_WE)
add_custom_target(_swiftpro_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swiftpro" "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg" ""
)

get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg" NAME_WE)
add_custom_target(_swiftpro_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swiftpro" "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg" ""
)

get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg" NAME_WE)
add_custom_target(_swiftpro_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swiftpro" "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swiftpro
)
_generate_msg_cpp(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swiftpro
)
_generate_msg_cpp(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swiftpro
)
_generate_msg_cpp(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swiftpro
)

### Generating Services

### Generating Module File
_generate_module_cpp(swiftpro
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swiftpro
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(swiftpro_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(swiftpro_generate_messages swiftpro_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_cpp _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_cpp _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_cpp _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_cpp _swiftpro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swiftpro_gencpp)
add_dependencies(swiftpro_gencpp swiftpro_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swiftpro_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swiftpro
)
_generate_msg_eus(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swiftpro
)
_generate_msg_eus(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swiftpro
)
_generate_msg_eus(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swiftpro
)

### Generating Services

### Generating Module File
_generate_module_eus(swiftpro
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swiftpro
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(swiftpro_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(swiftpro_generate_messages swiftpro_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_eus _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_eus _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_eus _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_eus _swiftpro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swiftpro_geneus)
add_dependencies(swiftpro_geneus swiftpro_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swiftpro_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swiftpro
)
_generate_msg_lisp(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swiftpro
)
_generate_msg_lisp(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swiftpro
)
_generate_msg_lisp(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swiftpro
)

### Generating Services

### Generating Module File
_generate_module_lisp(swiftpro
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swiftpro
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(swiftpro_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(swiftpro_generate_messages swiftpro_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_lisp _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_lisp _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_lisp _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_lisp _swiftpro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swiftpro_genlisp)
add_dependencies(swiftpro_genlisp swiftpro_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swiftpro_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swiftpro
)
_generate_msg_nodejs(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swiftpro
)
_generate_msg_nodejs(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swiftpro
)
_generate_msg_nodejs(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swiftpro
)

### Generating Services

### Generating Module File
_generate_module_nodejs(swiftpro
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swiftpro
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(swiftpro_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(swiftpro_generate_messages swiftpro_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_nodejs _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_nodejs _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_nodejs _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_nodejs _swiftpro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swiftpro_gennodejs)
add_dependencies(swiftpro_gennodejs swiftpro_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swiftpro_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swiftpro
)
_generate_msg_py(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swiftpro
)
_generate_msg_py(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swiftpro
)
_generate_msg_py(swiftpro
  "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swiftpro
)

### Generating Services

### Generating Module File
_generate_module_py(swiftpro
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swiftpro
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(swiftpro_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(swiftpro_generate_messages swiftpro_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/status.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_py _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/angle4th.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_py _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/position.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_py _swiftpro_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xueyelin/Documents/Thermite Boom Boom/Code/ROS/uarm_ws/src/RosForSwiftAndSwiftPro/swiftpro/msg/SwiftproState.msg" NAME_WE)
add_dependencies(swiftpro_generate_messages_py _swiftpro_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swiftpro_genpy)
add_dependencies(swiftpro_genpy swiftpro_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swiftpro_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swiftpro)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swiftpro
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(swiftpro_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swiftpro)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swiftpro
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(swiftpro_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swiftpro)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swiftpro
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(swiftpro_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swiftpro)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swiftpro
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(swiftpro_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swiftpro)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swiftpro\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swiftpro
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(swiftpro_generate_messages_py std_msgs_generate_messages_py)
endif()
