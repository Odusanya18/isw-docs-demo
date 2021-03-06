
<h1 id="visa-docs"> Visa Transactions </h1>



## Visa Auth Page (load Page for iPin)

<a id="opIdPOST_V3DSStart"></a>

> Code samples

```objective_c

#import <Foundation/Foundation.h>  
  
NSDictionary *headers = @{ @"accept": @"application/x-www-form-urlencoded",  
                           @"content-type": @"SOME_STRING_VALUE" };  
  
NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/V3DSStart?osb=visa-3&VAA=B"]  
                                                       cachePolicy:NSURLRequestUseProtocolCachePolicy  
                                                   timeoutInterval:10.0];  
[request setHTTPMethod:@"POST"];  
[request setAllHTTPHeaderFields:headers];  
  
NSURLSession *session = [NSURLSession sharedSession];  
NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request  
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {  
                                                if (error) {  
                                                    NSLog(@"%@", error);  
                                                } else {  
                                                    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;  
                                                    NSLog(@"%@", httpResponse);  
                                                }  
                                            }];  
[dataTask resume];

```

```c 
import Foundation  
  
let headers = [  
  "accept": "application/x-www-form-urlencoded",  
  "content-type": "SOME_STRING_VALUE"  
]  
  
var request = NSMutableURLRequest(URL: NSURL(string: "/V3DSStart?osb=visa-3&VAA=B")!,  
                                        cachePolicy: .UseProtocolCachePolicy,  
                                    timeoutInterval: 10.0)  
request.HTTPMethod = "POST"  
request.allHTTPHeaderFields = headers  
  
let session = NSURLSession.sharedSession()  
let dataTask = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in  
  if (error != nil) {  
    println(error)  
  } else {  
    let httpResponse = response as? NSHTTPURLResponse  
    println(httpResponse)  
  }  
})  
  
dataTask.resume()
```

```csharp
var client = new RestClient("/V3DSStart?osb=visa-3&VAA=B");  
var request = new RestRequest(Method.POST);  
request.AddHeader("content-type", "SOME_STRING_VALUE");  
request.AddHeader("accept", "application/x-www-form-urlencoded");  
IRestResponse response = client.Execute(request);

```

```php
<?php  
  
$curl = curl_init();  
  
curl_setopt_array($curl, array(  
  CURLOPT_URL => "/V3DSStart?osb=visa-3&VAA=B",  
  CURLOPT_RETURNTRANSFER => true,  
  CURLOPT_ENCODING => "",  
  CURLOPT_MAXREDIRS => 10,  
  CURLOPT_TIMEOUT => 30,  
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,  
  CURLOPT_CUSTOMREQUEST => "POST",  
  CURLOPT_HTTPHEADER => array(  
    "accept: application/x-www-form-urlencoded",  
    "content-type: SOME_STRING_VALUE"  
  ),  
));  
  
$response = curl_exec($curl);  
$err = curl_error($curl);  
  
curl_close($curl);  
  
if ($err) {  
  echo "cURL Error #:" . $err;  
} else {  
  echo $response;  
}

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/x-www-form-urlencoded"},
        "Accept": []string{"*/*"},
        "Content-Type": []string{" application/x-www-form-urlencoded"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/V3DSStart", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("/V3DSStart");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```javascript
var headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'*/*',
  'Content-Type':' application/x-www-form-urlencoded'

};

