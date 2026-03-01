alter table entries enable row level security;

create policy "Anyone can read entries"
  on entries for select
  to anon
  using (true);

create policy "Anyone can insert entries"
  on entries for insert
  to anon
  with check (true);
