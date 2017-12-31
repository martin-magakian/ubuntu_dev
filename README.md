## Ubuntu docker image for developement

Sometimes I want a clean linux environement for quick developement.
But I need to install over and over the tools to run the code.

Docker image: [martinmagakian/ubuntu_dev](https://hub.docker.com/r/martinmagakian/ubuntu_dev/)

```
docker run -it martinmagakian/ubuntu_dev
```

This Docker image include:
* Some admin tools
* Python 2.7 + virtualenv
* Java open JDK 8
* Node 8
* Ruby
* Go