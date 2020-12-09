# Docker container for Digital Signature Service (eSignature) of CEF Digital

DSS bundle app from CEF, version 5.7

## Usage

- Build the image
```
 docker build --tag dss .
```

- Run it
```
docker run --rm -it -p 8080:8080 dss
```