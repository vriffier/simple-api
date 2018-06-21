# README

* To run
```
docker-compose up
```

* API Routes
```
POST /posts HTTP/1.1
Host: localhost:3000
Content-Type: application/json
{ "content": "some interesting content" }

GET /posts
Host: localhost:3000
Content-Type: application/json
{
    "id": 1,
    "content": "some interesting post",
    "comments": []
}

POST /comments
Host: localhost:3000
Content-Type: application/json
{ "content": "some interesting comment", "post_id": "1" }

GET /comments
Host: localhost:3000
Content-Type: application/json
[
    {
        "id": 1,
        "content": "some interesting comment",
        "post_id": 1
    }
]

ERRORS
POST /posts
Host: localhost:3000
Content-Type: application/json
{}
{
    "content": [
        "can't be blank",
        "is too short (minimum is 20 characters)"
    ]
}
```
