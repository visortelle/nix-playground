# nix-test

Possibly the best tutorial on Nix: <https://nixos.org/guides/nix-pills>.

ZSH completion: <https://github.com/spwhitt/nix-zsh-completions>.

## Cheat sheet

## REPL

Enter REPL

`nix repl`

Load nixpkgs

`:l <nixpkgs>`

Build

`:b `


## CLI

Build

`nix build`

Search package

`nix-env -qP --available nodejs`

`nix search nodejs`

Pretty-print deriviation

`nix show-derivation /nix/store/9y4viy19cvi34dy43c9hmi2rrrnm5dgb-test.drv`

Analyze build dependencies

```sh
$ nix-instantiate default.nix
/nix/store/21kj5jdnd04cz3labrf9p2q30vi70vhh-nodejs-project-a.drv
$ nix-store -q --references /nix/store/21kj5jdnd04cz3labrf9p2q30vi70vhh-nodejs-project-a.drv
/nix/store/67c32whv2pa8gfqxinjbzb3pshpfsgcl-bash-4.4-p23.drv
/nix/store/sjj7icjqi6mhkzismr68jqlrq6hg500r-coreutils-8.32.drv
/nix/store/076lzbdih4cdg6ri8w3kmpa191zvkrsl-nodejs-14.17.5.drv
/nix/store/fyd9bif9sv5g6rfl3zh8k2s6nq1szpv7-nodejs-project-a
/nix/store/lmh0zrm1pw5046hpi9cr95gz04c65ynd-nodejs-builder.sh
```

GC

`nix-collect-garbage` and `nix-collect-garbage -d`

## Omnomnoms

Improved nix-shell - <https://github.com/nix-community/lorri>

Easy dependency management for Nix projects - <https://github.com/nmattia/niv/>

Docker compose - <https://github.com/hercules-ci/arion>

Utils

<https://github.com/utdemir/nix-tree>

<https://github.com/symphorien/nix-du>

<https://github.com/craigmbooth/nix-visualize>

