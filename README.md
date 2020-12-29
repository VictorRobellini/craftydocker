# craftydocker

A really easy way to deploy [Crafty Controller](https://craftycontrol.com/)

[Crafty Source](https://gitlab.com/crafty-controller/crafty-web)

## docker-compose.yaml

The Docker Compose to run either of the 2 containers build using this repo

## docker-static
This creates an image that pulls in the latest crafty source at build time.

## docker-uptodate
This creates an image that pulls in the latest crafty source and builds it every time the image is launched.

## kubernetes
My k8s yaml
