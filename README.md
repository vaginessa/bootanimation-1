# Samaritan boot animation

Based on Person of Interest's Samaritan interface, this is a boot animation for Android devices.

It was made on Linux using:

* CSS
* JavaScript
* Kazam for Linux
* ffmpeg

## Setup

* Download the bootanimation.zip folder that you want.
* Root your phone.
* Download Root Explorer from the Google Play store.
* Move the zipped folder into /system/media folder and replace the existing folder named bootanimation.zip.
  * This may vary from phone to phone. If you don't know where to find the existing bootanimation.zip for your phone, search Google for your model.
* Reboot your phone.

## How it was made.

To make this, I used Linux Mint.

Here were my steps:

* Record Rodrigo Graca's original JavaScript Samaritan animations (found [here](https://github.com/rodrigograca31/Samaritan)) using Kazam on Linux to produce a 60 FPS mp4 video. 
* In the Linux terminal, use the command `ffmpeg -i <video path> image-%05d.png` to create a series of images from the mp4 video.
* Split the images into two groups: the infinite loop, and the ending sequence, and put them into the folders part0 and part1.
* Use the script `script.sh` as `./script.sh` in each folder `part0` and `part1` to make the images increment by 1. 
* In the `desc.txt` file, 
  * The first line indicates the resolution `<width> <height> <fps>` 
  * For the following lines,
    * `c` indicates "finish animation before moving on." To continue regardless of animation completion, use `p`.
    * `0` indicates infinite loop, any positive number indicates the number of times to run the animation.
    * The next `0` indicates no pause in seconds after the animation.
    * The `part` indicates which folder to run.
* Move the folders `part0`, `part1`, and `desc.txt` to the same directory level.
* Open the terminal in the directory containing all three items.
* Use the command `zip -r -0 bootanimation.zip part0 part1 desc.txt` to create a ZIP containing without compressing them.
* Follow the setup steps above to install the boot animation.

## Contribution

If you want to help contribute to this, send me a private message on Reddit (/u/HaroldSwift). 






