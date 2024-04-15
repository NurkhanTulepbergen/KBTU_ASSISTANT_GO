package model

import (
	"database/sql"
	"log"
)

type Discipline struct {
	Cipher   string `json:"cipher"`
	Name     string `json:"name"`
	IsActive bool   `json:"is_active"`
	Passed   bool   `json:"passed"`
	Price    int    `json:"price"`
}

type DisciplineModel struct {
	DB       *sql.DB
	InfoLog  *log.Logger
	ErrorLog *log.Logger
}
