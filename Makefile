#
#  Examples to install HELIOS
#

help:
	@echo "HELIOS: No help here yet"

# 1711 files, 3.3G in 5m 26s (10.4 MB/s)
input:
	wget -r -np -nH -R "index.html*" --cut-dirs=3 -P input https://chaldene.unibe.ch/data/helios/input_files/	

#  2.04G  25.2MB/s    in 69s  
input2:
	wget -O - https://www.astro.umd.edu/~teuben/HELIOS/input.tar.gz | tar -zxf -
