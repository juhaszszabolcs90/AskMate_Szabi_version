# AskMate_Szabi_version

# About the project
This app is a crowdsourced Q&A site, similar to Stack Overflow. At Codecool, my teammates and I developed an application about this topic. This version of the application is my attempt to refactor the underlying program and integrate DevOps features into it.
- First version of the application: https://github.com/CodecoolGlobal/ask-mate-3-python-juhaszszabolcs90.git

# Built With
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Python_logo_and_wordmark.svg/486px-Python_logo_and_wordmark.svg.png" alt="Python" width="80"/>
- Python: 3.9
<img src="https://seeklogo.com/images/F/flask-logo-44C507ABB7-seeklogo.com.png" alt="Flask" width="50"/>
- Flask: The web application framework
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/1280px-Docker_%28container_engine%29_logo.svg.png" alt="Docker" width="80"/>
- Docker: For containerization and application management
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Jenkins_logo_with_title.svg/2560px-Jenkins_logo_with_title.svg.png" alt="Jenkins" width="80"/>
- Jenkins: For setting up the CI/CD pipeline
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLtHxEF96le0vEAlL5tBHw3cm0vyqM1s78NumFYRXKeZ5q9vPSY2LvrpD9VXLUd5TSiw&usqp=CAU" alt="Github Actions" width="80"/>
- GitHub Actions: For other CI/CD tasks
<img src="https://kinsta.com/wp-content/uploads/2022/02/postgres-logo.png" alt="PostgreSQL" width="80"/>
- PostgreSQL: The database provider
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK3iDMEO1HUkvGd6ICMMv15U7mNItYOO_CAnYuibY6amu9a5azi4zHQfM8a17G_21tWCA&usqp=CAU" alt="NGINX" width="80"/>
- Nginx: The web server
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUGUIki0k4KszPz3-uwtaRVMNctvSoytyaVm-t9343WKpY3AI4ekhFtuonADemA_DBpr0&usqp=CAU" alt="CSS, HTML" width="80"/>

# Roadmap
- [ ] Refactor the code
- [x] Containerize the project
- [x] Build CI/CD pipeline with Jenkins
- [ ] Build CI/CD pipeline with GitHub Actions

# Installation
To run the project, follow these steps:

1. Clone the project to your local machine: `git clone https://github.com/juhaszszabolcs90/AskMate_Szabi_version.git`
2. Navigate to the project's root directory: `cd AskMate_Szabi_version`
3. Start the application using Docker: `docker-compose up -d`
4. The application will be accessible in your browser at `http://localhost`.

## GitHub Actions Operations
The project also employs GitHub Actions for CI/CD processes. Here, you can find descriptions of the files located in the GitHub Actions directory:

### `label.yml`
This operation counts the labels associated with newly opened issues. It triggers when new issues are opened.

### `main.yml`
This operation performs automatic version management for push events. It increments the version number, prepares, and uploads the Docker image to Docker Hub.

## Jenkins Pipeline
The Jenkinsfile in this project automates the CI/CD process using Jenkins. It includes the following stages:

1. **Checkout:** This stage checks out the source code from the repository.
2. **Build and Push Docker Image:** This stage builds a Docker image and pushes it to the Docker Hub.
