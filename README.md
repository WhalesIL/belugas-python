<p align="center">
  <img src="belugas-python.png" height="300px" alt="Belugas Python" />
</p>
## Overview

`belugas-python` is a command line interface for the Belugas feature detection analysis
platform. It allows you to run the python feature detector engine on your local machine inside of Docker containers.

## Table of contents

- [Prerquisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Supported Libraries](#supported-libraries)
- [Contributing](#contributing)
- [License](#license)


## Prerequisites

The Belugas Python CLI is distributed and run as a [Docker](https://www.docker.com) image. The engines that perform the actual analyses are also Docker images. To support this, you must have Docker [installed](https://docs.docker.com/engine/installation/) and running locally. We also require that the Docker daemon supports connections on the default Unix socket `/var/run/docker.sock`.

## Installation

```console
docker pull icalialabs/belugas-python:latest
```

## Usage

**Before using belugas-python make sure you are on the project directory you want to analyze**

### 1: Standard (Non-development)
```console
docker run \
  --interactive --tty --rm \
  --volume "$PWD":/code \
  icalialabs/belugas-python
```

The terminal will stream a json output for each of the features detected in the following format as specified at [belugas](https://github.com/IcaliaLabs/belugas/blob/master/documented-spec/spec/SPEC.md#features)

## Supported Libraries

We currently only have support for a small set of libraries, you can easily find them at [https://github.com/IcaliaLabs/belugas-python/blob/master/lib/belugas/python/standard_names/base.rb](https://github.com/IcaliaLabs/belugas-python/blob/master/lib/belugas/python/standard_names/base.rb) and you can easily add them by placing a pull request.

## Contributing

Please submit all pull requests against a separate branch.

Thanks!

## Copyright

See [LICENSE](LICENSE.txt)
