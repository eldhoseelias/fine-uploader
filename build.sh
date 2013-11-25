#!/bin/sh

tag="${1}"

git clone https://github.com/Widen/fine-uploader.git tmp
cd tmp
if [ ! -z ${tag} ]; then
	git checkout "${tag}"
fi

npm install
grunt

