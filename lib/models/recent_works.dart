class RecentWork {
  final String title;
  final String imagePath;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? appStoreUrl;
  RecentWork({
    required this.title,
    required this.imagePath,
    this.playStoreUrl,
    this.gitHubUrl,
    this.appStoreUrl,
  });

  static final List<RecentWork> works = [
    RecentWork(
        title: "Fashion Models & Rewards Community",
        imagePath: "assets/images/1.png",
        playStoreUrl:
            "https://play.google.com/store/apps/details?id=net.beautypass.beautypass&hl=en_US",
        appStoreUrl:
            "https://apps.apple.com/us/app/beautypass/id1169483314"),
    RecentWork(
      title: "Dr. Galen - Online Doctor App",
      imagePath: "assets/images/2.png",
      playStoreUrl:
            "https://play.google.com/store/apps/details?id=com.drgalen.org.dr_galen",
      appStoreUrl:
            "https://apps.apple.com/in/app/dr-galen-online-doctor-app/id1460801180?platform=iphone"
    ),
    RecentWork(
      title: "Driver - Route Planner & GPS Tracking",
      imagePath: "assets/images/3.png",
      playStoreUrl:
            "https://play.google.com/store/apps/details?id=upper.team.route.planner.navigation.routing.app&hl=en",
      appStoreUrl:
            "https://apps.apple.com/us/app/delivery-driver-app-by-upper/id1613504282?platform=iphone"
    ),
    RecentWork(
      title: "Deal Connect - Real Estate",
      imagePath: "assets/images/4.png",      
      playStoreUrl:
          "https://play.google.com/store/apps/details?id=com.dealbuyer.bit19",
      appStoreUrl:
            "https://apps.apple.com/us/app/deal-connect-real-estate/id1490384727"
    ),
  ];
}
