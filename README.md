# Blueprint Template

This is a template repo for Lean4 projects which want to start with a blueprint. It contains automation scripts to extract code from an existing Lean project to a LaTex scheme.

## Start from template

This is a template repository. You can start by clicking the `Use this template` button on top right and create your own repo.

This project use [Nix](https://nixos.org/) to manage the dependencies, so you may need to install `nix` on your machine first. Then run `nix develop` in this repo's root directory where there is  a `flake.nix`.

> nix flakes is an experimental feature of Nix, so you may need extra configuration.


You may need to change the project's name in relevant files. You can use the search tool in VSCode to replace all the `FontaineWintenberger` into your project's name. Don't forget to change the `FontaineWintenberger` in `Makefile`.

Then you can start to develop your project by modifying files in the `FontaineWintenberger`(may be replaced with your own name) directory.

If you want to view the blueprint, you need to modify files in the `blueprint` directory, starting with `blueprint/src/content.tex`. You need to at least change the url in `\home` and `\dochome`. If you want to view it locally, change them into `localhost:8080` and `localhost:8080/doc`.

Then come to the automation part. If you run `make analyze`, the python script will generate a `demo.tex` in `blueprint/src`. It will contain all the `theorem`, `lemma`, `def`, `structure`, `inductive` and `class` statement in your project. The doc string will be filled in automatically, and `leanok` tag will be added for the ones without sorry. The dependencies will also be analyzed automatically. You can use this file to help fill the `content.tex`.

If you want to view the blueprint, you can run `make serve`. This won't build the documentation. If you want to build the documentation, run `make blueprint`, then run `make serve` to view. If you can not redirect to the doc page from the blueprint, you may need to check if you change the url in `content.tex`.

If you want to deploy it to Github Page, please see the `.github/workflows/build.yaml` file and modifies the relating url.

## Start from an existing project

The steps are essentially the same. I will recommend clone this repo and modify the files in it. You only need to copy your files and modify the relevant names in this project.

Of course you can also choose to stick to your own project without bothering some git configuration. You can copy the `blueprint` directory. Then don't forget to add `doc-gen4` dependency to your `lakefile.lean`. For more information please check the `Makefile` yourself.


## Tips

Using `nix` is highly recommended, but if you don't want to use `nix`, it's also ok. This repo contains `requirements.txt` for Python dependencies. Also, you need texlive environment and some other packages. You can check `shell.nix` for reference.

If you don't know how to use the lean blueprint, please check the [leanblueprint](https://github.com/PatrickMassot/leanblueprint) or [flt-regular](https://github.com/leanprover-community/flt-regular).

## Develop Notes

To be developed.
