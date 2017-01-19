# web-dev

## Two stacks:
1. nginx + php-fpm
2. apache + php module

If you need to use mysql, please create ./mysql/data dir first before run docker-compose!

## Running Setup
```
docker-compose run --rm setup
```
## Running app
```
docker-compose up -d app
```

