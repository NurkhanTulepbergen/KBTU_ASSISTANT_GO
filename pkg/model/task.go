package model

import (
	"database/sql"
	"log"
)

type Task struct {
	TaskID        int    `json:"task_id"`
	LectureID     int    `json:"lecture_id"`
	Title         string `json:"is_active"`
	Description   string `json:"description"`
	Picture       string `json:"picture"`
	AnswerPicture string `json:"answer_picture"`
	AnswerText    string `json:"answer_text"`
}

type TaskModel struct {
	DB       *sql.DB
	InfoLog  *log.Logger
	ErrorLog *log.Logger
}
