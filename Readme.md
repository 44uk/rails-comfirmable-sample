# Ruby on Rails / Confirmable sample

## Demonstration

```
docker build -t myrails/confirmable .
docker run --name myrails -d -p 3000:3000 myrails/confirmable
docker exec myrails bin/rake db:migrate
```

http://#{docker-machine.ip}:3000
