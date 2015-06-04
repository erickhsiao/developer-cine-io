# Group Project

Each account can have one or more associated projects. A project has one or
more associated streams. The project resource exists for the convenience of
organizing your streams.

## Projects [/projects]

### Get Projects [GET]

Return a list of all projects associated with the passed-in account `masterKey`.

##### Example
```bash
curl -X GET "https://www.cine.io/api/1/-/projects?masterKey=ACCOUNT_MASTER_KEY"
```

+ Parameters

    + masterKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `masterKey` associated with the account

+ Response 200 (application/json)

    + Body

        [
           {
              "streamsCount" : 3,
              "updatedAt" : "2014-08-22T02:29:23.552Z",
              "name" : "My Project",
              "id" : "abcd1234abcd1234abcd1234abcd1234",
              "publicKey" : "abcd1234abcd1234abcd1234abcd1234",
              "secretKey" : "abcd1234abcd1234abcd1234abcd1234"
           }
        ]

## Project [/project]

### Get Project [GET]

Return the full information for the project associated with the passed-in
project `secretKey`.

##### Example
```bash
curl -X GET "https://www.cine.io/api/1/-/project?secretKey=PROJECT_SECRET_KEY"
```

+ Parameters

    + secretKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `secretKey` associated with the project

+ Response 200 (application/json)

    + Body

       {
          "streamsCount" : 3,
          "updatedAt" : "2014-08-22T02:29:23.552Z",
          "name" : "My Project",
          "id" : "abcd1234abcd1234abcd1234abcd1234",
          "publicKey" : "abcd1234abcd1234abcd1234abcd1234",
          "secretKey" : "abcd1234abcd1234abcd1234abcd1234"
       }


### Create Project [POST]

Create a new project in the account using the account master key `masterKey`.

##### Example
```bash
curl -X POST "https://www.cine.io/api/1/-/project -d "masterKey=ACCOUNT_MASTER_KEY&name=Foo+Bar"
```

+ Parameters

    + masterKey (required, string `abcd1234abcd1234abcd1234abcd1234`) ... The `masterKey` associated with the account

+ Response 200 (application/json)

    + Body

       {
          "id" : "abcd1234abcd1234abcd1234",
          "streamsCount" : 0,
          "name" : "Foo Bar",
          "publicKey" : "abcd1234abcd1234abcd1234abcd1234",
          "secretKey" : "abcd1234abcd1234abcd1234abcd1234",
          "updatedAt" : "2015-06-04T04:29:00.989Z"
       }
