# Babili

Babili is a real-time chat backend built with Ruby, Rails, Node, Socket.io and Docker.

This project use the CREPESourcing framework (https://github.com/crepesourcing) to generate and consume events in real-time.

## About this repository

This root repository is meant to be root folder when you want to run babili on your development machine. It *should not* be used in prodution.

Description of the folder architecture:

* `docker-compose.yml` contains the configuration to launch all the required containers.
* `environments` contains the envirnoment variables and their development values of all the services.
* `engine` is the main service handling the API and the core business logic. 
* `clockwork` is a service meant to trigger actions on the engine at specific moments of the day.
* `pusher` is a Node Websocket server. It is meant to push new messages in real time to users.

## How to run this project:

* Clone all repositories on your computer:

    - `git clone https://github.com/Babili/babili`
    - `cd babili`
    - `git clone https://github.com/Babili/engine.git`
    - `git clone https://github.com/Babili/pusher.git`
    - `git clone https://github.com/Babili/clockwork.git`

* Setup databases:

  ```
  $ ./scripts/setup.sh
  ```

* Launch all containers:

    ```
    $ docker-compose up -d
    ```

* Check that the API is running by opening `localhost:6280` in your browser

## Contributors

Babili is the product of the Collaboration of the Spin42 team (http://spin42.com) and the Commuty one (https://www.commuty.net).
