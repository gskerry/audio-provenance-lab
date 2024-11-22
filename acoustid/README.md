AcoustID
=======

One of the more actively-used open source libraries for audio fingerprinting in the music space.

# Reading, background

**In the Wild**
- Of note, DistroKid's distrolock product [appears to use AcoustID fingerprints](https://support.distrokid.com/hc/en-us/articles/360024829334-What-is-DistroLock), in combination with Audible Magic monitoring service. 
    - Not fully clear whether implication is that Audible Magic uses same fingerprinting protocol

- It is also the primary fingerprinting utility for the MusicBrainz project:
    - https://wiki.musicbrainz.org/Fingerprinting

<br>

**AcoustID project**
- https://acoustid.org
    - https://acoustid.org/chromaprint
        - https://github.com/acoustid/chromaprint
    - https://acoustid.org/webservice

- There is additionally a python utility pyacoustid (which is used here)
    - https://github.com/beetbox/pyacoustid
    - https://pypi.org/project/pyacoustid

**Additional Reading**
- https://oxygene.sk/2011/01/how-does-chromaprint-work
- [Computer Vision for Music Identification, 2005](https://dhoiem.cs.illinois.edu/publications/cvpr2005-mr.pdf)
    - as cited in chromaprint repo, among other projects in the space

**Other Other Reading**
- [Pairwise Boosted Audio Fingerprint (2018)](https://ieeexplore.ieee.org/document/5312768)
- [Efficient Index-Based Audio Matching (2008)](https://ieeexplore.ieee.org/document/4432645)

<br>
<br>

# Environment Setup

**dependencies**
- `python`
- `pip`
- (python venv)
    - e.g. in Arch environments pip installs will result in `externally-managed-environment` errors, unless utilizing a python environment manager
- `chromaprint`
    - Note below re: considerations installing from source vs 


## VM approach (optional)

As I have come to conclude that the [headaches around python package and environment management](https://hackernoon.com/setting-up-a-python-dev-environment-in-2024) are not my imagination, I gravitate towards using a sandbox VM.

- https://developer.hashicorp.com/vagrant/tutorials/getting-started
- https://wiki.manjaro.org/index.php/VirtualBox

(This admitedly comes at the cost of DevOps overhead. One could argue this is more a one-time, up front cost. Feel free to choose your own adventure.)

- Little modification to Vagrantfile required.
    - select base VM OS
    - enable shared/sync folder to the Host.

- Spin up machine
```shell
vagrant init
# edit Vagrantfile
vagrant reload
cp vm-provision.sh /path/to/sync/folder
vagrant up
# if encountering issues
# vagrant up --debug
vagrant ssh
```
- Inside VM, run provisioning step (or script)
```
cd path/to/sync/folder
./vm-provision.sh
```

<br>

## re: Chromaprint

- Documentation around library a bit hard to decipher. 
- Release builds are [maintained on github](https://github.com/acoustid/chromaprint/releases)
- the payload is a compiled `fpcalc`
- Scant install instructions... added to `$PATH`
- However, use with `fpcalc.py` resulted in a dependency error, tracing back to `libchromaprint`
```shell
raise ImportError("couldn't find libchromaprint")
```
- resolved by installing Arch distribution's chromaprint package 

<br>
<br>

# Basic Fingerprinting

- With install and config successfully completed, fingerprint generation is straightforward

```shell
cd pyacoustid-1.3.0
python fpcalc.py audio.mp3
```
