# 2分の1チャレンジ

青か緑を当て続けるゲーム。外したら連続正解数を世界ランキングに登録できます。

## 公開手順
1. **Supabase** (https://supabase.com) で無料プロジェクトを作成
2. SQL Editor で `supabase.sql` を実行
3. Project Settings → API の **Project URL** と **anon public key** を `index.html` 冒頭の `SUPABASE_URL` / `SUPABASE_ANON_KEY` に貼る
   (anonキーは公開しても問題ない設計です。service_roleキーは絶対に貼らないでください)
4. GitHub にリポジトリを作り `index.html` などを push
5. Settings → Pages → Branch: `main` / `(root)` で公開

## 注意
- 静的サイトのため、改ざんで不正なスコアを送ることは技術的に可能です。簡易的に score の上限だけDB側で制限しています。
- 荒らし対策が必要なら、Supabase の Edge Function 経由での登録や、名前の管理を検討してください。
