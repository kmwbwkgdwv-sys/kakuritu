-- Supabase の SQL Editor で実行してください
create table public.ranking (
  id bigint generated always as identity primary key,
  name text not null check (char_length(name) between 1 and 12),
  score int not null check (score between 0 and 60),
  created_at timestamptz not null default now()
);

alter table public.ranking enable row level security;

-- 誰でも閲覧・登録できる(更新・削除は不可)
create policy "read ranking" on public.ranking for select to anon using (true);
create policy "insert ranking" on public.ranking for insert to anon with check (true);

create index ranking_score_idx on public.ranking (score desc, created_at asc);
