# Automation-Testing-supported-CI-CD-

Web Automation Framework Template
Using defined step and architechure from gitHub: https://github.com/labs42io/web-automation
Tests are written in an ordinary language that bridges the gap between business and technical people.
The docker selenium simplifies the setup and avoids any local installation of browser specific dependencies.
Supported CI/CD:
 - [v] Gitlab
 - [ ] Jenkins (Update in the future)
 - [ ] Github (Update in the furture)
 - [ ] CircleCI (Update in the future)


## Short guide to GitlabCI

Make a folder feature in your testing project
Viết file kịch bản(Feature) theo yêu cầu, dựa trên các cú pháp Given, When, Then được định nghĩa sẵn
Write Feature file based on Given, When, Then syntax 
Then test run
## Quick start

  

1. Install dependencies required to run the tests:

  

```sh

npm install

```

  

2. Start docker selenium containers with `docker-compose`:

  

```sh

# starts the selenium hub and browser nodes in docker containers / chạy container gồm browser vs selenium

npm run selenium

```

  

3. Run the tests and view the report:

  

```sh

# Chạy tất cả các test và tạo mới tất cả report

npm run test

```
```sh

# Chạy 1 test feature và tạo report cho test đó 

npm run test:run test.feature && npm run report

```
 ```sh

# Xoá các report ở local 

npm run report:clean

```




To stop all the docker containers from step 2:

  

```sh

npm run selenium:stop

```

  



Run the tests and view the report:


# Chạy tất cả các test và tạo mới tất cả report

npm run test


# Chạy 1 test feature và tạo report cho test đó 

npm run test:run test.feature && npm run report


# Xoá các report ở local 

npm run report:clean

To stop all the docker containers from step 2:

npm run selenium:stop

Note that selenium containers can be started once and then used across multiple sessions of running and debugging tests.
