#!/bin/sh -l

CWD=`pwd`
cd "$2"

bundle config set --local path ./_gems
bundle install

case "$1" in
	serve)
	bundle exec jekyll serve
	;;
	build)
	JEKYLL_ENV=production bundle exec jekyll build
	if [ "$?" -ne 0 ]; then
		echo "Error, encountered"
		exit 1
	fi
	;;
esac
cd ${CWD}

time=$(date)
echo "::set-output name=time::$time"
