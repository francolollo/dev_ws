set(CPACK_PACKAGE_NAME "Gazebo")
set(CPACK_PACKAGE_VENDOR "gazebosim.org")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "A 3D dynamics simulator for robotics")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "gazebo")
set(CPACK_RESOURCE_FILE_LICENSE "/home/andrea/dev_ws/gazebo/LICENSE")
set(CPACK_RESOURCE_FILE_README "/home/andrea/dev_ws/gazebo/README.md")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/home/andrea/dev_ws/gazebo/README.md")
set(CPACK_PACKAGE_MAINTAINER "Nate Koenig <gazebo@gazebosim.org>")
set(CPACK_PACKAGE_CONTACT "Nate Koenig <gazebo@gazebosim.org>")

set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libogre-dev, libfreeimage-dev, libqt4-dev, libprotobuf-dev, libprotoc-dev, libtbb2, libboost-all-dev")
set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "A 3D dynamics simulator for robotics")

set(CPACK_RPM_PACKAGE_ARCHITECTURE "")
set(CPACK_RPM_PACKAGE_REQUIRES "libogre-dev, libfreeimage-dev, libqt4-dev, libprotobuf-dev, libprotoc-dev, libtbb2, libboost-all-dev")
set(CPACK_RPM_PACKAGE_DESCRIPTION "A 3D dynamics simulator for robotics")


set (CPACK_PACKAGE_FILE_NAME "gazebo-11.14.0")
set (CPACK_SOURCE_PACKAGE_FILE_NAME "gazebo-11.14.0")
