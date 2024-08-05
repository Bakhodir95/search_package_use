import 'dart:math';

class SearchPackageOneBase {
  /// Linear Search algorithm.
  /// Searches for the target element in the list.
  /// Returns the index of the target element if found, otherwise returns -1.
  int linearSearch(List<dynamic> list, dynamic target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        return i;
      }
    }
    return -1;
  }

  /// Binary Search algorithm.
  /// Searches for the target element in a sorted list.
  /// Returns the index of the target element if found, otherwise returns -1.
  /// The list must be sorted for Binary Search to work correctly.
  int binarySearch(List<dynamic> list, dynamic target) {
    int left = 0;
    int right = list.length - 1;

    while (left <= right) {
      int mid = left + (right - left) ~/ 2;
      if (list[mid] == target) {
        return mid;
      } else if ((list[mid] as Comparable).compareTo(target) < 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }

  /// Jump Search algorithm.
  /// Searches for the target element in a sorted list.
  /// Returns the index of the target element if found, otherwise returns -1.
  /// The list must be sorted for Jump Search to work correctly.
  int jumpSearch(List<dynamic> list, dynamic target) {
    int n = list.length;
    int step = (sqrt(n))
        .toInt(); // The optimal step size is the square root of the list length.
    int prev = 0;

    // Jump through the list in steps until we find a block where the target could be.
    while (prev < n &&
        (list[min(step, n) - 1] as Comparable).compareTo(target) < 0) {
      prev = step;
      step += (sqrt(n)).toInt();
      if (prev >= n) {
        return -1;
      }
    }

    // Perform a linear search within the identified block.
    for (int i = prev; i < min(step, n); i++) {
      if (list[i] == target) {
        return i;
      }
    }
    return -1;
  }
}
