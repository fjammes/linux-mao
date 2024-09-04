# Running Guitarix Inside Docker

## Prerequisites

- **Operating System**: Ubuntu 24.04
- **Docker**: Version 24.0.6-rd (or later)
- **PipeWire**: Version 1.0.5 (or later)

## Building the Docker Image

To build the Guitarix Docker image locally, simply run:

```bash
./build.sh
```

## Running the Docker Container

To run the Docker container with Guitarix:

1. Execute the following script:

    ```bash
    ./run.sh
    ```

2. Once inside the container, launch Guitarix using:

    ```bash
    pw-jack guitarix
    ```

## Additional Information

For more details or related discussions, refer to the following GitHub issue: [Guitarix Issue #171](https://github.com/brummer10/guitarix/issues/171).