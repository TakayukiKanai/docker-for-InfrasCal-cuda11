#!/bin/bash
# Equal to the Example shown in https://github.com/youkely/InfrasCal/blob/master/README.md

./build/bin/infrastr_calib --camera-count 5 \
    --output ./data/demo/results \
    --map ./data/demo/map \
    --database ./data/demo/map/database.db \
    --input ./data/demo/ \
    --vocab ./data/vocabulary/sift128.bin \
    -v --camera-model pinhole-radtan --save
