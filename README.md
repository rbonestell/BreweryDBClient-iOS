BreweryDBClient for iOS [![Build Status](https://travis-ci.org/rbonestell/BreweryDBClient-iOS.svg?branch=development)](https://travis-ci.org/rbonestell/BreweryDBClient-iOS) [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/rbonestell/BreweryDBClient-iOS/master/LICENSE)
==================

A small Objective-C client for BreweryDB.com

This is a pretty small implementation of the features available on the BreweryDB.com API, please feel free to contribute!

### Example

```Objective-C
BreweryDBClient *client = [[BreweryDBClient alloc] initWithAPIKey:@"Your BreweryDB.com API Key Here"];
BreweryDBRequest *req = [BreweryDBRequest getRequestLocationsForCity:@"" andState:@"Colorado"];
BreweryDBResponse *resp = [client sendRequest:req];
int coloradoBreweriesFound = resp.locations.count;
```

### Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. [Submit a pull request!](https://github.com/rbonestell/BreweryDBClient-iOS/pull/new/development)
