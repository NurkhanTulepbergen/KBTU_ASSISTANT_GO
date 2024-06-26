﻿# KBTU_ASSISTANT_GO

## KBTU Assisstant 
KBTU Assistant is a comprehensive platform offering lectures, topics, and assignments for students across all disciplines at KBTU. It provides curated resources, assignment updates, and a space for academic community engagement, facilitating academic success and exploration.

## Team members
| Student name          | Student ID      |
|-----------------------|-----------------|
| Taimas Ayazhan        | 22B030447       |
| Tulepbergen Nurkhan   | 22B030455       |

## Usage

To run the project, follow these steps:

1. Install the necessary dependencies:

    ```bash
    go mod tidy
    ```

2. Run the project:

    ```bash
    go run main.go
    ```
This will run the project on a local server.

## Login User

- **Endpoint:**
  - `POST /users`

- **Description:**
  - Login user.

- **Request Body:**
  - JSON object containing user information.

    ```json
    {
      "email": "newuser@example.com",
      "password": "securepassword"
    }
    ```

- **Response:**
  - Status Code: 200 OK
  - Body: Success message.

    ```bash
    curl -X POST -H "Content-Type: application/json" -d '{"email":"newuser@example.com", "password":"securepassword"}' http://localhost:2005/users
    ```

