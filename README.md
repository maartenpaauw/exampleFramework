# Example Framework

> This is an example framework

I created this example framework to test out Laravel's release and split scripts for a project I'm working on during my internship.

## Prerequisites

Executable `splitsh-lite` should me located / installed inside the `/usr/local/bin` directory.

Download **Splitsh-lite** from [https://github.com/splitsh/lite/releases/latest](https://github.com/splitsh/lite/releases/latest).

## Usage

```bash
split/split.sh
```

This will add all te remotes needed. After that it will push the latest code for earch module to it's own repository.

```bash
split/release.sh [VERSION]
```

This will tag all modules with the version provided (for example `0.0.1`).

## Acknowledgments
- Scripts are based on Laravel's [split and release](https://github.com/laravel/framework/tree/master/bin) scripts.
