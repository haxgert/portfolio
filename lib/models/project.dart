class Project {
  final List<String> pngPaths;
  final String name;
  final String description;
  final String languageFramework;
  final String availablePlatforms;
  final String? features;
  final String stateManagement;
  final List<String> links;
  Project({
    required this.pngPaths,
    required this.name,
    required this.description,
    this.languageFramework = "Dart/Flutter",
    this.availablePlatforms = "Android, iOS",
    this.stateManagement = "Bloc",
    this.features,
    this.links = const [],
  }) : assert(pngPaths.isNotEmpty);
}

final List<Project> kProjects = [
  Project(
    pngPaths: [
      for (int i = 1; i < 15; i++)
        "assets/images/project-images/drgalen-${i}.png",
    ],
    name: "DR.GALEN",
    description:
        """Dr. Galen is a cross-platform healthcare app built with Flutter, designed to connect users with medical professionals. It supports appointment booking, health record storage, and real-time consultations via video and chat.""",
    features: "Doctor Search, Appointment Booking, Video Consultations, Medical Records, Notifications",
    stateManagement: "Provider",
    links: [
      "https://apps.apple.com/in/app/dr-galen/id1460801180?platform=iphone",
      "https://play.google.com/store/apps/details?id=com.drgalen.org.dr_galen",
    ],
  ),
  Project(
    pngPaths: [
      for (int i = 1; i < 17; i++)
        "assets/images/project-images/syncwell-${i}.png",
    ],
    name: "SyncWell",
    description:
        """Syncwell is a health tracking application built on top of Apple's Health Kit (for iOS) and Google Fit (for Android). It tracks user's health by periodically fetching and syncing data from Health Kit or Google fit. It offers personalized suggestions for users based on their health and data. The suggestions are generated using ChatGPT 4o Model.""",
    features: "Health_Kit & Google Fit Integration, ChatGPT, Notifications",
    links: [
      "https://apps.apple.com/us/app/syncwell/id6636551991",
      "https://play.google.com/store/apps/details?id=com.app.syncwell",
    ],
  ),
  Project(
    pngPaths: [
      for (int i = 1; i < 15; i++)
        "assets/images/project-images/deal-connect-${i}.png",
    ],
    name: "DEAL CONNECT",
    description:
        """Deal Connect is a real estate networking app that helps investors, agents, and wholesalers discover and close property deals faster. It enables users to list, share, and connect over off-market opportunities, with real-time messaging and lead tracking.""",
    languageFramework: "Swift (iOS), Kotlin (Android)",
    features: "Property Listings, Deal Sharing, Chat/Messaging, Lead Management, Push Notifications",
    stateManagement: "Native MVVM / ViewModel pattern",
    links: [
      "https://apps.apple.com/us/app/deal-connect-real-estate/id1490384727",
      "https://play.google.com/store/apps/details?id=com.dealbuyer.bit19",
    ],
  ),
  Project(
    pngPaths: [
      for (int i = 1; i < 13; i++)
        "assets/images/project-images/intuitiv-eating-${i}.jpg",
    ],
    name: "Intuitive Eating Buddy & Diary",
    description:
        """Intuitive Eating Buddy & Diary is a mindful eating companion app that helps users improve their relationship with food. It encourages journaling around hunger, emotions, and habits—without focusing on calories or weight loss. The app fosters healthy, intuitive eating patterns through self-reflection and psychological cues.""",
    languageFramework: "Kotlin (Android)",
    availablePlatforms: "Android",
    features: "Food & emotion journal, Guided reflection prompts, Mood tracking, Habit insights, Intuitive eating principles, Daily reminders & gentle nudges, Secure offline-first experience",
    stateManagement: "ViewModel + LiveData",
    links: [
      "https://play.google.com/store/apps/details?id=ro.sagital.areyouhungry",
    ],
  ),
  Project(
    pngPaths: [
      for (int i = 1; i < 13; i++)
        "assets/images/project-images/JammNation-${i}.jpg",
    ],
    name: "JammNation Music Hub",
    description:
        """JammNation is a fan engagement platform that empowers users to connect directly with their favorite musicians. With live artist feeds, direct messaging, exclusive video drops, and event updates, it delivers a seamless, mobile-first fan experience.""",
    languageFramework: "FlutterFlow, Supabase, FCM",
    features: "Follow favorite artists, Real-time updates, Artist-curated posts & videos, Push notifications, Secure account creation & user onboarding",
    stateManagement: "Built-in State Management",
    links: [
      "https://apps.apple.com/us/app/jammnation/id6473900403",
      "https://play.google.com/store/apps/details?id=com.jammnation.fan&hl=en_US",
    ],
  ),
  Project(
      pngPaths: [
        for (int i = 1; i <= 15; i++)
          "assets/images/project-images/ic-${i}.png",
      ],
      links: [
        "https://apps.apple.com/tm/app/image-converter-jpg-png-heic/id6476975237?platform=iphone",
        "https://play.google.com/store/apps/details?id=com.emt.image.pdf.jpg.converter",
      ],
      name: "Image Converter: JPG / PNG",
      description:
          'Image Converter: JPG / PNG is an image utility application. It allows users to seamlessly convert images from on format to other, resize them, crop them or even convert multiple images into a single PDF file (encrypted or non-encrypted).'
  ),
  Project(
    pngPaths: [
      for (int i = 1; i < 14; i++)
        "assets/images/project-images/upper-${i}.png",
    ],
    name: "Driver - Router & GPS Tracking",
    description:
        """This is a route planning and delivery management app built with Flutter. Designed for delivery teams and solo drivers, it helps plan optimized delivery routes, manage stops, and streamline navigation to save time and boost productivity.""",
    features: "Route Optimization, Multi-Stop Planning, Live Navigation, Delivery Notes, Proof of Delivery",
    links: [
      "https://apps.apple.com/us/app/delivery-driver-app-by-upper/id1613504282?platform=iphone",
      "https://play.google.com/store/apps/details?id=upper.team.route.planner.navigation.routing.app&hl=en",
    ],
  ),
  Project(
    pngPaths: [
      for (int i = 1; i <= 8; i++) "assets/images/project-images/pl-${i}.png",
    ],
    name: "AI Rizz - Pickup Lines",
    description:
        """AI Rizz Pickup Lines is a pickup lines generator app that generates unique and creative pickup lines based on a screenshot provide, mode selected or a certain reply from your crush!""",
    features: "Open AI - GPT4 Integration, In-App-Purchases",
    availablePlatforms: "iOS",
    links: [
      "https://apps.apple.com/us/app/ai-rizz-pickup-lines/id6676414262",
    ],
  ),
  Project(
    pngPaths: [
      for (int i = 1; i <= 19; i++)
        "assets/images/project-images/urkido-${i}.png",
    ],
    name: "Urkido",
    description:
        """URKIDO is a school bus tracking application. Parents can track their child's school bus and the app notifies the parents when the bus is withing a certain region of the house of school. Parents can assign each child a bus and manage it through the application.""",
    features: "Realtime Bus Tracking, Notifications",
  ),
  Project(
    pngPaths: [
      "assets/images/project-images/speed-test-1.png",
      "assets/images/project-images/speed-test-2.png",
      "assets/images/project-images/speed-test-3.png",
      "assets/images/project-images/speed-test-4.png",
      "assets/images/project-images/speed-test-5.png",
      "assets/images/project-images/speed-test-6.png",
      "assets/images/project-images/speed-test-7.png",
      "assets/images/project-images/speed-test-8.png",
    ],
    links: [
      "https://apps.apple.com/tm/app/wifi-analyzer-wifi-finder/id6479249755",
      "https://play.google.com/store/apps/details?id=com.easymt.wifianalyzer.networkanalyzer.qrcode.internetspeed",
    ],
    name: "Internet Speed Test",
    description:
        """"Internet speed test is a utility application that can be used to measure the speed of the internet at any point. It stored a history of each test so users can compare their internet speed whenever they want. It also also many other useful small utilities like 'Who is using my WIFI', 'Wifi router settings' and a database with default passwords of routes.""",
    features: "Multiple Servers, AdMob, Revenue Cat",
  ),
  Project(
    pngPaths: [
      for (int i = 1; i <= 10; i++)
        "assets/images/project-images/battery-alarm-${i}.png",
    ],
    links: [
      "https://play.google.com/store/apps/details?id=com.emt.lowbatteryalarm.chargealarm"
    ],
    name: "Low Battery Alarm",
    stateManagement: "getX",
    availablePlatforms: "Android",
    description:
        """Battery alarm is also a utility based application with many useful features like displaying realtime device information, charging/discharging status while also be able to set alarm whenever battery reaches a certain point. User's can also review their charing history which is stored by default in the app.""",
    features: "AdMob, Revenue Cat Integration",
  ),
];
