# Repository Summary
This repo aims to simplify the OpenCV 4.2.0 installation process for Intel based Mac OS users (for Python and C++).

# Instructions (For MacOS-Intel)
1) Install XCode from App Store
2) Run [__sh OpenCV_builder.sh__](https://github.com/OliverHeilmann/BuildOpenCV_cpp/blob/main/App_builder.sh) in terminal (in a directory which you wish to install OpenCV in). Note that this script will install Homebrew for you if you do not already have it installed.
3) Run [__sh App_builder.sh__](https://github.com/OliverHeilmann/BuildOpenCV_cpp/blob/main/OpenCV_builder.sh) in terminal (of the git repository directory) to compile, build and run the script. If no errors are thrown, _"Great! The program works..."_ will be printed in the consol

In summary:
```text
sh OpenCV_builder.sh
sh App_builder.sh
```