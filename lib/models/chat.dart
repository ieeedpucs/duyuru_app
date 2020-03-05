class Chat{
  String name;
  String message;
  String time;
  String avatarUrl;

  Chat({this.name,this.message,this.time,this.avatarUrl});
  

}
List<Chat> fakeData = [
  Chat(name:"Zafer", message:"Merhaba", time:"13:00", avatarUrl:"https://i2.cnnturk.com/i/cnnturk/75/800x400/5de8af0e17aca91ad8ef74ae"),
  Chat(name:"Engin", message:"Merhaba Nasılsın", time:"14:00", avatarUrl:"https://i2.cnnturk.com/i/cnnturk/75/800x400/5de8af0e17aca91ad8ef74ae"),
  Chat(name:"Salih", message:"Selam", time:"15:00", avatarUrl:"https://i2.cnnturk.com/i/cnnturk/75/800x400/5de8af0e17aca91ad8ef74ae"),
];