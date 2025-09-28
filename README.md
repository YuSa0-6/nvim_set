# 💤 LazyVim Web開発設定

Web開発用に最適化された[LazyVim](https://github.com/LazyVim/LazyVim)ベースのNeovim設定です。

## Web開発用キーマッピング

### 基本設定
- `<leader>` = スペースキー
- `<leader>ff` - ファイル検索 (Telescope)
- `<leader>fg` - 文字列検索 (Telescope)
- `<leader>fb` - バッファ一覧 (Telescope)
- `<leader>fh` - ヘルプ検索 (Telescope)

### コードナビゲーション・編集
- `gd` - 定義へジャンプ
- `gr` - 参照一覧表示
- `K` - ホバードキュメント表示
- `<leader>ca` - コードアクション
- `<leader>rn` - シンボル名変更
- `<leader>cf` - コード整形
- `]d` / `[d` - 次/前の診断へ移動

### ファイルエクスプローラー
- `<leader>e` - Neo-treeファイルエクスプローラー切り替え
- `<leader>be` - 現在のバッファのファイルエクスプローラー

### ウィンドウ管理
- `<C-h/j/k/l>` - ウィンドウ間移動
- `<leader>w` - ウィンドウコマンド
- `<leader>wd` - ウィンドウ削除
- `<leader>w-` - 水平分割
- `<leader>w|` - 垂直分割

### バッファ管理
- `<S-h>` / `<S-l>` - 前/次のバッファ
- `<leader>bd` - バッファ削除
- `<leader>bo` - 他のバッファを閉じる

### Git連携
- `<leader>gg` - Lazygit起動
- `<leader>gc` - Gitコミット履歴 (Telescope)
- `<leader>gs` - Gitステータス (Telescope)
- `]h` / `[h` - 次/前のGit差分
- `<leader>gp` - Git差分プレビュー
- `<leader>gr` - Git差分リセット
- `<leader>gS` - Git差分ステージ

### ターミナル
- `<C-/>` - フローティングターミナル切り替え
- `<leader>ft` - ターミナル（ルートディレクトリ）
- `<leader>fT` - ターミナル（現在のディレクトリ）

### 検索・置換
- `<leader>sr` - ファイル内置換
- `<leader>sR` - カーソル下の単語を置換

## Web開発機能

### 言語サポート
- **TypeScript/JavaScript**: tsserverによる完全なLSPサポート
- **HTML/CSS**: シンタックスハイライトと補完
- **JSON**: スキーマ検証付き拡張サポート
- **Markdown**: ライブプレビューと編集

### TypeScript専用機能
- `<leader>co` - インポート整理
- `<leader>cR` - ファイル名変更
- 自動インポート管理
- エラー診断とクイックフィックス

### Web開発用プラグイン
- **Telescope**: ファイル・シンボル等のファジーファインダー
- **Treesitter**: 高度なシンタックスハイライト
- **LSP**: Language Server Protocol統合
- **Neo-tree**: ファイルエクスプローラー
- **Trouble**: 診断パネル
- **Mason**: LSP/DAP/Linterインストーラー

## インストール方法

1. Neovim ≥ 0.8.0 が必要です
2. この設定をクローン:
   ```bash
   git clone <このリポジトリ> ~/.config/nvim
   ```
3. Neovimを起動 - プラグインが自動インストールされます
4. `:checkhealth` でセットアップを確認

## カスタマイズ

- `lua/config/keymaps.lua` - カスタムキーマッピング
- `lua/config/options.lua` - Neovimオプション
- `lua/plugins/` ディレクトリ - プラグイン追加

詳細は[LazyVimドキュメント](https://lazyvim.github.io/)をご参照ください。