$.ajax({
  url: '/V3DSStart',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': '*/*',
  'Content-Type': ' application/x-www-form-urlencoded'
}

r = requests.post('/V3DSStart', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/x-www-form-urlencoded',
  'Accept' => '*/*',
  'Content-Type' => ' application/x-www-form-urlencoded'
}

result = RestClient.post '/V3DSStart',
  params: {
  }, headers: headers

p JSON.parse(result)

```

`POST /V3DSStart`

*VISA Auth Page (Load Page for iPIN)*

The endpoint for this is ***https://testcustomer34.cardinalcommerce.com/***

> Body parameter

```yaml
TermUrl: <<TermUrl>>
PaReq: <<PaReq>>
MD: <<MD>>

```

<h3 id="post_v3dsstart-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Content-Type|header|string|true|application/x-www-form-urlencoded|


<h3 id="post_v3dsstart-query">Query Parameters</h3>

> Docs on what queries are

```
Query parameters are attached to the url in the form of a typical GET query parameter.

For Sample, using the Sample on the left, we have:

endpoint?osb=<<OSB>>&VAA=<<VAA>>

```

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|osb|query|string|true|none|
|VAA|query|string|true|none|

<h3 id="get_api-v3-purchases-responses">Request Body</h3>
 

|Parameter|In|Type|Description| 
|---|---|---|---|
|TermUrl|body|string|true|none|
|PaReq|body|string|true|none|
|MD|body|string|true|none|

> Sample responses

> default Response

<h3 id="post_v3dsstart-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Default response|Inline|

<h3 id="post_v3dsstart-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>


## Collections Cardinal Callback

<a id="opIdPOST_collections-api-v1-pay-cardinalCallBack"></a>

> Code samples

```php
<?php  
  
$curl = curl_init();  
  
curl_setopt_array($curl, array(  
  CURLOPT_URL => "/collections/api/v1/pay/cardinalCallBack",  
  CURLOPT_RETURNTRANSFER => true,  
  CURLOPT_ENCODING => "",  
  CURLOPT_MAXREDIRS => 10,  
  CURLOPT_TIMEOUT => 30,  
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,  
  CURLOPT_CUSTOMREQUEST => "POST",  
  CURLOPT_HTTPHEADER => array(  
    "accept: application/x-www-form-urlencoded",  
    "accept-encoding: SOME_STRING_VALUE",  
    "accept-language: SOME_STRING_VALUE",  
    "content-length: SOME_STRING_VALUE",  
    "content-type: SOME_STRING_VALUE",  
    "user-agent: SOME_STRING_VALUE"  
  ),  
));  
  
$response = curl_exec($curl);  
$err = curl_error($curl);  
  
curl_close($curl);  
  
if ($err) {  
  echo "cURL Error #:" . $err;  
} else {  
  echo $response;  
}
```

```objective_c
#import <Foundation/Foundation.h>  
  
NSDictionary *headers = @{ @"accept": @"application/x-www-form-urlencoded",  
                           @"accept-encoding": @"SOME_STRING_VALUE",  
                           @"accept-language": @"SOME_STRING_VALUE",  
                           @"content-length": @"SOME_STRING_VALUE",  
                           @"content-type": @"SOME_STRING_VALUE",  
                           @"user-agent": @"SOME_STRING_VALUE" };  
  
NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"/collections/api/v1/pay/cardinalCallBack"]  
                                                       cachePolicy:NSURLRequestUseProtocolCachePolicy  
                                                   timeoutInterval:10.0];  
[request setHTTPMethod:@"POST"];  
[request setAllHTTPHeaderFields:headers];  
  
NSURLSession *session = [NSURLSession sharedSession];  
NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request  
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {  
                                                if (error) {  
                                                    NSLog(@"%@", error);  
                                                } else {  
                                                    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;  
                                                    NSLog(@"%@", httpResponse);  
                                                }  
                                            }];  
[dataTask resume];

```


```c
import Foundation  
  
let headers = [  
  "accept": "application/x-www-form-urlencoded",  
  "accept-encoding": "SOME_STRING_VALUE",  
  "accept-language": "SOME_STRING_VALUE",  
  "content-length": "SOME_STRING_VALUE",  
  "content-type": "SOME_STRING_VALUE",  
  "user-agent": "SOME_STRING_VALUE"  
]  
  
var request = NSMutableURLRequest(URL: NSURL(string: "/collections/api/v1/pay/cardinalCallBack")!,  
                                        cachePolicy: .UseProtocolCachePolicy,  
                                    timeoutInterval: 10.0)  
request.HTTPMethod = "POST"  
request.allHTTPHeaderFields = headers  
  
let session = NSURLSession.sharedSession()  
let dataTask = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in  
  if (error != nil) {  
    println(error)  
  } else {  
    let httpResponse = response as? NSHTTPURLResponse  
    println(httpResponse)  
  }  
})  
  
