#!/usr/bin/env bash

usage() {
    echo >&2 ""
    echo >&2 "Usage:"
    echo >&2 "    $0 <profiler> /full/path/to/sample /full/path/to/output_dir"
    echo >&2 ""
    echo >&2 "Where <profiler> should be one of: [dog-gut, human-gut, pig-gut, mouse-gut, marine]"
    echo >&2 "                                   followed by : and the version identification"
    echo >&2 ""
    echo >&2 "e.g."
    echo >&2 "    $0 dog-gut:1.0.0 \$HOME/data/mysample \$HOME/results/mysample"
    echo >&2 ""
}

if [ $# -ne 3 ]; then
    usage
    exit 1
fi

PROFILER="$1"
SAMPLE="$2"
OUTPUT="$3"

[ ! -d "$SAMPLE" ] && \
    echo >&2 "$SAMPLE should be a directory following the MOCAT format" && \
    echo >&2 "See http://ngless.embl.de/stdlib.html#mocat-module" && \
    exit 1

[ ! -d "$OUTPUT" ] && \
    echo >&2 "$OUTPUT should be an existing directory" && \
    exit 1

# Create a temporary directory inside the output directory
mkdir -p "$OUTPUT/tmp"

IMAGE="nglesstoolkit/ng-meta-$PROFILER"

SAMPLE_MOUNT="$(dirname "$SAMPLE"):/data/input:ro"
OUTPUT_MOUNT="$OUTPUT:/data/output:rw"

SAMPLENAME="$(basename "$SAMPLE")"

docker run --rm -v "$SAMPLE_MOUNT" -v "$OUTPUT_MOUNT" "$IMAGE" "/data/input/$SAMPLENAME" "/data/output"
