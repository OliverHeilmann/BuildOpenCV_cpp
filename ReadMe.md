# Repository Summary
This repo aims to simplify the OpenCV 4.2.0 installation process for Intel based Mac OS users (for Python and C++). NOTE: This has now been tested on a m1 max Macbook Pro and it also works. For M1 architectures, installing OpenCV via Homebrew is likely the best bet, the path should look something like this:

```/opt/homebrew/Cellar/opencv/4.5.5_2/lib/cmake/opencv4```

# Instructions: (MacOS Intel or Apple Silicon)
1) Navigate to your chosen directory which you would like this folder to be saved locally using: 
```text
git clone https://github.com/OliverHeilmann/BuildOpenCV_cpp.git
```
2) Install XCode from Apple App Store
3) Run [sh OpenCV_builder.sh](https://github.com/OliverHeilmann/BuildOpenCV_cpp/blob/main/App_builder.sh) in terminal (in a directory which you wish to install OpenCV in). Note that this script will install Homebrew for you if you do not already have it installed.
4) Go into [CMakeLists.txt](https://github.com/OliverHeilmann/BuildOpenCV_cpp/blob/main/CMakeLists.txt) and change line 10 to your chosen OpenCV directory. This is so that the the program knows where the relevant header files/ libraries are at compile time.
5) Run [sh App_builder.sh](https://github.com/OliverHeilmann/BuildOpenCV_cpp/blob/main/OpenCV_builder.sh) in terminal (of the git repository directory) to compile, build and run the script. If no errors are thrown, your integrated laptop webcam (or USB detectable webcam) will be displayed in a window. Press _'esc'_ to close the window.
6) Use CMake Tools for debugging.

In summary:
```sh
# Build OpenCV
sh OpenCV_builder.sh

# Edit OpenCV path in CMakeLists.txt

# Compile and then Run
sh App_builder.sh
```
