#!/bin/bash

docker run --rm --volume="$PWD:/srv/jekyll" -p4000:4000 -ti jekyll/jekyll bash -c "
	mkdir -p .bundle-cache
	bundle install --path=.bundle-cache
	bundle exec jekyll serve --incremental --host=0.0.0.0
"