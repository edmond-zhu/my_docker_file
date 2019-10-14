# Use the latest Windows Server Core image with .NET Framework 4.8.
FROM jashook/vs2017-build-tools-enterprise:latest

# download 7z for unzip
ADD https://www.7-zip.org/a/7z1900-x64.exe C:/BuildTools/7z1900-x64.exe
RUN C:\BuildTools\7z1900-x64.exe /S /D="C:\7z"
#RUN DEL C:\BuildTools\7z1900-x64.exe

# download CMake and unzip package
ADD https://github.com/Kitware/CMake/releases/download/v3.15.4/cmake-3.15.4-win64-x64.zip C:/BuildTools/cmake-win64-x64.zip
RUN MD C:\cmake
RUN C:\7z\7z.exe x -oC:\cmake C:/BuildTools/cmake-win64-x64.zip
RUN setx -m PATH "%PATH%;C:\cmake\cmake-3.15.4-win64-x64\bin"
#RUN DEL C:\BuildTools\cmake-win64-x64.zip

# download YASM
RUN MD C:\yasm
ADD http://www.tortall.net/projects/yasm/releases/yasm-1.3.0-win64.exe C:/yasm/yasm.exe
RUN setx -m PATH "%PATH%;C:\yasm"

ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat && cmd.exe
