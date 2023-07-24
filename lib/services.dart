class Services{
  String? category;
  String? expense;
  String? tot;

  Services({this.category, this.expense, this.tot});

  void getTotal(){
    String? total= (int.parse(tot!)+int.parse(expense!)).toString();
    tot=total;
  }

}