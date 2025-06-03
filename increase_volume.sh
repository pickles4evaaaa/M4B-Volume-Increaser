#!/bin/bash
# filepath: increase_volume.sh

# Usage: ./increase_volume.sh input.m4b output.m4b

INPUT="$1"
OUTPUT="$2"
VOLUME_DB=5

ffmpeg -i "$INPUT" -vn -map 0:a -af "volume=${VOLUME_DB}dB" -c:a aac -b:a 64k "$OUTPUT"
