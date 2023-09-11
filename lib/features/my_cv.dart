class MyCv {
  String fullname;
  String slackname;
  String githubhandle;
  String bio;

  MyCv(
      {required this.fullname,
      required this.slackname,
      required this.githubhandle,
      required this.bio});

  factory MyCv.defaultCv() {
    return MyCv(
        fullname: 'Chukwuezuwom Gideon Moses',
        slackname: 'Chukwuezuwom Gideon Moses',
        githubhandle: 'https://github.com/Mosesgideon',
        bio:"I'm a passionate and highly skilled mobile developer with a strong commitment to crafting robust, user-friendly, and cutting-edge mobile applications. With 4 years of experience in the field, I've honed my skills in mobile app development, specializing in both Android and iOS platforms.I thrive on staying up-to-date with the latest trends and technologies in the mobile development space. My expertise includes proficiency in languages such as Java, and Dart (for Flutter), along with a deep understanding of mobile app architecture, UI/UX design principles, and app testing.Beyond coding, I'm an advocate for best practices in mobile app development, a continuous learner, and a problem solver at heart.\nI'm excited to continue my journey as a mobile developer, creating innovative mobile experiences that make a difference in the world.");
  }
}

// [Your Name]
