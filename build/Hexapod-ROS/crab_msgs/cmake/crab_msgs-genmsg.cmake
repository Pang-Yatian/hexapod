# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "crab_msgs: 7 messages, 1 services")

set(MSG_I_FLAGS "-Icrab_msgs:/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(crab_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg" NAME_WE)
add_custom_target(_crab_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crab_msgs" "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg" ""
)

get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg" NAME_WE)
add_custom_target(_crab_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crab_msgs" "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg" "crab_msgs/LegJointsState"
)

get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg" NAME_WE)
add_custom_target(_crab_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crab_msgs" "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg" "crab_msgs/LegJointsState:crab_msgs/LegPositionState"
)

get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg" NAME_WE)
add_custom_target(_crab_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crab_msgs" "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg" ""
)

get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg" NAME_WE)
add_custom_target(_crab_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crab_msgs" "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg" ""
)

get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg" NAME_WE)
add_custom_target(_crab_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crab_msgs" "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg" ""
)

get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg" NAME_WE)
add_custom_target(_crab_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crab_msgs" "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg" ""
)

get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv" NAME_WE)
add_custom_target(_crab_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crab_msgs" "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv" "crab_msgs/LegJointsState:crab_msgs/LegPositionState"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
)
_generate_msg_cpp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
)
_generate_msg_cpp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
)
_generate_msg_cpp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
)
_generate_msg_cpp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
)
_generate_msg_cpp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
)
_generate_msg_cpp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
)

### Generating Services
_generate_srv_cpp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
)

### Generating Module File
_generate_module_cpp(crab_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(crab_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(crab_msgs_generate_messages crab_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_cpp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_cpp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_cpp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_cpp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_cpp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_cpp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_cpp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv" NAME_WE)
add_dependencies(crab_msgs_generate_messages_cpp _crab_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crab_msgs_gencpp)
add_dependencies(crab_msgs_gencpp crab_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crab_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
)
_generate_msg_eus(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
)
_generate_msg_eus(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
)
_generate_msg_eus(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
)
_generate_msg_eus(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
)
_generate_msg_eus(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
)
_generate_msg_eus(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
)

### Generating Services
_generate_srv_eus(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
)

### Generating Module File
_generate_module_eus(crab_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(crab_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(crab_msgs_generate_messages crab_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_eus _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_eus _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_eus _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_eus _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_eus _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_eus _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_eus _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv" NAME_WE)
add_dependencies(crab_msgs_generate_messages_eus _crab_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crab_msgs_geneus)
add_dependencies(crab_msgs_geneus crab_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crab_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
)
_generate_msg_lisp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
)
_generate_msg_lisp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
)
_generate_msg_lisp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
)
_generate_msg_lisp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
)
_generate_msg_lisp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
)
_generate_msg_lisp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
)

### Generating Services
_generate_srv_lisp(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
)

### Generating Module File
_generate_module_lisp(crab_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(crab_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(crab_msgs_generate_messages crab_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_lisp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_lisp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_lisp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_lisp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_lisp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_lisp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_lisp _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv" NAME_WE)
add_dependencies(crab_msgs_generate_messages_lisp _crab_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crab_msgs_genlisp)
add_dependencies(crab_msgs_genlisp crab_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crab_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
)
_generate_msg_nodejs(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
)
_generate_msg_nodejs(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
)
_generate_msg_nodejs(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
)
_generate_msg_nodejs(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
)
_generate_msg_nodejs(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
)
_generate_msg_nodejs(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
)

### Generating Services
_generate_srv_nodejs(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
)

### Generating Module File
_generate_module_nodejs(crab_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(crab_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(crab_msgs_generate_messages crab_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_nodejs _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_nodejs _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_nodejs _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_nodejs _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_nodejs _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_nodejs _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_nodejs _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv" NAME_WE)
add_dependencies(crab_msgs_generate_messages_nodejs _crab_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crab_msgs_gennodejs)
add_dependencies(crab_msgs_gennodejs crab_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crab_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
)
_generate_msg_py(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
)
_generate_msg_py(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
)
_generate_msg_py(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
)
_generate_msg_py(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
)
_generate_msg_py(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
)
_generate_msg_py(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
)

### Generating Services
_generate_srv_py(crab_msgs
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv"
  "${MSG_I_FLAGS}"
  "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg;/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
)

### Generating Module File
_generate_module_py(crab_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(crab_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(crab_msgs_generate_messages crab_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_py _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_py _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegIKRequest.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_py _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/LegPositionState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_py _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyState.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_py _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/BodyCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_py _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/msg/GaitCommand.msg" NAME_WE)
add_dependencies(crab_msgs_generate_messages_py _crab_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/p/hexapod_ws/src/Hexapod-ROS/crab_msgs/srv/GetLegIKSolver.srv" NAME_WE)
add_dependencies(crab_msgs_generate_messages_py _crab_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crab_msgs_genpy)
add_dependencies(crab_msgs_genpy crab_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crab_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crab_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(crab_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crab_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(crab_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crab_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(crab_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crab_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(crab_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crab_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(crab_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
