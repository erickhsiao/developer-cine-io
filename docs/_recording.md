# Group Recording

## Recordings [/stream/recordings]

### Get Recordings for a Stream [GET]

Get the list of recordings associated with a stream.

##### Example
```bash
curl -X GET "https://www.cine.io/api/1/-/stream/recordings?publicKey=PROJECT_PUBLIC_KEY&id=STREAM_ID"
```

+ Parameters

    + publicKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `publicKey` associated with the project
    + id (required, string `abcd1234abcd1234abcd1234`) ... The `id` associated with the given stream

+ Response 200 (application/json)

    + Body

        [
           {
              "date" : "2014-08-18T21:45:00.000Z",
              "url" : "http://vod.cine.io/cines/abcd1234abcd1234abcd1234abcd1234/abc123.mp4",
              "name" : "abc123.mp4",
              "size" : 202623953
           }
        ]

## Recording [/stream/recording]

### Delete a Recording [DELETE]

Delete one of the recordings associated with a stream.

##### Example
```bash
curl -X DELETE "https://www.cine.io/api/1/-/stream/recording?secretKey=PROJECT_SECRET_KEY&id=STREAM_ID&name=RECORDING_NAME"
```

+ Parameters

    + secretKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `secretKey` associated with the project
    + id (required, string `abcd1234abcd1234abcd1234`) ... The `id` associated with the given stream
    + name (required, string `abc123`) ... The `name` of the recording

+ Response 200 (application/json)

    + Body

        {
           "deletedAt" : "2014-08-23T00:24:20.402Z"
        }
