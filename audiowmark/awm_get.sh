#!/bin/bash

STRING='Artist:ArtistName|Title:SongTitle|file:artist_song.wav|For:Recipient'
# echo "$STRING"
MSG=`echo -n "$STRING" | sha256sum | head -c 32`
# echo $MSG

docker run \
-v $DockerHostShareDir:/data \
--rm \
-i audiowmark \
get \
--strength 11 \
--key 2024-ILI.key \
song_wm.wav