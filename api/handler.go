package api

import (
	"log"
	"net/http"
)

func StartServer() {
	router := mux.NewRouter()
	log.Println("creating routes")
	router.HandleFunc("/health-check", HealthCheck).Methods("GET")
	http.Handle("/", router)
	http.ListenAndServe(":2003", router)
}
