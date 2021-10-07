# Repository Summary
This repo aims to simplify the OpenCV 4.2.0 installation process for Intel based Mac OS users (for Python and C++).

# Instructions (For MacOS-Intel)
1) Install XCode from App Store
2) Run [sh OpenCV_builder.sh](https://github.com/OliverHeilmann/BuildOpenCV_cpp/blob/main/App_builder.sh) in terminal (in a directory which you wish to install OpenCV in). Note that this script will install Homebrew for you if you do not already have it installed.
3) Go into [CMakeLists.txt](https://github.com/OliverHeilmann/BuildOpenCV_cpp/blob/main/CMakeLists.txt) and change line 10 to your chosen OpenCV directory. This is so that the the program knows where the relevant header files/ libraries are at compile time.
4) Run [sh App_builder.sh](https://github.com/OliverHeilmann/BuildOpenCV_cpp/blob/main/OpenCV_builder.sh) in terminal (of the git repository directory) to compile, build and run the script. If no errors are thrown, _"Great! The program works..."_ will be printed in the consol

In summary:
```text
# Build OpenCV
sh OpenCV_builder.sh

# Edit OpenCV path in CMakeLists.txt

# Compile and Run
sh App_builder.sh
```