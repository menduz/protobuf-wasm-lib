. ./branch.sh

sh -x prepare.sh $BRANCH

buildCmd="cd protobuf && bash -x ../build.sh"

docker build . -t builder-image
mkdir -p .data
#docker rmi trzeci/emscripten
docker run --rm -v `pwd`:/src -v $(PWD)/.data:/emsdk_portable/.data builder-image \
  bash -c "$buildCmd"
