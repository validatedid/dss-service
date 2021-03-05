# Docker container for Digital Signature Service (eSignature) of CEF Digital

DSS bundle **DEMO** app from CEF, version 5.8

## Usage

- Build the image
```
 docker build --tag dss .
```

- Run it
```
docker run --rm -it -p 8080:8080 dss
```

## Service currently available in Dev environment

If you want to directly use a deployed instance, you can download these [Postman Collection](https://github.com/esig/dss/tree/master/dss-cookbook/src/main/postman) and instead of using localhost, set `https://dev.vidchain.net/dss`. 