Set BookName=%1_
Set BookPath=%SourceFolder%%BookName%
:: Generate the simplified source file
%OpenCCFolder%opencc -i %BookPath%%T%%BookExt% -o %BookPath%%S%%BookExt% -c %OpenCCFolde%zht2zhs.ini

Set OutputFolder=..\���Ľ���\%1
Call GenerateBookHelper %T%
Call GenerateBookHelper %S%


