class ArticleInfo {

  int id=0;
  String articleContent ="";
  String title = "";
  String description= "";
  String img = "";
  ArticleInfo(
      String img, int id, String articleContent,
      String title, String description,
      String createdAt, String author
      ) {
    this.id = id;
    this.articleContent = articleContent;
    this.description = description;
    this.title = title;
    this.img = img;
  }

  ArticleInfo.fromJson(Map json)
        :id= json["id"],
        articleContent = json['artical_content'],
        description = json['description'],
      title = json['title'],
    img = json["img"];
}