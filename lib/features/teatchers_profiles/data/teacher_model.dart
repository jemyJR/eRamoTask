class TeacherModel {
  final String name;
  final String subject;
  final double price;
  final String image;
  bool isBooked;
  int bookingOrder;

  TeacherModel({
    required this.name,
    required this.subject,
    required this.price,
    required this.image,
    this.isBooked = false,
    this.bookingOrder = 0,
  });
}
