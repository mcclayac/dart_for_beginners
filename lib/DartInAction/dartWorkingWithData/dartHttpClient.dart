import 'dart:io';

void main() async {

  // Does not work
  
  var httpClient = HttpClient();
  var url = Uri.parse('http://www.encyclopedia.chicagohistory.org/pages/789.html');

  var request = await httpClient.getUrl(url);

  var response = request.close();
  var responceBody = await response.toString();
  print(responceBody);

  httpClient.close();
}  // end main