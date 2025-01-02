# XConfig (Prototype)

XConfig is a shell script designed to simplify GPU driver setup and configuration on FreeBSD and GhostBSD. It supports automatic detection of installed GPUs and provides a manual setup option for custom configurations.

## Features
- Automatic detection and configuration of GPU drivers.
- Support for NVIDIA, AMD, and Intel GPUs.
- Fallback to SCFB (Simple Framebuffer) driver when no compatible GPU is detected.
- Manual setup options for advanced users.

## Installation
To install the script, run:

```bash
sudo make install
```
This will install the script to `/usr/local/bin/xconfig` and set up the necessary log directory.

## Uninstallation
To remove the script, run:

```bash
sudo make uninstall
```
This will remove the script and associated log files.

## Usage

### Automatic Detection
To automatically detect and configure the GPU, run:

```bash
xconfig auto
```

### Cleanup
To remove conflicting drivers:

```bash
xconfig cleanup
```

### Manual Setup
To manually set up a specific GPU driver, use one of the following commands:

- **Intel DRM driver**:
  ```bash
  xconfig intel
  ```
- **AMD GPU driver**:
  ```bash
  xconfig amd
  ```
- **NVIDIA modeset driver**:
  ```bash
  xconfig nvidia
  ```
- **SCFB fallback driver**:
  ```bash
  xconfig scfb
  ```

If no arguments are provided, the script launches an interactive menu.

```bash
xconfig
```

## Testing
To test the script without making actual changes, enable test mode:

1. Open the script in a text editor.
2. Set `TEST_MODE=1` near the top of the file.
3. Run the script with the desired option.

Logs will indicate the actions that would have been performed without making real changes.

## Logging
Logs are stored in `/var/log/xconfig.log`.

## License

```text
BSD 3-Clause License

Copyright (c) 2025, Vic Thacker. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

