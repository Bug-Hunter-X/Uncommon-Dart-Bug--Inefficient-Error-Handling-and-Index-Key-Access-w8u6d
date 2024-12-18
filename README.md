# Uncommon Dart Bug: IndexOutOfRange and Inefficient Error Handling

This repository demonstrates a common but easily overlooked error in Dart: accessing list indices or map keys without proper checks, potentially leading to `RangeError` or `NoSuchMethodError`. Additionally, the example showcases inefficient error handling, where various exception types might not be handled appropriately.

## The Bug

The `bug.dart` file contains code that fetches data from an API. It fails to adequately handle cases where:

1. The API response might not contain data at the expected index.
2. The API returns an error status code.
3. Other unexpected exceptions may occur during the network request.

## The Solution

The `bugSolution.dart` file provides a corrected version with more robust error handling and checks before accessing list elements or map keys.

## How to Run

1. Clone the repository.
2. Ensure you have the `http` package installed (`pub add http`).
3. Run the `bug.dart` and `bugSolution.dart` files to observe the differences.