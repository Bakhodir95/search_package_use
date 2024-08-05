import 'dart:math';

class SearchPackageOneBase {
  int linearSearch(List<Object> list, Object target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        return i;
      }
    }
    return -1;
  }

  int binarySearch(List<Object> list, Object target) {
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

  int jumpSearch(List<Object> list, Object target) {
    int n = list.length;
    int step = (sqrt(n)).toInt();
    int prev = 0;

    while (prev < n &&
        (list[min(step, n) - 1] as Comparable).compareTo(target) < 0) {
      prev = step;
      step += (sqrt(n)).toInt();
      if (prev >= n) {
        return -1;
      }
    }

    for (int i = prev; i < min(step, n); i++) {
      if (list[i] == target) {
        return i;
      }
    }
    return -1;
  }
}
