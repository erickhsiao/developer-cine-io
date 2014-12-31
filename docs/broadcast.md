FORMAT: 1A
HOST: https://www.cine.io/api/1/-/

# Broadcast API

cine.io Broadcast is an API-driven live video-streaming platform. Developers
can quickly setup a live streaming app using our global live streaming CDN.
Broadcast was designed for immediate usage, getting you set up in your own app
in just a few minutes.

<!-- include(docs/_getting_started.md) -->

## Common Usage

1. Create a live stream
2. Publish a live stream
3. Play a live stream

### Create a live stream

Every project starts off with 1 live stream. Most likely you'll want to have
more than 1 unique live stream.

Requests normally start off by *creating a live stream*. This live stream is
unique to your project. You'll get a response back containing a few fields.
The most important fields to save in your database is `id`, and `password`.
You'll need these fields to play and publish your live stream. You can always
fetch the other fields again by issuing a get request to the `stream/show`
endpoint.

Look at the API docs for [POST /stream](#stream-stream-post) to learn how to
create a stream.

### Publish a live stream

Now you've saved your stream `id` and stream `password`. Using the [JS
SDK](https://github.com/cine-io/js-sdk), you'll need to pass you project's
`publicKey` to the client. If your specific user has permission in your
application to publish to this stream, then you'll need to send along the
stream `id` and stream `password` to your web client. For example, this
endpoint would be useful if you are building a "virtual classroom" and the
current logged-in user has a "teacher" role.

Publishing a live-stream requires that the logged-in user have Adobe Flash
installed and enabled in her browser. The JS SDK will automatically download
the correct SWF file and launch it in the user's browser when `start()` is
called on the publisher.

```javascript
var streamId = '<STREAM_ID>'
  , password = '<STREAM_PASSWORD'
  , domId = 'publisher-example';

var publisher = CineIO.publish(
  streamId, password, domId
);

publisher.start();
```


### Play a live stream

Using the [JS SDK](https://github.com/cine-io/js-sdk), you'll need to pass you
project's *public key* to the client. To play a stream using the JS SDK, you
only need to send out the stream `id`. Only serve the stream `id` to users who
have permission to view a stream. For example, in our aforementioned "virtual
classroom" application, this endpoint would be useful when the current logged-
in user has a "student" role.

Playing a live stream will launch the branded, open-source version of
[JWPlayer](http://www.jwplayer.com/). If you have your own JWPlayer license,
you can send it as one of the options (key: `jwPlayerKey`) to the `init()`
function. Mobile devices will use native `<video>` elements rather than
JWPlayer; this happens automatically.

```javascript
var streamId = '<STREAM_ID>'
  , domId = 'player-example';

CineIO.play(streamId, domId);
```


## Resources

The cine.io Broadcast API is comprised of three main resource types:

- Project: a project has one or more associated streams
- Stream: a stream contains all of the data necessary to publish and consume live video
- Recording: streams support the ability to be recorded



<!-- include(docs/_project.md) -->
<!-- include(docs/_stream.md) -->
<!-- include(docs/_recording.md) -->


