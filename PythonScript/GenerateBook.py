import subprocess
def GenerateCover():
	#Cover = "Cover"
	#BookName = "BookName"
	#BookCover = BookName + Cover
	#BookCoverHTML = BookCover + ".html"
	#CSS = "CSS_"
	#CSSExt = "CSSExt"

	#pandocCommand = "pandoc ..\\source\\" + BookCover + ".txt -o "
	#+ BookCoverHTML + " -standalone " + CSS_ + Cover + ".css --verbose"
	pandocCommand = ["pandoc", "..\\source\\test.txt", "-o", "test.html"]
	with open('dujing.log', 'w') as trace:
		subprocess.call(pandocCommand, stdin=None, stdout=trace, stderr=None, shell=True)

if __name__ == '__main__':
	GenerateCover()
