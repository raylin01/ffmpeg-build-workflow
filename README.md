# FFmpeg Build and Release Workflow

This repository contains a GitHub Actions workflow that builds FFmpeg from scratch using a Docker container and releases the built packages as a release. Other GitHub workflows can download the built packages from the releases.

## How to Use the Workflow

1. Ensure that you have a GitHub repository set up.
2. Create a `.github/workflows` directory in your repository if it doesn't already exist.
3. Add the `build-ffmpeg.yml` workflow file to the `.github/workflows` directory.
4. Commit and push the changes to your repository.
5. The workflow will automatically run and build FFmpeg from scratch using a Docker container.
6. The built FFmpeg packages will be archived as artifacts and uploaded as release assets.

## How to Download the Built FFmpeg Packages

1. Go to the "Releases" section of your GitHub repository.
2. Find the latest release that contains the built FFmpeg packages.
3. Download the FFmpeg packages from the release assets.
