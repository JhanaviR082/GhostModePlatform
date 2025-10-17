
# 👻 Ghost Mode

<small>**Ghost Mode** is a web-based platform that helps users take control of their device usage through self-initiated digital detox sessions. Users can set custom timers and receive motivational tips during sessions to stay focused and build healthier device habits.</small>

<img width="1427" height="703" alt="Screenshot 2025-10-17 at 10 28 35 PM" src="https://github.com/user-attachments/assets/4dbaed32-e772-4448-bab3-a1d7c8eede52" />
<img width="1427" height="703" alt="Screenshot 2025-10-17 at 10 28 44 PM" src="https://github.com/user-attachments/assets/979d5787-d174-4cbc-acae-bb61372752c2" />

### Key Features
* Timer-based device-free sessions
* Motivational quotes/tips during detox
* Progress tracking (future scope)
* Minimalist, distraction-free design
* Responsive on desktop and mobile

### Tech Stack

#### Backend & Frameworks
* Django 4.2.21 (Web framework)
* ASGI Ref 3.8.1 (Asynchronous server gateway interface support)
* SQLParse 0.5.3 (SQL parsing for Django ORM)

#### HTTP & Networking
* Requests 2.32.3 (HTTP requests)
* urllib3 2.4.0 (HTTP client)
* Certifi 2025.4.26 (SSL certificates)
* charset-normalizer 3.4.2 & idna 3.10 (Encoding and URL support)

#### Type & Compatibility
* typing-extensions 4.13.2 (Extended type hints support)


### 🐳 Docker 
Ghost Mode is dockerized to simplify deployment and ensure consistent environments across machines. 
Using Docker:

#### -Build the Docker image
```bash
docker build -t ghostmode-image .
```
#### -Run the container
```bash
docker run -p 8000:8000 -v $(pwd):/ghostmodeplatform ghostmode-image
```
#### -Optional: Enter container shell for debugging
```bash
docker run -it -p 8000:8000 -v $(pwd):/ghostmodeplatform ghostmode-image /bin/bash
```



### ☁️ AWS Cloud Deployment (Elastic Beanstalk)
Ghost Mode can be deployed to AWS using Docker for a live, scalable setup.
#### 1️⃣ Initialize Elastic Beanstalk 
```bash
eb init -p docker ghostmode-app --region us-east-1
```
#### 2️⃣ Create an environment and deploy the container
```bash
eb create ghostmode-env
```
#### 3️⃣ Launch app in the browser
```bash
eb open
```
