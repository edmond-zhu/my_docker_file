FROM mcr.microsoft.com/windows/servercore:ltsc2019

# add vc_redist.x64.exe for VS2015 and install it quietly
ADD https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe /vc_redist.x64.exe
RUN C:\vc_redist.x64.exe /quiet /install

# download 7z for unzip
ADD https://www.7-zip.org/a/7z1900-x64.exe C:/BuildTools/7z1900-x64.exe
RUN C:\BuildTools\7z1900-x64.exe /S /D="C:\7z"
RUN DEL C:\BuildTools\7z1900-x64.exe

# add qnx660 SDK
ADD qnx660.zip /

ADD setup.bat /

# entry point
CMD ["setup.bat"]