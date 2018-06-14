# README

* To run
```
docker-compose up
```

* API Routes
```
POST /posts
{ "content": "some interesting content" }

GET /posts
{
    "id": 1,
    "content": "some interesting post",
    "comments": []
}

POST /comments
{ "content": "some interesting comment", "post_id": "1" }

GET /comments
[
    {
        "id": 1,
        "content": "some interesting comment",
        "post_id": 1
    }
]

ERRORS
POST /posts
{}
{
    "content": [
        "can't be blank",
        "is too short (minimum is 20 characters)"
    ]
}
```