dataTask.resume()

```

```csharp
var client = new RestClient("/collections/api/v1/pay/cardinalCallBack");  
var request = new RestRequest(Method.POST);  
request.AddHeader("user-agent", "SOME_STRING_VALUE");  
request.AddHeader("content-type", "SOME_STRING_VALUE");  
request.AddHeader("content-length", "SOME_STRING_VALUE");  
request.AddHeader("accept-language", "SOME_STRING_VALUE");  
request.AddHeader("accept-encoding", "SOME_STRING_VALUE");  
request.AddHeader("accept", "application/x-www-form-urlencoded");  
IRestResponse response = client.Execute(request);
```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/x-www-form-urlencoded"},
        "Accept": []string{"*/*"},
        "Accept": []string{" text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8"},
        "Accept-Encoding": []string{" gzip, deflate, br"},
        "Accept-Language": []string{" fr-FR,fr;q=0.9,en-GB;q=0.8,en;q=0.7,fr-CA;q=0.6,en-US;q=0.5"},
        "Content-Length": []string{" 4170"},
        "Content-Type": []string{" application/x-www-form-urlencoded"},
        "User-Agent": []string{" Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/collections/api/v1/pay/cardinalCallBack", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```java
URL obj = new URL("/collections/api/v1/pay/cardinalCallBack");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```javascript
var headers = {
  'Content-Type':'application/x-www-form-urlencoded',
  'Accept':'*/*',
  'Accept':' text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
  'Accept-Encoding':' gzip, deflate, br',
  'Accept-Language':' fr-FR,fr;q=0.9,en-GB;q=0.8,en;q=0.7,fr-CA;q=0.6,en-US;q=0.5',
  'Content-Length':' 4170',
  'Content-Type':' application/x-www-form-urlencoded',
  'User-Agent':' Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36'

};

$.ajax({
  url: '/collections/api/v1/pay/cardinalCallBack',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```python
import requests
headers = {
  'Content-Type': 'application/x-www-form-urlencoded',
  'Accept': '*/*',
  'Accept': ' text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
  'Accept-Encoding': ' gzip, deflate, br',
  'Accept-Language': ' fr-FR,fr;q=0.9,en-GB;q=0.8,en;q=0.7,fr-CA;q=0.6,en-US;q=0.5',
  'Content-Length': ' 4170',
  'Content-Type': ' application/x-www-form-urlencoded',
  'User-Agent': ' Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36'
}

r = requests.post('/collections/api/v1/pay/cardinalCallBack', params={

}, headers = headers)

print r.json()

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/x-www-form-urlencoded',
  'Accept' => '*/*',
  'Accept' => ' text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
  'Accept-Encoding' => ' gzip, deflate, br',
  'Accept-Language' => ' fr-FR,fr;q=0.9,en-GB;q=0.8,en;q=0.7,fr-CA;q=0.6,en-US;q=0.5',
  'Content-Length' => ' 4170',
  'Content-Type' => ' application/x-www-form-urlencoded',
  'User-Agent' => ' Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36'
}

result = RestClient.post '/collections/api/v1/pay/cardinalCallBack',
  params: {
  }, headers: headers

p JSON.parse(result)

```

`POST /collections/api/v1/pay/cardinalCallBack`

*VISA -> ISW CallBack*

null

> Body parameter

```yaml
MD: '240412'
PaRes: >-
  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

```

<h3 id="post_collections-api-v1-pay-cardinalcallback-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Accept|header|string|true|none|
|Accept-Encoding|header|string|true|none|
|Accept-Language|header|string|true|none|
|Content-Length|header|string|true|none|
|Content-Type|header|string|true|application/json|
|User-Agent|header|string|true|none|

<h3 id="get_api-v3-purchases-responses">Request Body</h3>
  

|Parameter|In|Type|Description| 
|---|---|---|---|
|MD|body|string|true|none|
|PaRes|body|string|true|none|

> Sample responses

> default Response

<h3 id="post_collections-api-v1-pay-cardinalcallback-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|default|Default|Default response|Inline|

<h3 id="post_collections-api-v1-pay-cardinalcallback-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>


