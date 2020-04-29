. ./branch.sh

sh -x prepare.sh $BRANCH

buildCmd="cd protobuf && bash -x ../build.sh"

docker build . -t builder-image

#docker rmi trzeci/emscripten
docker run --rm -v `pwd`:/src builder-image \
  bash -c "$buildCmd"
