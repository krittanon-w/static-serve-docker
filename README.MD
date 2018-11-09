# static-serve-docker

starting docker with DEP_ENV env variable
```text
docker run -d --name <NAME> -p 8080:80 -e DEP_ENV=<DEPLOYMENT_ENVIRONMENT> static-serve:latest`
```

you can try this by go to `localhost:8080` then you will get depend on your env you have configured.

- DEP_ENV=dev or if not set default is `dev`
```json
{ "say": "Hello Dev Env" }
```
- DEP_ENV=prod
```json
{ "say": "Hello Prod Env" }
```

There is script for testing env
`./dlift.sh` for setting environment ro `dev` and 
`./dlift.sh -prod` for setting environment ro `prod`
