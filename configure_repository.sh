gh auth login -h github.com -p https -w

gh repo set-default

# ブランチの最新化:有効
gh repo edit --allow-update-branch

# マージ後のブランチを削除:有効
gh repo edit --delete-branch-on-merge

# 自動マージ機能:有効
gh repo edit --enable-auto-merge

# Issue機能:有効
gh repo edit --enable-issues

#マージコミット:有効
gh repo edit --enable-merge-commit

# リベースマージ:無効
gh repo edit --enable-rebase-merge=false

# スカッシュマージ:無効
gh repo edit --enable-squash-merge=false

