#!/bin/bash

TAG="1.0.0"

for name in ngless ng-meta-dog-gut ng-meta-pig-gut ng-meta-mouse-gut ng-meta-human-gut ng-meta-marine ; do
       docker-compose build $name
       docker push nglesstoolkit/$name:$TAG &
done

for recipe in Singularity-ng* ; do
    TARGET="$(echo "$recipe" | cut -d- -f2 -)"
    singularity build "${TARGET}.simg" "$recipe"
done

wait
# for any docker push background job still active
