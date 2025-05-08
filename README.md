# Simple Self-hosted RTMP restreamer for multi-stream on Twitch and Kick

## Usage

Make a docker image from source

```
https://github.com/dhrinkino/restreamer-rtmp.git
```

Build an image

```
docker build .
```

## Environment Variables

| Variable          | Description                                     | Example Value                               |
|------------------|-------------------------------------------------|---------------------------------------------|
| `TWITCH_ENDPOINTS` | Twitch stream keys separated by spaces          | `live_12345 live_67890`                     |
| `KICK_ENDPOINTS`   | Kick stream keys separated by spaces            | `kick_abcde kick_fghij`                     |