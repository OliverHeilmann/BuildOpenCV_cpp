/*
Created on Wed Oct 28 2020

Author: OliverHeilmann
Contact Details:

Useful Links:
  1) Build OpenCV for C++: https://thecodinginterface.com/blog/opencv-cpp-vscode/
*/

#include "opencv2/opencv.hpp"

using namespace cv;

int main(int argc, char** argv){
    VideoCapture cap;
    // open the default camera, use something different from 0 otherwise;
    // Check VideoCapture documentation.
    if(!cap.open(0))
        return 0;
    
    for(;;){
          Mat frame;
          cap >> frame;
          if( frame.empty() ) break; // end of video stream
          imshow("Webcam Working!", frame);
          if( waitKey(10) == 27 ) break; // stop capturing by pressing ESC 
    }
    // the camera will be closed automatically upon exit
    return 0;
}