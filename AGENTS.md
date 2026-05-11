# 7zip-vendor AI Agent Guide

## What This Repository Is

This is a vendor mirror of the official 7-Zip source code published by Igor Pavlov. The repository tracks upstream releases by replacing all files with each new version. It is not modified locally — it exists solely as a reference copy of the upstream source.

## Repository Structure

- **C/** — C implementation: LZMA/LZMA2/XZ/7z codecs, CRC, AES, SHA-256, plus utility programs (`Util/7z`, `Util/Lzma`, `Util/LzmaLib`, `Util/SfxSetup`)
- **CPP/** — C++ implementation: 7z archive handling, SFX modules, console/GUI/file-manager programs, with shared `Common/` and `Windows/` abstraction layers
- **Asm/** — Optimized assembly for x86 (MASM) and ARM/ARM64 (GNU assembler)
- **DOC/** — Format specifications, license, and SDK documentation

## Updating to a new version

Follow the pattern in git history: replace all files with the new version archive contents and commit with a message like `Update to XX.YY from <URL>`.

When reviewing update commits, focus on detecting a compromised upstream release: obfuscated or suspiciously complex new logic (especially in compression/decompression routines or build scripts), hidden functionality in test/utility code, unexpected binary blobs, and changes that don't match the stated release notes or changelog.
