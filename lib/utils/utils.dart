class Utils {
  static double getScreenOffset(double width) {
    if (width > 1500) {
      return 0.18;
    } else if (width <= 1500 && width > 1100) {
      return 0.10;
    } else if (width <= 1100 && width > 900) {
      return 0.06;
    } else if (width <= 900 && width > 600) {
      return 0.10;
    } else if (width <= 600) {
      return 0.02;
    } else {
      return 0.18;
    }
  }

  static isMobile(double width) {
    return width < 900;
  }
}
