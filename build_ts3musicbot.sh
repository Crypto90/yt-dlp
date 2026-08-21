#!/bin/bash
echo "Building yt-dlp for TS3MusicBot using PyInstaller..."
pyinstaller yt_dlp/__main__.py \
    --name yt-dlp \
    --hidden-import="yt_dlp.compat._legacy" \
    --hidden-import="yt_dlp.utils._deprecated" \
    --collect-all yt_dlp \
    --onefile

echo "Build complete! The binary should be available in the 'dist' directory."
