#!/bin/bash
TARGET_DIR="/Users/yuli/.openclaw/workspace/vault/skills/browser"
mkdir -p "$TARGET_DIR"
# Note: Using sparse checkout or temporary clone to extract skills
git clone --depth 1 --filter=blob:none --sparse https://github.com/vercel-labs/agent-browser.git /tmp/agent-browser-tmp
cd /tmp/agent-browser-tmp
git sparse-checkout set skills
cp -r skills/* "$TARGET_DIR"
rm -rf /tmp/agent-browser-tmp
echo "Browser skills installed to $TARGET_DIR"
