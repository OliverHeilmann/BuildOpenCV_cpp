# To use this bash script, simply run in terminal:
# --> sh BuildOpenCV.sh

# Install XCode first before running this script
# XCode through App store!

# Install Homebrew in order to install cmake compiler (with brew command)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install cmake

# Build Opencv v4.2.0
mkdir opencv
cd opencv
git clone https://github.com/opencv/opencv.git
cd opencv
git checkout tags/4.2.0
cd ..
git clone https://github.com/opencv/opencv_contrib
cd opencv_contrib 
git checkout tags/4.2.0
cd ..
mkdir install build_opencv
ls -l
build_opencv
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=../install \
      -D INSTALL_C_EXAMPLES=ON \
      -D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules \
      -D BUILD_EXAMPLES=ON ../opencv
export CPUS=$(sysctl -n hw.physicalcpu)
make -j $CPUS
make install