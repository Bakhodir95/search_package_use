# Search Algorithms Package

This Dart package provides implementations of common search algorithms:

- **Linear Search**
- **Binary Search**
- **Jump Search**

## Features

- **Linear Search**: Sequentially searches through the list and returns the index of the target element if found. If not found, it returns -1.
- **Binary Search**: Efficiently searches in a sorted list by repeatedly dividing the search interval in half. Requires the list to be sorted.
- **Jump Search**: Searches in a sorted list by jumping ahead by a fixed step size and then performing a linear search within the identified block. Requires the list to be sorted.

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  search_algorithms:
    git:
      url: https://github.com/yourusername/search_algorithms.git
