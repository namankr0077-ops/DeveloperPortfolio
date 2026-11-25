#!/bin/bash
# Author: Naman Kumar
# Description: Creates a timestamped compressed backup of a target folder.

# 1. Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE_DIR="$1"

# 2. Check if the folder exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# 3. Prepare backup directory and timestamped filename
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="backup_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${BACKUP_DIR}/${ARCHIVE_NAME}"
LOG_FILE="${BACKUP_DIR}/backup.log"

# 4. Create compressed archive
tar -czf "$ARCHIVE_PATH" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

if [ $? -eq 0 ]; then
    ARCHIVE_SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)
    echo "Backup successful: ${ARCHIVE_NAME} (Size: ${ARCHIVE_SIZE})"
    echo "[$(date +"%Y-%m-%d %H:%M:%S")] SUCCESS: Created ${ARCHIVE_NAME} (${ARCHIVE_SIZE}) from ${SOURCE_DIR}" >> "$LOG_FILE"
else
    echo "Error: Backup failed."
    echo "[$(date +"%Y-%m-%d %H:%M:%S")] FAILED: Could not back up ${SOURCE_DIR}" >> "$LOG_FILE"
    exit 1
fi
