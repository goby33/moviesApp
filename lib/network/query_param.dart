class QP{
  const QP._();

  ///Here you can have a map of query parameters
  ///for example https://example.com?key=value&key2=value2
  static Map<String, String> apiQP({required String page}) => {
    'api_key': "ff356dd41757a98989fad06eafca6844",
    'page': page
  };
}
