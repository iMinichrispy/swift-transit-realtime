## swift-transit-realtime

Generated Swift models for the [gtfs-realtime.proto](https://developers.google.com/static/transit/gtfs-realtime/gtfs-realtime.proto) spec.

## Usage

Add `swift-transit-realtime` as a dependency to your Xcode Project or Package via Swift Package Manager, then:
```
import TransitRealtime

let message = try FeedMessage(serializedData: gtfsData)
```

## Updating

To update the generated models in [gtfs-realtime.pb.swift](Sources/TransitRealtime/gtfs-realtime.pb.swift), perform the following steps:

1. If needed, install the `protobuf` and `swift-protobuf` command line tools:

       brew install protobuf
       brew install swift-protobuf

2. Retrieve the latest [gtfs-realtime.proto](https://developers.google.com/static/transit/gtfs-realtime/gtfs-realtime.proto) spec from Google:

       curl -o gtfs-realtime.proto https://developers.google.com/static/transit/gtfs-realtime/gtfs-realtime.proto

3. *(Optional)* Add `option swift_prefix="";` to the `gtfs-realtime.proto` file to prevent the generated model names from being prefixed with `TransitRealtime_`:

       sed -i '' -e '/package transit_realtime;/a\'$'\n''option swift_prefix="";' gtfs-realtime.proto

4. Generate new Swift models for the updated proto file:

       protoc --swift_opt=Visibility=Public --swift_out=./Sources/TransitRealtime gtfs-realtime.proto

## Credits

Inspired by [SwiftGtfsSupport](https://github.com/danramteke/SwiftGtfsSupport).

## License

`swift-transit-realtime` is licensed under the MIT License. See the [LICENSE](LICENSE) file for more info.
