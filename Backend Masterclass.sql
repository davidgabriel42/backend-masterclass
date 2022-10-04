CREATE TABLE "Accounts" (
  "id" bigserial PRIMARY KEY,
  "owner" varcharacter,
  "balance" bigint,
  "currency" varchar,
  "created_at" timestamptz DEFAULT 'now()'
);

CREATE TABLE "entries" (
  "id" bigserial PRIMARY KEY,
  "account_id" bigint,
  "amount" bigint,
  "created_at" timestamptz DEFAULT 'now()',
  "Indexes" account_id
);

CREATE TABLE "transfers" (
  "id" bigserial PRIMARY KEY,
  "from_account_id" bigint,
  "to_account_id" bigint,
  "amount" bigint,
  "created_at" timestamptz DEFAULT 'now()'
);

CREATE INDEX ON "Accounts" ("owner");

CREATE INDEX ON "transfers" ("from_account_id");

CREATE INDEX ON "transfers" ("to_account_id");

CREATE INDEX ON "transfers" ("from_account_id", "to_account_id");

ALTER TABLE "entries" ADD FOREIGN KEY ("account_id") REFERENCES "Accounts" ("id");

ALTER TABLE "transfers" ADD FOREIGN KEY ("from_account_id") REFERENCES "Accounts" ("id");

ALTER TABLE "transfers" ADD FOREIGN KEY ("to_account_id") REFERENCES "Accounts" ("id");
