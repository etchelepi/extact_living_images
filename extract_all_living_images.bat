@echo off
setlocal ENABLEDELAYEDEXPANSION

set total_cnt=0
set cur_cnt=0
set percentage=0

for %%f in (*.jpg) do (
	set /a total_cnt+=1
)

for %%f in (*.jpg) do (
	set /a cur_cnt+=1
	set /a percentage=!cur_cnt!*100

	call extract_vid_gif.bat %%f > nul 2>&1
	
	set /a percentage=!percentage!/%total_cnt%
	echo !cur_cnt!/%total_cnt% = !percentage!pct
)

echo Finished