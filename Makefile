#
#  Examples to install HELIOS
#
URL1 = https://chaldene.unibe.ch/data/helios/input_files/	
URL2 = https://www.astro.umd.edu/~teuben/HELIOS/input.tar.gz 
URL3 = https://github.com/exoclime/FastChem
URL4 = https://github.com/exoclime/LX-MIE

help:
	@echo "HELIOS: No help here yet"

# 1711 files, 3.3G in 5m 26s (10.4 MB/s)
input:
	wget -r -np -nH -R "index.html*" --cut-dirs=3 -P input $(URL1)

#  2.04G  25.2MB/s    in 69s  
input2:
	wget -O - $(URL2) | tar -zxf -

FastChem:
	git clone $(URL3)
	pip install -e FastChem

LX-MIE:
	git clone $(URL4)
	(cd LX-MIE; make all)

