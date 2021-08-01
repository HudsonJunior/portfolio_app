class Constraints {
  static final mobileBreakPoint = 650;
  static final tabletBreakPoint = 1100;
  static isMobile(double width) => width <= mobileBreakPoint;
  static isTablet(double width) =>
      width > mobileBreakPoint && width <= tabletBreakPoint;
  static isWeb(double width) => width > tabletBreakPoint;
}
