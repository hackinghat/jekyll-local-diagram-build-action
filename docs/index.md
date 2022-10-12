---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

# What Is This?

This is a demo site for the [Jekyll Local Diagram](https://github.com/hackinghat/jekyll-local-diagram) plugin for the popular documentation tool [Jekyll](https://jekyllrb.com).


The primary purpose of this repo is as a GitHub build action that allows you to put a CI/CD workflow in something like this:


	site_build_docs_job:
		runs-on: ubuntu-latest
		name: Build the docs
		steps:
		# To use this repository's private action,
		# you must check out the repository
		- name: Checkout
			uses: actions/checkout@v3
		- name: Build
			uses: hackinghat/jekyll-local-diagram-build-action@v2
			with:
			path: /github/workspace/docs
			token: ${{ github.token }}
		# Use the output from the `hello` step
		- name: Get the output time
			run: echo "The time was ${{ steps.hello.outputs.time }}"

If you do it will create a new branch in your repo called 'gh-pages', you can then change your repo 'Pages' setup to use this instead of the normal generated GitHub pages content.

