enum ItemTypes {
  DEFAULT,
}

enum ApiUrls {
  REGISTER,
  LOGIN;


  static final String baseUrl = 'http://172.24.80.146:8080';

  static final Map<ApiUrls, String> _urls = {
    ApiUrls.REGISTER: '/auth/register',
    ApiUrls.LOGIN: '/auth/login',

  };

  static String getUrl(ApiUrls url, {ItemTypes itemType = ItemTypes.DEFAULT, int id = 0}) {
    if (itemType != ItemTypes.DEFAULT && id != 0)
      return '$baseUrl/images/$itemType/$id/${_urls[url]}';
    else if (id != 0)
      return '$baseUrl/$id/${_urls[url]}';
    else
      return '$baseUrl${_urls[url]}';
  }
}