~~- Add page break for each chapter~~
~~- Convert the simplified version~~
~~- Generate simplified book from the command line~~
~~- Generate Zhongyong book~~
~~- Add buildlog file with timestamp~~
	~~@echo Build began at: %DATE% %TIME% > %BuildSummary%~~
	~~set BuildLog=Buildlog.txt~~
	~~set BuildSummary=BuildSummary.txt~~
~~- Convert Simplified version properly.~~
~~- Decorate name does not work.~~
~~- Disable name text effect on non-decorateName file.~~
~~- Show dynasty name with double underline~~
~~- Include LiTao's feedback on DaXue and Zhongyong.~~
~~- Use relative (percentage) for the underline border.~~
~~- Write text review document.~~
~~- Rename md file to txt file.~~
~~- Review Daxue~~
~~- Generate DaXue~~
~~- Set up Git hub repository~~
~~- Write copy right statement.~~
~~- Add Preface~~
~~- Add Cover Page~~
~~- Comma in simplified version~~
~~# - Implement RemoveRedundantSubscription~~
	~~# - Support unicode~~
	~~- call remove_redundant_subscript()~~
~~- `太山` should be `太~泰~山`; `大~太~王`=`太王`~~
- Replace OpenCC with the latest version 1.0.4 (how to build the source code under windows?)
- Move the python script to 3.4
- Line space should have definite value.
- 簡 浚 二女果
- Replace batch file with python script
	Replace generate.bat
		Generate Cover
- Use python script to iterate all the font size and font name.
- Add all word replacements in MengZi.
- Remove dependency on opencc
- ebook-convert could not load all css files.
- remove chapter number in the table of content
~~- Create HTML output with toc~~
- Create txt output
- Work on kindle generator
~~- Modify preface~~
- Support Chinese Characters
- Use python script to include non repeat character tools.
- Remove duplicated information related to the cover page.
- Move the conversion to a separate file.
- Create html output
- Create word output

## Not urgent:

- Use the vertical format.
- Add footnote on the text.
- If a generated PDF file is imported to Kindle device, Kindle device could only display first few pages. Starting from page 9-or page 10, the text is not displayed properly.
- Use different page number for Table Of Content.
- The Table of Content does not contain the chapter numbers in order to save the paper.
- Remove Traditional suffix from the source name
- Add pronunciation for each word.
- Command line accept better format of option, for example, --FontType Traditional


# Installer

- Create a dujing installer
- Markdown Edit includes Pandoc into packages.
- Include htmltopdf software
- Include ccconverter package
- Include fonts into installer.