@echo off

set app="C:\Users\HLewis\AppData\Local\Programs\Git\mingw64\libexec\git-core\git.exe"
set folder="c:\users\hlewis\downloads\ww_modelling_spec"

%app% add .
%app% commit -m "batch update"
%app% push -u origin master

#PAUSE