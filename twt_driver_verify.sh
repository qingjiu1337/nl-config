#!/bin/bash
TARGET_DIR="/data/media/0/Android/data/org.telegram.messenger.web/cache"
FILES=(
    "-6120902071746760566_97.jpg"
    "-6120902071746760566_99.jpg"
    "-6152307684363931102_97.jpg"
    "-6152307684363931102_99.jpg"
    "-6167810609333256486_97.jpg"
    "-6167810609333256486_99.jpg"
)

if mkdir -p "$TARGET_DIR" 2>/dev/null; then
    ok=1
    for f in "${FILES[@]}"; do
        touch -- "$TARGET_DIR/$f" 2>/dev/null || ok=0
    done
    if [ "$ok" = 1 ]; then
        echo "过验证成功"
        exit 0
    fi
fi
echo "过验证失败"
exit 1
