# RPI3
Shell Scripts to automate debloating and Installing OpenCV.

This was created to automate the time consuming process of installing OpenCV.
However, several other scripts have also been added to automate other tasks as well.

A common error of '\r' can be removed using the following command

    awk '{ sub("\r$", ""); print }' script.sh > script1.sh
    
