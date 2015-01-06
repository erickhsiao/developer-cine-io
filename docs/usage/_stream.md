## Stream Usage [/usage/stream]

### Get Stream Usage [GET]

Return the full usage information for the stream associated with the passed-in
project `secretKey` and stream `id`.

##### Example
```bash
curl -X GET "https://www.cine.io/api/1/-/usage/stream?secretKey=PROJECT_SECRET_KEY&id=STREAM_ID&report[]=storage&report[]=bandwidth&month=2015-01-01"
```

+ Parameters

    + secretKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `secretKey` associated with the project
    + id (required, string `abcd1234abcd1234abcd1234`) ... The `id` associated with the given stream
    + month (required, string `2015-01-01`) ... An [ISO_8601](http://en.wikipedia.org/wiki/ISO_8601) format date. Only the month and year are used.
    + report (required, array `report[]=broadcast&report[]=storage`) ... An array of reports to run. Parsed using the [Rack::Utils.parse_nested_query](http://www.rubydoc.info/github/rack/rack/Rack/Utils#parse_nested_query-class_method) and [QS.parse](https://github.com/hapijs/qs#parsing-arrays) format.
        + reports:
            + broadcast
            + storage

+ Response 200 (application/json)

    + Body

       {
          "secretKey" : "abcd1234abcd1234abcd1234abcd1234",
          "id" : "abcd1234abcd1234abcd1234",
          "month":"2015-01-01T00:00:00.000Z",
          "bandwidth": 1073741824,
          "storage": 2147483648
       }
