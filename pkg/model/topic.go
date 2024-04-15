package model

import (
	"database/sql"
	"log"
)

type Topic struct {
	TopicID     int    `json:"topic_id "`
	LectureID   int    `json:"lecture_id "`
	Title       string `json:"title"`
	Description string `json:"description "`
	Picture     string `json:"picture "`
}

type TopicModel struct {
	DB       *sql.DB
	InfoLog  *log.Logger
	ErrorLog *log.Logger
}
