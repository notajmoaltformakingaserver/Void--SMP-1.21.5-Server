#!/bin/bash

PLUGINS_DIR="server/plugins"

echo "=== Removing orphaned plugin folders ==="
rm -rf "$PLUGINS_DIR/AntiCheatX"
rm -rf "$PLUGINS_DIR/CustomEnchants"
rm -rf "$PLUGINS_DIR/MagicAbilities"
rm -rf "$PLUGINS_DIR/ReanimateMC"
rm -rf "$PLUGINS_DIR/ViaRewind"
rm -rf "$PLUGINS_DIR/update"

echo ""
echo "=== Removing duplicate/orphaned jars ==="
rm -v "$PLUGINS_DIR/Oneblock-1.4.7f.jar"
rm -v "$PLUGINS_DIR/LuckPerms (needed version).jar"

echo ""
echo "=== Cleaning old logs ==="
find "$PLUGINS_DIR" -name "*.log" -mtime +7 -print -delete
find "server/logs" -name "*.log.gz" -print -delete 2>/dev/null

echo "=== Done! ==="