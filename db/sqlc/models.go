// Code generated by sqlc. DO NOT EDIT.

package db

import (
	"database/sql"
)

type Account struct {
	ID        int64          `json:"id"`
	Owner     sql.NullString `json:"owner"`
	Balance   sql.NullInt64  `json:"balance"`
	Currency  sql.NullString `json:"currency"`
	CreatedAt sql.NullTime   `json:"created_at"`
}

type Entry struct {
	ID        int64         `json:"id"`
	AccountID sql.NullInt64 `json:"account_id"`
	Amount    sql.NullInt64 `json:"amount"`
	CreatedAt sql.NullTime  `json:"created_at"`
}

type Transfer struct {
	ID            int64         `json:"id"`
	FromAccountID sql.NullInt64 `json:"from_account_id"`
	ToAccountID   sql.NullInt64 `json:"to_account_id"`
	Amount        sql.NullInt64 `json:"amount"`
	CreatedAt     sql.NullTime  `json:"created_at"`
}
