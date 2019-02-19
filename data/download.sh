#!/usr/bin/env bash

wget https://cs.stanford.edu/people/rak248/VG_100K_2/images.zip
mv images.zip images_1.zip
wget https://cs.stanford.edu/people/rak248/VG_100K_2/images2.zip
wget http://cvgl.stanford.edu/scene-graph/VG/image_data.json
mv images_1.zip images1.zip
wget http://cvgl.stanford.edu/scene-graph/dataset/VG-SGG-dicts.json
wget http://cvgl.stanford.edu/scene-graph/dataset/VG-SGG.h5
cd ..
mkdir visual_genome/VG_100K
mkdir -p visual_genome/VG_100K
unzip downloads/images1.zip -d visual_genome
unzip downloads/images2.zip -d visual_genome
mv visual_genome/VG_100K_2/* visual_genome/VG_100K/
rm -rf visual_genome/VG_100K_2
mv downloads/image_data.json stanford_filtered
mv downloads/VG-SGG-dicts.json stanford_filtered
mv downloads/VG-SGG.h5 stanford_filtered
