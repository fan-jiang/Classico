:: Stop PDF reader
TaskKill /f /im AcroRd32.exe

Set OpenCCFolder=..\opencc-0.4.2\
Set SourceFolder=..\Source\
Set BookExt=.md
Set T=���w
Set S=���w

Call GenerateBook ����
Call GenerateBook ��ӹ

::Call build name SongTi FontSize48
::Call build name QuanZiKuFont FontSize48
::Call build name BeiShiDaFont FontSize48
::Call build name JinWen FontSize48
::Call build name LiShu FontSize48
::Call build name JiaGuWen FontSize48
::Call build name JinWen FontSize96

Del *.html
Del %SourceFolder%*%S%%BookExt%