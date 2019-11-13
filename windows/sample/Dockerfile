# Use the latest Windows Server Core image with .NET Framework 4.8.
FROM jashook/vs2017-build-tools-enterprise:latest

RUN choco install cmake -y
#RUN setx -m PATH "%PATH%;C:\Program Files\CMake\bin"
RUN choco install yasm -y
#RUN setx -m PATH "%PATH%;C:\ProgramData\chocolatey\lib\yasm\tools"
RUN choco install git -y
ENV PATH "%PATH%;C:\Program Files\CMake\bin;C:\ProgramData\chocolatey\lib\yasm\tools"

# download YASM
#RUN MD C:\yasm
#ADD http://www.tortall.net/projects/yasm/releases/yasm-1.3.0-win64.exe C:/yasm/yasm.exe
#RUN setx -m PATH "%PATH%;C:\yasm"

ENTRYPOINT C:\BuildTools\Common7\Tools\VsDevCmd.bat && cmd.exe
