# Material Mkdocs Details
[getting started](https://squidfunk.github.io/mkdocs-material/getting-started/)

# Extension Details
[nav weight](https://github.com/shu307/mkdocs-nav-weight)
[title casing](https://github.com/mattchristopher314/mkdocs-title-casing-plugin)
[awesome nav](https://lukasgeiter.github.io/mkdocs-awesome-nav/features/sorting/)

## How To Run
build the docker container
```bash
docker build -t my-mkdocs .
```

run the docker container on [localhost:9090](http://localhost:9090)
```bash
docker run --rm -it -p 9090:8000 -v ${PWD}:/docs my-mkdocs serve -a 0.0.0.0:8000
```

# How To Write
The section names are in the .nav.yml file in its directory. The section is sorted by its directory name but the title in the .nav.yml file is what is displayed.

The Document names are derived from the file names and put into title case, they can be over ridden with a `title: etc` in the frontmater. The documents are sorted from lowest `weight:` to highest.
