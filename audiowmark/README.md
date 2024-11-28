# Audiowmark

- https://uplex.de/audiowmark

- [https://uplex.de/audiowmark/README](https://uplex.de/audiowmark/README.html)

<br>
<br>

# Build from Source

- todo

<br>
<br>

# Docker

```shell
pacman -S zstd

wget https://github.com/swesterfeld/audiowmark/releases/download/0.6.2/audiowmark-0.6.2.tar.zst

tar --zstd -xvf audiowmark-0.6.2.tar.zst
```

<br>

NOTE: If downloading from stable release repos (opposed to `git pull`), you may need to revert autogen script back to configure.

```dockerfile
# RUN ./autogen.sh
RUN ./configure
```

```shell
docker build -t audiowmark .
```
<br>

## Interative shell

Entrypoint can be removed if desiring a fully interactive shell on the container (i.e. real-time scripting etc inside the box)


```dockerfile
# ENTRYPOINT ["/usr/local/bin/audiowmark"]
```

```shell
docker build -t audiowmark-i .
docker run -v <local-data-directory>:/data --rm -it
```

<br>
<br>

# note re: supported codecs

Appears only wav is supported. Attempting with .mp3 resulted in a unexpected EOF error:

`audiowmark: warning: unexpected EOF; input frames != output frames`

ffmpeg conversion can resolve quickly for testing purposes, at least with a lossless source audio.

```
ffmpeg -i inputfile.flac output.wav
```

<br>
<br>

# Adding Watermark

## Generating Key

- see `awm_genkey.sh`
- as documented [here](https://uplex.de/audiowmark/README.html#key)
- ultimately integrated [into the sampling algorithm](https://code.uplex.de/stefan/audiowmark/blob/master/src/wmadd.cc#L692) to randomize the resulting mark 

## strength parameter

- as documented [here](https://uplex.de/audiowmark/README.html#strength)
- [influences magnification / frame size for FFT](https://code.uplex.de/stefan/audiowmark/blob/master/src/wmadd.cc#L78)
    - todo...

<br>

```shell
docker run \
-v $DockerHostShareDir:/data \
--rm \
-i audiowmark \
add \
--strength 11 \
--key keyfile.key \
song.wav \
song_wm.wav \
<WatermarkHash>
```
<br>
TODO: reasonable expectation to be visibly evident in spectrogram?
<img src="img/20241119173055_spectrogram1.png" alt="drawing" width="900"/>