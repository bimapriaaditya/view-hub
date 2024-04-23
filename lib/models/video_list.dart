class VideoList {
  String thumbnailUrl;
  String title;
  String duration;
  int viewed;
  int liked;
  String channelThumbnail;
  String channelName;

  VideoList({
    required this.thumbnailUrl,
    required this.title,
    required this.duration,
    required this.viewed,
    required this.liked,
    required this.channelThumbnail,
    required this.channelName,
  });

  static List<VideoList> videoList() {
    return [
      VideoList(
        thumbnailUrl: "assets/images/landscape_image.png", 
        title: "Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab", 
        duration: "10:11", 
        viewed: 350, 
        liked: 54, 
        channelThumbnail: "assets/images/user_image.png", 
        channelName: "Humas Amik Bdg"
      ),
      VideoList(
        thumbnailUrl: "assets/images/landscape_image.png", 
        title: "Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab", 
        duration: "10:11", 
        viewed: 350, 
        liked: 54, 
        channelThumbnail: "assets/images/user_image.png", 
        channelName: "Humas Amik Bdg"
      ),
      VideoList(
        thumbnailUrl: "assets/images/landscape_image.png", 
        title: "Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab", 
        duration: "10:11", 
        viewed: 350, 
        liked: 54, 
        channelThumbnail: "assets/images/user_image.png", 
        channelName: "Humas Amik Bdg"
      ),
      VideoList(
        thumbnailUrl: "assets/images/landscape_image.png", 
        title: "Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab", 
        duration: "10:11", 
        viewed: 350, 
        liked: 54, 
        channelThumbnail: "assets/images/user_image.png", 
        channelName: "Humas Amik Bdg"
      ),
      VideoList(
        thumbnailUrl: "assets/images/landscape_image.png", 
        title: "Acara Makrab Mahasiswa STMIK AMIK Angkatan 2022 terjalin meriah dan sangat akrab", 
        duration: "10:11", 
        viewed: 350, 
        liked: 54, 
        channelThumbnail: "assets/images/user_image.png", 
        channelName: "Humas Amik Bdg"
      )
    ];
  }
}