-- Drop the old permissive insert policy
drop policy "Anyone can insert entries" on entries;

-- Only authenticated users can insert
create policy "Authenticated users can insert entries"
  on entries for insert
  to authenticated
  with check (true);

-- Allow authenticated users to also read entries
create policy "Authenticated users can read entries"
  on entries for select
  to authenticated
  using (true);
