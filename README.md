# Welcome to `typist`!

Information categorization is prerequisite to just about everything related to risk management, but _[NIST SP 800-60, Guide for Mapping Types of Information and Information Systems to Security Categories](https://csrc.nist.gov/publications/detail/sp/800-60/vol-1-rev-1/final)_ is not ideal for searching through various data types. We created `typist` to support some simple searching capabilities (poorly) and provide a simpler organization of all the interconnected information.

# Devcontainer Deployments

It's possible to run `typist` locally in [devcontainers](https://containers.dev)! Here's a walkthrough, courtesy of @mzia (thanks!).

_Note: We've only tested this on MacOS, but it should work on any platform that supports devcontainers._

## Prerequisites

Ensure you have [Docker Desktop](https://www.docker.com/products/docker-desktop/).

## Step 1: Clone the Repository

```bash
> git clone [https://github.com/risk-redux/typist.git](https://github.com/risk-redux/typist.git)

> cd typist
```

## Step 2: Create Docker Volumes to Store App Data and Dependencies

``` bash
> docker volume create typist-db

> docker volume create typist-bundle
```

## Step 3: Build and Run the Docker Containers

```bash
> docker-compose -f .devcontainer/docker-compose.yml build --no-cache

> docker-compose -f .devcontainer/docker-compose.yml up -d

> docker-compose -f .devcontainer/docker-compose.yml exec -w /typist rails-app bundle install
```

### Notes

  - `-f`: Specifies the path for `docker-compose.yml` in the `.devcontainer` subdirectory.
  - `build`: Directs Docker Compose to build the application image using the provided `.devcontainer/Dockerfile` the first time you run it.

## Step 4: Set Up the Database and Run the Application Server

With the containers running, the final step is to create and seed the database. The `devcontainer.json` file specifies that this should happen automatically in a Dev Container environment, but we'll run the command manually.

``` bash
> docker-compose -f .devcontainer/docker-compose.yml exec -w /typist rails-app bundle exec rails db:setup

> docker-compose -f .devcontainer/docker-compose.yml exec -w /typist rails-app bundle exec rails server -b 0.0.0.0
```

### Notes

  - The `rails db:setup` command is a convenient shortcut that runs `db:create`, `db:migrate`, and `db:seed` all at once. It will create the database, apply the schema, and populate it with the necessary initial data.

## Step 4: View the Application

The application is now fully running and configured! Open your web browser and navigate to:

[**[http://localhost:3000](https://www.google.com/url?source=gmail&sa=D&sa=E&q=http://localhost:3000)**](http://localhost:3000)

Any code changes you make in your local project directory will be immediately reflected in the running container, allowing for live development.

### To run a Rails console:

``` bash
> docker-compose -f .devcontainer/docker-compose.yml exec rails-app rails c
```

### To run any other command (like a specific migration):

``` bash
> docker-compose -f .devcontainer/docker-compose.yml exec rails-app <your-command-here>
```

### To stop everything:

Go to the terminal where the containers are running (Step 3) and press `⌘ + C`.

## Contributing

I'm open to [Issues](issues) and [Pull Requests](pulls)!
