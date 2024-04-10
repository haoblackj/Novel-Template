gh auth login -h github.com -p https -w

gh repo set-default

# ブランチの最新化:有効
gh repo edit --allow-update-branch

# マージ後のブランチを削除:有効
gh repo edit --delete-branch-on-merge

# 自動マージ機能:有効
gh repo edit --enable-auto-merge

#マージコミット:有効
gh repo edit --enable-merge-commit

# リベースマージ:無効
gh repo edit --enable-rebase-merge=false

# スカッシュマージ:無効
gh repo edit --enable-squash-merge=false

# novel-writer向けのVivliostyleインストール
# まずはnpmがインストールされているか確認、なければインストールを求めて処理終了
if ! type "npm" > /dev/null 2>&1; then
  echo "npmがインストールされていません。npmをインストールしてください。"
  exit 1
fi
npm install -g @vivliostyle/cli