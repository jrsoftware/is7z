# Changes for Inno Setup
- Added [CPP\7zip\Bundles\Format7zFInno] which is a compact version of 7z.dll:
  - Supports less formats. Formats still supported are:
    - .7z, .zip, .gz, .bz2, .xz, .tar, .rar, .iso, .msi, .cab, .rpm, .vhd, .vhdx, .vdi, .vmdk, .wim, .dmg, .lzh, .ext, .001
  - Rar support includes RAR5.
  - No icons.
  - No external codecs support.
  - 0.94 MB instead of 1.35 MB for the x86 version.
- Added batch files for compilation of x86, x64 and Arm64 7z.dll (based on the above), 7zxa.dll, and 7zxr.dll.

Signed versions of the x86 and x64 DLL files can be downloaded from the issrc repository, renamed as is7z(-x64).dll, etcetera.

Arm64 compilation required enabling component 'C++ Clang Compiler for Windows' in Visual Studio Installer.

# 7-Zip on GitHub
7-Zip website: [7-zip.org](https://7-zip.org)

<!-- Link references -->
[CPP\7zip\Bundles\Format7zFInno]: <CPP/7zip/Bundles/Format7zFInno>
