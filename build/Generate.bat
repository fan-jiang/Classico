Set DecorateName=DecorateName
Set CSSExt=.css
Set CSS_=--css=..\css\
Set NameStyle=%CSS_%%DecorateName%%CSSExt%
Set Style=%CSS_%Common%CSSExt%
Set Output=%Book%

If "%2" == "name" (
	:: Set Output=%Output%_%DecorateName%
	Set Style=%Style% %NameStyle%
)

If Not "%3" == "" (
	Set Output=%Output%_%3
	Set Style=%Style% %CSS_%%3%CSSExt%
)

If Not "%4" == "" (
	:: Set Output=%Output%_%4
	Set Style=%Style% %CSS_%%4%CSSExt%
)

Set HTMLExt=.html
Set HTMLOutput=%Output%%HTMLExt%

Call pandoc ..\source\%Book%%BookExt% -o %HTMLOutput% --standalone %Style% --verbose
Set PDF_Format=--margin-top 15 --header-spacing 5 --header-left [section] --header-right [subsection] --header-line --margin-bottom 15 --margin-left 25 --footer-spacing 5 --footer-left "Dujing Academy" --footer-right [page]/[topage] --footer-line --footer-font-size 5 toc
Call wkhtmltopdf.exe %PDF_Format% %HTMLOutput% %Output%.pdf