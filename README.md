# extact_living_images
This is a windows batch script that gets the living images out of Windows Phone jpegs

The script is made up of two parts:

extract_all_living_images.bat
extract_vid_gif.bat

extract_all_living_images.bat calls extract_vid_gif.bat on every image, and prints out the progress report as a percentage. 
This way you know how far it is in the directory. It is not recursive.

extract_vid_gif.bat uses 7z (and if you uncomment the gif line, image magick) to produce the embedded .mp4 and optionally convert it to a 720p quality gif. Would recommend setting it to a 480x480p gif for size.

If there is no living image inside of the JPEG, it is skipped. It only operates on the first name provided by the command line, and saves the file locally to where it was called.

Combined it makes it convient to enjoy the embedded video files inside the Windows Phones Living images.
