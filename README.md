# Changes for Inno Setup
- Added [CPP\7zip\Bundles\Format7zFInno] which is a compact version of 7z.dll:
  - Supports less formats. Formats still supported are:
    - .7z, .zip, .gz, .bz2, .xz, .tar, .rar, .iso, .msi, .cab, .rpm, .vhd, .vhdx, .vdi, .vmdk, .wim, .dmg, .lzh, .ext, .001
  - No icons.
  - No external codecs support.
  - 0.94 mB instead of 1.35 mB.
- Added batch files for compilation of 7z.dll (based on the above), 7zxa.dll, and 7zxr.dll.

Signed versions of these DLL files can be downloaded from the issrc repository, renamed as is7z.dll, etcetera.

# 7-Zip on GitHub
7-Zip website: [7-zip.org](https://7-zip.org)

<!-- Link references -->
[CPP\7zip\Bundles\Format7zFInno]: <CPP/7zip/Bundles/Format7zFInno>
