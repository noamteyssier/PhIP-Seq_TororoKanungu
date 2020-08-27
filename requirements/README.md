# Requirements

# Python Requirements
```{bash}
# install all required modules
pip3 install -r requirements.python.txt
```

# C++ Requirements
## Boost

https://www.boost.org/

```{bash}

# MacOS
sudo port install boost

# Ubuntu
sudo apt-get install libboost-all-dev

# Archlinux w/ yay
yay -S boost
```

## Armadillo

http://arma.sourceforge.net/

```{bash}

# MacOS
sudo port install armadillo

# Ubuntu
sudo apt-get install libarmadillo-dev

# Archlinux w/ yay
yay -S armadillo
```



# Path Requirements
* MCD-MotifSearch requires some programs in PATH to run correctly.

* Installation instructions will differ depending on what operating system you are using. But all should have an easy installation

## MEME
- requires `meme-meme` and related `meme-*` to be in PATH

http://meme-suite.org/

## Cliquer
- requires binary to be in PATH as `cl`

https://users.aalto.fi/~pat/cliquer.html

## BlastP
- requires `blastp` to be in PATH

https://blast.ncbi.nlm.nih.gov/Blast.cgi

https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=Download
