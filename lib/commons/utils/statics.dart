class Statics{
  static var baseUrl ="https://www.reddit.com";

  static var contents= "/r/flutterdev/top.json?count=20";

 String getRequestUrl(url){
    return baseUrl + contents;
  }
}