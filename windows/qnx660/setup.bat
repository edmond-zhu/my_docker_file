echo off
echo "extract qnx with password"
echo %PSW%
C:\7z\7z.exe x -p%PSW% -oC:\ C:/qnx660.zip
cmd