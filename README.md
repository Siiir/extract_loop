# extract\_loop

**extract\_loop** is a streamlined tool for processing looped audio files to extract their looped sections and reduce unnecessary repetition. Built with Docker for ease of use and portability, it processes audio files in formats like MP3 and outputs the processed results efficiently.

## Features

- Automatically detects and extracts loops from audio files.
- Designed for simplicity and ease of use with Docker.
- Handles large audio files with minimal manual intervention.
- Configurable paths for input and output.

## Prerequisites

- [Docker](https://www.docker.com/) installed on your system.
- Bash-compatible shell (e.g., `bash`, `zsh`).
- Basic familiarity with the command line.

## Installation

Clone the repository to your local machine:

```bash
git clone https://github.com/Siiir/extract_loop.git
cd extract_loop
```

**Optional:** Build the Docker image manually:

```bash
./build_img
```

This step is optional. The `extract_loop` script will automatically handle building the Docker image if it is not already available.

This script builds the `extract_loop` Docker image and ensures all dependencies are installed.

## Usage

The `extract_loop` tool is designed to be run via the provided `extract_loop` script. This script handles Docker image {validation, building}, input/output path setup, and execution.

### Command

```bash
./extract_loop [input_file] [output_directory]
```

### Parameters

- `input_file` (optional): The path to the input MP3 file. Defaults to `input.mp3` in the script's directory.
- `output_directory` (optional): The path to the directory where processed files will be stored. Defaults to `output` in the script's directory.

### Examples

#### 1. Using Default Paths

If your input file is `input.mp3` in the same directory as the script, and you want the output in the `output` folder:

```bash
./extract_loop
```

#### 2. Specifying Input and Output Paths

Specify an input file and an output directory:

```bash
./extract_loop /path/to/input.mp3 /path/to/output
```

#### 3. Help Message

To see usage information:

```bash
./extract_loop --help
```

## Development

This repository includes the following key scripts:

- `build_img`: Builds the Docker image required to run the tool.
- `extract_loop`: Runs the tool inside a Docker container.

### Testing

To test the tool, provide sample MP3 files and verify that the output matches the expected extracted loop.

### Cleaning Up

To remove the `extract_loop` Docker image:

```bash
docker rmi extract_loop
```

## Contributing

We welcome contributions to improve this project! If you encounter any issues or have suggestions, feel free to open an issue or submit a pull request.

### Steps to Contribute

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes and push them to your fork.
4. Open a pull request against the main repository.

## License

This project is licensed under the [MIT License](LICENSE).

However, this project integrates with [loopextractor](https://github.com/jblsmith/loopextractor), which is licensed under the [LGPLv3 License](https://www.gnu.org/licenses/lgpl-3.0.html). The loopextractor component remains under LGPLv3, and we respect its license terms.

By using this project, you agree to adhere to the LGPLv3 requirements when interacting with the `loopextractor` component.

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

Special thanks to everyone who contributed to the development of **extract\_loop**.

This project leverages and integrates with [loopextractor](https://github.com/jblsmith/loopextractor). We acknowledge and thank the creators and maintainers of loopextractor for their contributions, and we align with their license terms.

This project is licensed under the [MIT License](LICENSE).

