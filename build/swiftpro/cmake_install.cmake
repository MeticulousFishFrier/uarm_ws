# Install script for directory: /home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/src/swiftpro

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swiftpro/msg" TYPE FILE FILES
    "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/src/swiftpro/msg/SwiftproState.msg"
    "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/src/swiftpro/msg/position.msg"
    "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/src/swiftpro/msg/angle4th.msg"
    "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/src/swiftpro/msg/status.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swiftpro/cmake" TYPE FILE FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/build/swiftpro/catkin_generated/installspace/swiftpro-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/devel/include/swiftpro")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/devel/share/roseus/ros/swiftpro")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/devel/share/common-lisp/ros/swiftpro")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/devel/share/gennodejs/ros/swiftpro")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/devel/lib/python2.7/dist-packages/swiftpro")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/devel/lib/python2.7/dist-packages/swiftpro")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/build/swiftpro/catkin_generated/installspace/swiftpro.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swiftpro/cmake" TYPE FILE FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/build/swiftpro/catkin_generated/installspace/swiftpro-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swiftpro/cmake" TYPE FILE FILES
    "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/build/swiftpro/catkin_generated/installspace/swiftproConfig.cmake"
    "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/build/swiftpro/catkin_generated/installspace/swiftproConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swiftpro" TYPE FILE FILES "/home/xueyelin/Documents/Thermite_Boom_Boom/Code/ROS/uarm_ws/src/swiftpro/package.xml")
endif()

