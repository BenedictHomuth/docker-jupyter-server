# Whats inside?
This repo is providing a dockerfile based on anaconda, specifically for jupyter notebooks. Build your container and run it. The container by default exposes the jupyter server on port 8080!

# How to use?

## Build
```
docker build -t jupyter-server -f dockerfile.jupyter .
```
## Run
```
docker run -d -p 8080:8080 jupyter-server
```
## Connect to jupyter
Open a browser and visit [localhost:8080](localhost:8080)


# Advanced use cases

## Volume mapping
In case you want to link local files to the container, e.g., you have a local ``/notebooks`` folder.
The default path in the container for notebooks are ``/opt/notebooks``
```
docker run -d -p 8080:8080 -v ./notebook:/opt/notebooks:rw
```

## Custom start parameters for jupyter?
By default the docker image executes the `jupyter-start.sh` also present in this repo.
If you wish to provide own commands you set an environment variable to hinder this auto start.
| ENV Var | Default Value | Description |
|----------|----------|----------|
| MANUAL_CONF    | -   | Omits the execution of this repo's `jupyter-start.sh` script. You then must provide your own commands on container startup.   |
