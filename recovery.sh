#!/bin/bash

echo "=== Git Recovery Script ==="
echo "Pilih metode recovery:"
echo "1. Lihat commit history releases"
echo "2. Reset ke commit sebelumnya"
echo "3. Lihat reflog"
echo "4. Reset dari origin/releases"
echo "5. Backup current state dulu"

read -p "Pilihan (1-5): " choice

case $choice in
    1)
        echo "=== Commit History Branch Releases ==="
        git checkout releases
        git log --oneline -10
        echo ""
        echo "Untuk restore ke commit tertentu, jalankan:"
        echo "git reset --hard <commit_hash>"
        ;;
    2)
        echo "=== Reset ke 1 commit sebelumnya ==="
        git checkout releases
        git reset --hard HEAD~1
        echo "Branch releases sudah di-reset ke commit sebelumnya"
        ;;
    3)
        echo "=== Git Reflog ==="
        git checkout releases
        git reflog --oneline -10
        echo ""
        echo "Untuk restore ke reflog tertentu, jalankan:"
        echo "git reset --hard <reflog_hash>"
        ;;
    4)
        echo "=== Reset dari Remote ==="
        git checkout releases
        git fetch origin
        git reset --hard origin/releases
        echo "Branch releases sudah di-reset dari remote"
        ;;
    5)
        echo "=== Backup Current State ==="
        BACKUP_BRANCH="releases-backup-$(date +%Y%m%d-%H%M%S)"
        git checkout releases
        git checkout -b $BACKUP_BRANCH
        git checkout releases
        echo "Backup dibuat di branch: $BACKUP_BRANCH"
        ;;
    *)
        echo "Pilihan tidak valid"
        ;;
esac