version=1.0

FinalVersion.pdf: FinalVersion.tex 
FinalVersion_files/FinalVersion_10_0.png FinalVersion_files/FinalVersion_11_0.png FinalVersion_files/FinalVersion_5_0.png FinalVersion_files/FinalVersion_6_0.png
FinalVersion_files/FinalVersion_7_0.png
FinalVersion_files/FinalVersion_9_0.png
  pdflatex FinalVersion


FinalVersion.tex: FinalVersion.ipynb
	@ipython nbconvert --to latex FinalVersion.ipynb
	@touch FinalVersion.tex

FinalVersion_files/FinalVersion_11_0.png: 
FinalVersion.ipynb
	@ipython nbconvert --to latex FinalVersion.ipynb
	@touch FinalVersion_files/FinalVersion_11_0.png

FinalVersion_files/FinalVersion_5_0.png: 
FinalVersion.ipynb
	@ipython nbconvert --to latex FinalVersion.ipynb
	@touch FinalVersion_files/FinalVersion_5_0.png

FinalVersion_files/FinalVersion_6_0.png: 
FinalVersion.ipynb
	@ipython nbconvert --to latex FinalVersion.ipynb
	@touch FinalVersion_files/FinalVersion_6_0.png

FinalVersion_files/FinalVersion_7_0.png: 
FinalVersion.ipynb
	@ipython nbconvert --to latex FinalVersion.ipynb
	@touch FinalVersion_files/FinalVersion_7_0.png

FinalVersion_files/FinalVersion_9_0.png: 
FinalVersion.ipynb
	@ipython nbconvert --to latex FinalVersion.ipynb
	@touch FinalVersion_files/FinalVersion_9_0.png

.PHONY: all clean

all: FinalVersion.pdf

clean:
	@rm -rf FinalVersion_files/
	@rm -f *png *aux *log *out
	@echo "cleaned up"