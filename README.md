# Audio Provenance: Research Lab

- Monorepo documenting rabbithole on digital audio watermarking and fingerprinting.


# Audio Fingerprinting

https://en.wikipedia.org/wiki/Acoustic_fingerprint

## Reading, Reference

- https://oxygene.sk/2011/01/how-does-chromaprint-work
    - [Computer Vision for Music Identification, 2005](https://dhoiem.cs.illinois.edu/publications/cvpr2005-mr.pdf)

- Foundational to the [Automatic Content Recognition (ACR) space/industry](https://en.wikipedia.org/wiki/Automatic_content_recognition)
- https://wiki.musicbrainz.org/Fingerprinting

## Libraries / Utilities

- [Acoustid](https://acoustid.org/) / Chromaprint
    - utilized by, among others:
        - [DistroKid](https://support.distrokid.com/hc/en-us/articles/360024829334-What-is-DistroLock)
        - [MusicBrainz](https://wiki.musicbrainz.org/AcoustID)
- https://github.com/AddictedCS/soundfingerprinting


### Applications / GUIs

- https://picard.musicbrainz.org
    - includes fingerprinting and DB submission within tagging application
- Utilizing for "automatic metadata"
    - Plex; Kodi; Jellyfin; VLC; MediaMonkey; Clementine
    - See: https://musicbrainz.org/doc/MusicBrainz_Enabled_Applications


## Proprietary & Other In-the-Wild

- [Audible Magic](https://www.audiblemagic.com/technology)
- [MatchTune](https://www.matchtune.com)
    - [https://www.covernet.ai/](https://www.covernet.ai/)
    - [Medium: Audio fingerprinting in music copyright detection](https://medium.com/@CoverNetAI/audio-fingerprinting-in-music-copyright-detection-advantages-limitations-e8879d715ff7)
- https://www.bmat.com/audio-fingerprinting-songs-identification
- https://www.acrcloud.com

<br>
<br>

# Audio Watermarking

https://en.wikipedia.org/wiki/Audio_watermark

## Reading, Reference

- https://www.amazon.science/blog/audio-watermarking-algorithm-is-first-to-solve-second-screen-problem-in-real-time
- [2024, AudioSeal paper](https://arxiv.org/pdf/2401.17264)
    - https://www.technologyreview.com/2024/06/18/1094009/meta-has-created-a-way-to-watermark-ai-generated-speech
- [2024, WavMark paper](https://arxiv.org/html/2308.12770v3)
- [Audio Watermarking Algorithm Based on WSOLA Resisting Speed Change](https://www.researchgate.net/publication/363937087_Audio_Watermarking_Algorithm_Based_on_WSOLA_Resisting_Speed_Change)


### Benchmarking, Challenging, Hacking

- [2003, Attacks on digital audio watermarks and countermeasures](https://ieeexplore.ieee.org/document/1233874)
- [2024, AudioMarkBench paper](https://arxiv.org/pdf/2406.06979)


## Libraries / Utilities

- [Audiowmark](https://github.com/swesterfeld/audiowmark) 
- [Wavmark](https://github.com/wavmark/wavmark)
- [Facebook - Audioseal](https://github.com/facebookresearch/audioseal)
- Timbre
- [AudioMarkBench](https://github.com/moyangkuo/AudioMarkBench)

### Applications / GUIs

- todo

## Proprietary & Other In-the-Wild

- [Universal Media Group](https://www.mattmontag.com/music/universals-audible-watermark)
- [MarkAny](https://en.markany.com)
- [Digimarc](https://www.digimarc.com/resources/case-studies/source-audio)
- [VoiceSwap AI](https://creati.ai/ai-tools/voice-swap-ai/)
- [DISCO.ac](https://help.disco.ac/articles/71674-watermarking-faq)