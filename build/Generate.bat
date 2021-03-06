Set DecorateName=DecorateName
Set CSSExt=.css
Set CSS_=--css=..\css\
Set Style=%CSS_%Common%CSSExt%
Set Output=%Book%

Set FontFamily=%2
If "%2" == "" (
	Set FontFamily=KaiTi
)
Set Style=%Style% %CSS_%%FontFamily%%CSSExt%
Set Output=%Output%_%FontFamily%

Set FontSize=%3
If "%FontSize%" == "" (
	Set FontSize=FontSize48
)
Set Style=%Style% %CSS_%%FontSize%%CSSExt%
Set Output=%Output%_%FontSize%

Set NameStyle=%CSS_%%DecorateName%%CSSExt%
If "%4" == "Name" (
	Set Output=%Output%_%DecorateName%
	Set Style=%Style% %NameStyle%
)

Set HTMLExt=.html
Set HTMLOutput=%Output%%HTMLExt%

:: Generate cover.html
Set Cover=Cover
Set BookCover=%BookName%%Cover%
Set BookCoverHTML=%BookCover%%HTMLExt%
Call pandoc ..\source\%BookCover%%BookExt% -o %BookCoverHTML% --standalone %CSS_%%Cover%%CSSExt% --verbose --metadata lang="CH"

:: Generate a book with the html format
Call pandoc ..\source\%Book%%BookExt% --toc -o %HTMLOutput% --standalone %Style% --verbose --metadata lang="CH"

:: Generate a book with the pdf format
Set PDF_Format=--margin-top 15 --header-spacing 5 --header-left [section] --header-right [subsection] --header-line --margin-bottom 15 --margin-left 20 --margin-right 20 --footer-spacing 5 --footer-left "Dujing Academy" --footer-right [page]/[topage] --footer-line --footer-font-size 5
Set accessCSS_In_HTML=--enable-local-file-access
Call wkhtmltopdf.exe %accessCSS_In_HTML% %PDF_Format% cover %BookCoverHTML% cover Preface%HTMLExt% %HTMLOutput% %Output%.pdf

:: Generate a book with the mobi format (for the Kindle device)
If "%4" == "Name" (
	Call ebook-convert.exe %HTMLOutput% %Book%.mobi
)