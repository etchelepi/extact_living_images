@echo off
setlocal ENABLEDELAYEDEXPANSION

REM attempt to unzip the jpeg and get out any video files

"C:\Program Files\7-Zip\7z.exe" e %1 -o./ *.mp4 -r -y

if exist living.mp4 (
	REM rename it to the original file name
    rename living.mp4 %~n1.mp4
	REM make a gif of it
	REM magick %~n1.mp4 -filter box -resize 720x720 -despeckle -layers OptimizeTransparency -set delay 1x18 -loop 0 %~n1.gif
	
) else (
    echo There is no living image in %~n1
)
