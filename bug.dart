```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing an element that might not exist
      final String value = jsonData[0]['some_key']; 
      print(value); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Here's where you might not be handling some error types efficiently
  }
}
```