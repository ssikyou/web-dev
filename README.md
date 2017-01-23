# web-dev
This is referenced from [Mage Inferno github](https://github.com/mageinferno/magento2-docker-compose).

## Two stacks:
1. nginx + php-fpm
2. apache + php module

Currently, we choose the second one to setup magento2 env.

## Prepares
1. docker-compose down && ./clean.sh
2. create docker-compose.override.yml to change some enviroment values

## Running setup
```
docker-compose run --rm setup
```

## Running app
```
docker-compose up -d app
```

## Https support
Run setup_https.sh in app container.


