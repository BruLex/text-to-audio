#!/bin/bash

if [ "$1" != " " ] && [ "$2" != " " ] && [ "$3" != " " ]; then
mkdir -m 755 ./out 2>/dev/null

API_KEY=$1
FILE_NAME=$2
TEXT=${@:3}

curl \
-H "Content-Type: application/json; charset=utf-8" \
--data "{ 
  'audioConfig':
  {
    'audioEncoding': 'LINEAR16',
    'pitch': 0.0,
    'speakingRate': 1,
  },
  'input':
  {
    'text': '$TEXT'
  },
  'voice':
  {
    'languageCode': 'en-US',
    'name': 'en-US-Wavenet-F'
  }
}" "https://texttospeech.googleapis.com/v1beta1/text:synthesize?key=$API_KEY" \
| jq -r '.audioContent' | base64 -d > ./out/$FILE_NAME.wav
fi