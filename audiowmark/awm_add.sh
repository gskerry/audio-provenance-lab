#!/bin/bash

STRING='Artist:ArtistName|Title:SongTitle|file:artist_song.wav|For:Recipient'
# echo "$STRING"
MSG=`echo -n "$STRING" | sha256sum | head -c 32`
# echo $MSG
