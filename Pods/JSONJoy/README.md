JSONJoy
=======

JSONJoy is a joyful little library for iOS and Mac OSX that makes converting and mapping JSON to your objects simple. 

You can read more about it here: [http://vluxe.io/json-parsing.html](http://vluxe.io/json-parsing.html)

# Example #
So here is an JSON blob we want to parse:
```javascript
{
	"id" : 1
	"first_name": "John",
	"last_name": "Smith",
	"age": 25,
	"address": {
		"id": 1
		"street_address": "21 2nd Street",
	    "city": "New York",
	    "state": "NY",
	    "postal_code": 10021
	 }
	
}
```
And Here is our NSObjects we want to convert it to:

```objective-c

#import "Address.h"

@interface User : NSObject

@property(nonatomic,strong)NSNumber *objID;
@property(nonatomic,copy)NSString *firstName;
@property(nonatomic,copy)NSString *lastName;
@property(nonatomic,strong)NSNumber *age;
@property(nonatomic,strong)Address *address;

@end

@interface Address : NSObject

@property(nonatomic,strong)NSNumber *objID;
@property(nonatomic,copy)NSString *streetAddress;
@property(nonatomic,copy)NSString *city;
@property(nonatomic,copy)NSString *state;
@property(nonatomic,strong)NSNumber *postalCode;

@end
```
Take a bunch of error prone boilerplate code like this:
```objective-c
	AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
	[manager GET:@"http://example.com/resources.json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) 
	{
		NSDictionary* response = responseObject;
        User *john = [[User alloc] init];
        john.objID = response[@"id"];
        john.firstName = response[@"first_name"];
        john.lastName = response[@"last_name"];
        john.age = response[@"age"];
		//now for the address
		john.address = [[Address alloc] init];
        NSDictionary* address = response[@"address"];
        john.address.objID = address[@"id"];
        john.address.streetAddress = address[@"street_address"];
        john.address.city = address[@"city"];
        john.address.state = address[@"state"];
        john.address.postalCode = address[@"postal_code"];
		//finally!, now do work with object
	} failure:^(AFHTTPRequestOperation *operation, NSError *error) {
	    NSLog(@"Error: %@", error);
	}];
```
and Joyify it into this:
```objective-c
AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
[manager GET:@"http://example.com/resources.json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) 
{
	NSError *error = nil;
	JSONJoy *joy = [JSONJoy JSONJoyWithClass:[User class]];
    User *john = [joy process:responseObject error:&error];
	//do work with object
} failure:^(AFHTTPRequestOperation *operation, NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

There is even a category on NSObject to make you be able to do a one liner like this:

```objective-c
AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
[manager GET:@"http://example.com/resources.json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) 
{
	User *john = [User objectWithJoy:responseObject];
	//do work with object
} failure:^(AFHTTPRequestOperation *operation, NSError *error) {
    NSLog(@"Error: %@", error);
}];
```
Need to add some customize parsing? No Problem, just implement this method like the example below:

```objective-c
+(JSONJoy*)jsonMapper
{
    JSONJoy* mapper = [[JSONJoy alloc] initWithClass:[self class]];
    [mapper addArrayClassMap:@"photos" class:[Photo class]];
    return mapper;
}
```
All category methods call this method as well, so your objects get parsed properly.

# Usage #

JSONJoy works by mapping property names to JSON value names. It also supports standard rails snake case JSON names being convert to standard camel case objective-c property names. For example: 

```objective-c
@property(nonatomic,copy)NSString *firstName;
```
supports JSON values in the format of:

```javascript
"first_name": "John"
"firstName": "John"
```
# Install #

The recommended approach for installing JSONJoy is via the CocoaPods package manager, as it provides flexible dependency management and dead simple installation.

via CocoaPods

Install CocoaPods if not already available:

	$ [sudo] gem install cocoapods
	$ pod setup
Change to the directory of your Xcode project, and Create and Edit your Podfile and add JSONJoy:

	$ cd /path/to/MyProject
	$ touch Podfile
	$ edit Podfile
	platform :ios, '5.0' 
	# Or platform :osx, '10.8'
	pod 'JSONJoy'

Install into your project:

	$ pod install
	
Open your project in Xcode from the .xcworkspace file (not the usual project file)

Via git
just add JSONJoy as a git submodule

# Requirements #

JSONJoy requires at least iOS 5/Mac OSX 10.8 or above.

# License #

JSONJoy is license under the Apache License.

# Contact #

### Dalton Cherry ###
* https://github.com/daltoniam
* http://twitter.com/daltoniam

