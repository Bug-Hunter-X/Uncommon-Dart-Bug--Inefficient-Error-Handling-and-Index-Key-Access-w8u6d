```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Check if jsonData is not empty and the key exists
      if (jsonData.isNotEmpty && jsonData[0].containsKey('some_key')) {
        final String value = jsonData[0]['some_key'];
        print(value);
      } else {
        print('Data not found or key does not exist');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('JSON format error: $e');
  } on SocketException catch (e) {
    print('Network error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```