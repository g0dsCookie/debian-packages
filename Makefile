TAG = ghcr.io/g0dscookie/debian-packages

mkfile_path := $(abspath $(lastword ${MAKEFILE_LIST}))
current_dir := $(dir ${mkfile_path})

run: build
	echo ${current_dir}
	docker run -it --rm -v ${current_dir}:/packages ${TAG}

build:
	docker build -t ${TAG} .