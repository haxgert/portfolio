enum JobType {
  fullTime,
  partTime,
  remote,
}

class Experience {
  final DateTime startDate;
  final DateTime endDate;
  final String company;
  final String position;
  final JobType type;
  final List<String> responsibilities;

  Experience({
    required this.company,
    required this.position,
    required this.responsibilities,
    required this.startDate,
    required this.endDate,
    this.type = JobType.fullTime,
  });

  static final List<Experience> ksExperiences = [
    Experience(
      company: "Infosoft Software Developer, Tirana",
      position: "Sr Mobile App Developer",
      responsibilities: [
        "Developed and maintained cross-platform mobile applications using Flutter, and Flutterflow",
        "Built and optimized production-ready apps with advanced state management using Flow/FlowState and clean architecture principles",
        "Integrated third-party services such as Firebase, Supabase, and Auth0 for authentication, data sync, and push notifications",
        "Delivered high-performance fintech, healthcare, and utility apps with responsive UI/UX Led implementation of offline-first architecture, secure API integrations, and multi-language support (i18n)",
        "Technologies: Flutter, FlutterFlow, Firebase, Supabase, Kotlin, React Native, Auth0, Node.js, GraphQL, i18n",
      ],
      startDate: DateTime(2021, 2),
      endDate: DateTime(2025, 4),
    ),
    Experience(
      company: " iServiceIT AL, Tirana",
      position: "Mobile App Developer",
      responsibilities: [
        "Developed cross-platform mobile applications with React Native and Flutter for various domains, ensuring high performance and user engagement",
        "Created native Android applications using Kotlin, focusing on fitness tracking and e-commerce functionality",
        "Designed and implemented robust APIs using Retrofit and OkHttp for seamless data integration",
        "Tested and debugged applications to optimize performance and enhance user experience",
        "Built custom UI components leveraging MVVM architecture and modern design principles",
        "Technologies: React Native, Flutter, Kotlin, Node.js, Payment integration",
      ],
      startDate: DateTime(2018, 10),
      endDate: DateTime(2020, 12),
    ),
    Experience(
      company: "NMC Soft",
      position: "Associate Software Developer",
      responsibilities: [
        "Assisted in developing and testing Android applications using Java and early Kotlin adoption",
        "Supported senior developers in building UI components and integrating REST APIs for internal projects",
        "Gained hands-on experience with version control (Git) and agile workflows, contributing to daily stand-ups and code reviews",
        " Technologies: Java, Kotlin, Git, REST API",
      ],
      startDate: DateTime(2018, 1),
      endDate: DateTime(2021, 10),
    ),
    // Experience(
    //   company: "Mighty Solutions",
    //   position: "Backend Developer",
    //   responsibilities: [
    //     "Started my journey as backend developer using Php & Laravel",
    //     "Closely collaborated with Mobile App Development team to ensure secure and reliable API development",
    //     "Worked in Fastbooking.com.pk ( A Logistics Management Website built with Laravel )",
    //   ],
    //   startDate: DateTime(2019, 6),
    //   endDate: DateTime(2020, 1),
    // ),
  ];
}
