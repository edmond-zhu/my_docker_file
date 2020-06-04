# escape=`

# Use the latest Windows Server Core image with .NET Framework 4.8.
FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019

# Restore the default Windows shell for correct batch processing.
SHELL ["cmd", "/S", "/C"]

RUN MD C:\BuildTools

# Download the Build Tools bootstrapper.
# ADD https://aka.ms/vs/16/release/vs_buildtools.exe C:\BuildTools\vs_buildtools.exe

# Install Build Tools excluding workloads and components with known issues.
#RUN MD C:\vs
# RUN C:\BuildTools\vs_buildtools.exe `
#     --layout c:/vs `
#     --quiet --wait `
#     --all `
#     --add Microsoft.VisualStudio.Workload.NativeDesktop --includeRecommended `
#     --remove Microsoft.VisualStudio.Component.Windows10SDK.10240 `
#     --remove Microsoft.VisualStudio.Component.Windows10SDK.10586 `
#     --remove Microsoft.VisualStudio.Component.Windows10SDK.14393 `
#     --remove Microsoft.VisualStudio.Component.Windows81SDK `
#  || IF "%ERRORLEVEL%"=="3010" EXIT 0
RUN setx -m PATH "%PATH%;C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\Tools"

ADD vs2019 c:/vs
RUN c:\vs\vs_setup.exe --quiet --wait --noWeb --layout C:\vs || IF "%ERRORLEVEL%"=="3010" EXIT 0

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

RUN setx -m EnterpriseWDK "True"
RUN setx -m DisableRegistryUse "True"

# Start developer command prompt with any other commands specified.
ENTRYPOINT VsDevCmd.bat && cmd.exe
