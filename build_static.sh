#!/usr/bin/env bash
parent_folder="$(basename "$PWD")"
docker run --rm -v $PWD/source:/usr/src/app/source -w /usr/src/app/source -v $PWD/build:/usr/src/app/build "$parent_folder"_app bundle exec middleman build --clean

