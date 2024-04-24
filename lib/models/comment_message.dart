class CommentMessage {
  String id;
  String userImage;
  String sendBy;
  String sendAt;
  String message;
  int replyCount;
  int likedCount;
  bool? isLiked;

  CommentMessage({
    required this.id,
    required this.userImage,
    required this.sendBy,
    required this.sendAt,
    required this.message,
    required this.replyCount,
    required this.likedCount,
    required this.isLiked,
  });

  static List<CommentMessage> commentList() {
    return [
      CommentMessage(
        id: "1", 
        userImage: "assets/images/user_image.png", 
        sendBy: "Sukirman Yudoyono", 
        sendAt: "17/04/2023 09:21", 
        message: "Mantaap maju terus amik semoga semakin didepan dan menjadi yang luarbiasa #yangpastipastiaja", 
        replyCount: 5, 
        likedCount: 182,
        isLiked: false
      ),
      CommentMessage(
        id: "2", 
        userImage: "assets/images/user_image.png", 
        sendBy: "Sukirman Yudoyono", 
        sendAt: "17/04/2023 09:21", 
        message: "Mantaap maju terus amik semoga semakin didepan dan menjadi yang luarbiasa #yangpastipastiaja", 
        replyCount: 5, 
        likedCount: 182,
        isLiked: true
      ),
      CommentMessage(
        id: "3", 
        userImage: "assets/images/user_image.png", 
        sendBy: "Sukirman Yudoyono", 
        sendAt: "17/04/2023 09:21", 
        message: "Mantaap maju terus amik semoga semakin didepan dan menjadi yang luarbiasa #yangpastipastiaja", 
        replyCount: 5, 
        likedCount: 182,
        isLiked: false
      ),
      CommentMessage(
        id: "4", 
        userImage: "assets/images/user_image.png", 
        sendBy: "Sukirman Yudoyono", 
        sendAt: "17/04/2023 09:21", 
        message: "Mantaap maju terus amik semoga semakin didepan dan menjadi yang luarbiasa #yangpastipastiaja", 
        replyCount: 5, 
        likedCount: 182,
        isLiked: false
      ),
      CommentMessage(
        id: "5", 
        userImage: "assets/images/user_image.png", 
        sendBy: "Sukirman Yudoyono", 
        sendAt: "17/04/2023 09:21", 
        message: "Mantaap maju terus amik semoga semakin didepan dan menjadi yang luarbiasa #yangpastipastiaja", 
        replyCount: 5, 
        likedCount: 182,
        isLiked: false
      ),
    ];
  }
}