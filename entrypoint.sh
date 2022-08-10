#!/bin/sh -l
BRANCH=gh-pages
CWD=`pwd`
echo "Switching to target path: $2"
cd "$2"
if [ "$?" -ne 0 ]; then
	echo "Path not found can't continue"
	exit 1
fi

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
	echo "Switching to build path"
	cd $2/_site
	touch .nojekyll
	echo "Committing to branch: ${BRANCH}"
	REMOTE_REPO="https://${GITHUB_ACTOR}:${INPUT_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" && \
	  git init && \
	  git config user.name "${GITHUB_ACTOR}" && \
	  git config user.email "${GITHUB_ACTOR}@users.noreply.github.com" && \
	  git add . && \
	  git commit -m "Jekyll build from Action ${GITHUB_SHA}" && \
	  git push --force $REMOTE_REPO master:$BRANCH && \
	  fuser -k .git || rm -rf .git && \
	  cd ${CWD}
	;;
esac

time=$(date)
echo "::set-output name=time::$time"
