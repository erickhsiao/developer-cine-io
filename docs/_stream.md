# Group Stream

## Streams [/streams]

### Get Streams [GET]

Return the list of streams associated with the passed-in project `secretKey`.

##### Example
```bash
curl -X GET "https://www.cine.io/api/1/-/streams?secretKey=PROJECT_SECRET_KEY"
```

+ Parameters

    + secretKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `secretKey` associated with the project
    + name (optional, string `abc123`) ... Return only streams with the supplied `name`.

+ Response 200 (application/json)

    + Body

        [
           {
              "name" : "Stream 1",
              "play" : {
                 "rtmp" : "rtmp://fml.cine.io/20C45E/cines/abc123",
                 "hls" : "http://hls.cine.io/PUBLIC_KEY/abc123.m3u8"
              },
              "publish" : {
                 "stream" : "abc123?pass",
                 "url" : "rtmp://publish-sfo.cine.io/live"
              },
              "password" : "pass",
              "record" : true,
              "expiration" : "2034-08-16T00:00:00.000Z",
              "assignedAt" : "2014-08-18T19:38:05.076Z",
              "id" : "abcd1234abcd1234abcd1234",
              "streamName" : "abc123"
           },
           {
              "name" : "Stream 2",
              "play" : {
                 "rtmp" : "rtmp://fml.cine.io/20C45E/cines/zyx987",
                 "hls" : "http://hls.cine.io/cines/zyx987/zyx987.m3u8"
              },
              "publish" : {
                 "stream" : "zyx987?pass&amp",
                 "url" : "rtmp://publish-sfo.cine.io/live"
              },
              "password" : "pass",
              "record" : true,
              "expiration" : "2034-05-21T00:00:00.000Z",
              "assignedAt" : "2014-06-02T23:22:32.928Z",
              "id" : "abcd1234abcd1234abcd1234",
              "streamName" : "zyx987"
           }
        ]

## Stream [/stream]

### Get Stream [GET]

Get detailed information about a particular stream

##### Example
```bash
curl -X GET "https://www.cine.io/api/1/-/stream?secretKey=PROJECT_SECRET_KEY&id=STREAM_ID"
```

+ Parameters

    + secretKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `secretKey` associated with the project
    + id (required, string `abcd1234abcd1234abcd1234`) ... The `id` associated with the given stream

+ Response 200 (application/json)

    + Body

        {
           "name" : "my stream name",
           "play" : {
              "rtmp" : "rtmp://fml.cine.io/20C45E/cines/abc123",
              "hls" : "http://hls.cine.io/PUBLIC_KEY/abc123.m3u8"
           },
           "publish" : {
              "stream" : "abc123?pass",
              "url" : "rtmp://publish-sfo.cine.io/live"
           },
           "password" : "pass",
           "record" : true,
           "expiration" : "2034-08-22T00:00:00.000Z",
           "assignedAt" : "2014-08-22T23:54:21.453Z",
           "id" : "abcd1234abcd1234abcd1234",
           "streamName" : "abc123"
        }


### Create Stream [POST]

Return the list of streams associated with the passed-in project `secretKey`.

##### Example
```bash
curl -X POST \
     --data "secretKey=abcd1234abcd1234abcd1234abcd1234&name=my+stream+name&record=true" \
     "https://www.cine.io/api/1/-/stream"
```

+ Parameters

    + secretKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `secretKey` associated with the project
    + name (optional, string `my stream name`) ... Any text to help you identify your stream
    + record (optional, boolean `true`) ... Whether or not you want to record your stream

+ Response 200 (application/json)

    + Body

        {
           "name" : "my stream name",
           "play" : {
              "rtmp" : "rtmp://fml.cine.io/20C45E/cines/abc123",
              "hls" : "http://hls.cine.io/PUBLIC_KEY/abc123.m3u8"
           },
           "publish" : {
              "stream" : "abc123?pass",
              "url" : "rtmp://publish-sfo.cine.io/live"
           },
           "password" : "pass",
           "record" : true,
           "expiration" : "2034-08-22T00:00:00.000Z",
           "assignedAt" : "2014-08-22T23:54:21.453Z",
           "id" : "abcd1234abcd1234abcd1234",
           "streamName" : "abc123"
        }

### Update Stream [PUT]

Update the information about a given stream.

##### Example
```bash
curl -X PUT \
     --data "secretKey=abcd1234abcd1234abcd1234abcd1234&name=my+new+stream+name&record=false" \
     "https://www.cine.io/api/1/-/stream"
```

+ Parameters

    + secretKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `secretKey` associated with the project
    + id (required, string `abcd1234abcd1234abcd1234`) ... The `id` associated with the given stream
    + name (optional, string `my stream name`) ... Any text to help you identify your stream
    + record (optional, boolean `true`) ... Whether or not you want to record your stream

+ Response 200 (application/json)

    + Body

        {
           "name" : "my new stream name",
           "play" : {
              "rtmp" : "rtmp://fml.cine.io/20C45E/cines/abc123",
              "hls" : "http://hls.cine.io/PUBLIC_KEY/abc123.m3u8"
           },
           "publish" : {
              "stream" : "abc123?pass",
              "url" : "rtmp://publish-sfo.cine.io/live"
           },
           "password" : "pass",
           "record" : false,
           "expiration" : "2034-08-22T00:00:00.000Z",
           "assignedAt" : "2014-08-22T23:54:21.453Z",
           "id" : "abcd1234abcd1234abcd1234",
           "streamName" : "abc123"
        }


### Delete Stream [DELETE]

Delete a stream.

##### Example
```bash
curl -X DELETE "https://www.cine.io/api/1/-/stream?secretKey=PROJECT_SECRET_KEY&id=STREAM_ID"
```

+ Parameters

    + secretKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `secretKey` associated with the project
    + id (required, string `abcd1234abcd1234abcd1234`) ... The `id` associated with the given stream

+ Response 200 (application/json)

    + Body

        {
           "updatedAt" : "2014-08-23T00:14:19.531Z",
           "deletedAt" : "2014-08-23T00:14:19.526Z",
           "name" : "my stream",
           "id" : "abcd1234abcd1234abcd1234"
        }
