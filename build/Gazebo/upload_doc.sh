#!/bin/sh

# Check command line operator, currently there is just an optional "-d" which
# indicates that development documentation should be uploaded. 
if [ "$#" -ne "0" ]
then
  if [ "$@" = "-d" ]
  then
    target="dev"
  else
    echo "Usage: sh upload_doc.sh [options]\n"
    echo "\n"
    echo "Options:"
    echo "  -d\t Upload development documentation\n"
    exit
  fi
else
  target="11.14.0"
fi


# Check if the node was configured to use s3cmd
# This is done by running s3cmd --configure
if [ ! -f "${HOME}/.s3cfg" ]; then
    echo "No $HOME/.s3cfg file found. Please config the software first in your system"
    exit 1
fi

# Make documentation if not build
make doc
if [ ! -f "/home/andrea/dev_ws/build/Gazebo/doxygen/html/index.html" ]; then
  echo "Documentation not present. Install doxygen, and run `make doc` in the build directory"
  exit 1
fi

# The code API
s3cmd sync /home/andrea/dev_ws/build/Gazebo/doxygen/html/* s3://osrf-distributions/gazebo/api/$target/ --dry-run -v

echo "\nUpload target: $target"
echo -n "Upload code API(Y/n)? "
read ans

if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
  s3cmd sync /home/andrea/dev_ws/build/Gazebo/doxygen/html/* s3://osrf-distributions/gazebo/api/$target/ -v
fi


# The msgs API
s3cmd sync /home/andrea/dev_ws/build/Gazebo/doxygen_msgs/html/* s3://osrf-distributions/gazebo/api/$target/ --dry-run -v

echo "\nUpload target: $target"
echo -n "Upload msg API (Y/n)? "
read ans

if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
  s3cmd sync /home/andrea/dev_ws/build/Gazebo/doxygen_msgs/html/* s3://osrf-distributions/gazebo/msg-api/$target/ -v
fi
