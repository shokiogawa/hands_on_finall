class CategoryListData {
  final int categoryId;
  final String nameEn;
  final String nameJp;

  CategoryListData({this.categoryId, this.nameEn, this.nameJp});
}

final List<CategoryListData> categories = [
  CategoryListData(categoryId: 0, nameEn: "general", nameJp: "総合"),
  CategoryListData(categoryId: 1, nameEn: "business", nameJp: "ビジネス"),
  CategoryListData(categoryId: 2, nameEn: "technology", nameJp: "テクノロジー"),
  CategoryListData(categoryId: 3, nameEn: "science", nameJp: "科学"),
  CategoryListData(categoryId: 4, nameEn: "health", nameJp: "健康"),
  CategoryListData(categoryId: 5, nameEn: "sports", nameJp: "スポーツ"),
  CategoryListData(categoryId: 6, nameEn: "entertainment", nameJp: "エンタメ"),
];