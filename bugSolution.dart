```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
    } else {
      // Handle specific HTTP error codes
      throw HttpException('HTTP error! Status code: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle network errors
    print('Network error: $e');
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
  } on HttpException catch (e) {
    // Handle HTTP exceptions
    print('HTTP Exception: $e');
  } catch (e) {
    // Handle other exceptions
    print('Unexpected error: $e');
  }
}
```