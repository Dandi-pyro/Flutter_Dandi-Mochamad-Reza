class ChartModel{
  final String name;
  final String message;
  final String time;
  final String profileUrl;
  
  ChartModel({required this.name, required this.message, required this.time, required this.profileUrl});
}

final List<ChartModel> items =[
  ChartModel(name: 'Dream', message: 'Come join the Dream SMP', time: 'Jan 16', profileUrl: 'asset/img/Dream.jpg'),
  ChartModel(name: 'George', message: 'Hey you wanna become the 6th Hunter of teh manhunt?', time: 'Feb 12', profileUrl: 'asset/img/george.jpg'),
  ChartModel(name: 'Tom Simon', message: 'Jump in the cadillac', time: '10:25', profileUrl: 'asset/img/Tommy.jpg'),
  ChartModel(name: 'Drista', message: 'Hey can you tell tommy to on?', time: 'Mar 7', profileUrl: 'asset/img/Drista.jpg'),
  ChartModel(name: 'MrBeast', message: 'Hei come join the Extreme Hide and Seek challange for 1.000.000 dollars', time: 'Yesterday', profileUrl: 'asset/img/MrBeast.jpg'),
  ChartModel(name: 'Chris Tyson', message: 'Yo come here the hommies are waiting for you', time: '07:30', profileUrl: 'asset/img/Chris.jpg'),
  ChartModel(name: 'Chandler Hallow', message: 'Hey come here they waiting for you!!', time: '07:30', profileUrl: 'asset/img/Chandler.jpg'),
  ChartModel(name: 'Karl Jacobs', message: 'Come here dude!!', time: '07:30', profileUrl: 'asset/img/Karl.jpg'),
  ChartModel(name: 'Techno', message: 'Hey are you gonna join the MCC?', time: 'Jan 21', profileUrl: 'asset/img/Techno.jpg')
];