import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  static const String id = 'home';
  const HomeScreen({Key? key}):super(key: key);

  @override
  State<HomeScreen> createState()  => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    child:Icon(Icons.camera_alt),
                  ),
                  Tab(

                    child: Text('Chats'),
                  ),
                  Tab(

                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),
                ]
            ) ,
            actions:[
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                icon:const Icon(Icons.more_vert_outlined),
                itemBuilder:(context,)=> const [
                  PopupMenuItem(
                      value: '1',
                      child: Text('New Group')
                  ),
                  PopupMenuItem(
                      value: '2',
                      child:Text('Settings')
                  ),
                  PopupMenuItem(
                      value: '3',
                      child:Text('Logout')
                  )
                ],
              ),
              SizedBox(width: 10,)
            ],
          ),
          body:  TabBarView(
              children: [
                Text('Camera') ,
                ListView.builder(
                    itemCount:3,
                    itemBuilder:(context,index){
                      return   ListTile(
                        leading: CircleAvatar(
                          child: Image.asset('/Users/berachah/StudioProjects/watsapp/asset/image/team.png'),
                        ),
                        title:Text('Team group'),
                        subtitle:Text('are you ready'),
                        trailing:Text('1.23 AM'),
                      );
                    }
                ),

                ListView.builder(
                    itemCount:3,
                    itemBuilder:(context,index){
                      return   ListTile(
                        leading: Container(
                          decoration :BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color:Colors.orange,
                                  width:3
                              )
                          ) ,
                          child: CircleAvatar(
                            child: Image.asset('asset/image/friends.png'),
                          ),
                        ),
                        title:Text('chandu'),
                        subtitle:Text('10 min ago'),

                      );
                    }
                ),

                ListView.builder(
                    itemCount:3,
                    itemBuilder:(context,index) {
                      return   ListTile(
                        leading: CircleAvatar(
                          child: Image.asset('asset/image/bestie.png'),
                        ),
                        title: Text('My friend'),
                        subtitle: Text(index /2 ==0? 'you missed video call' : 'call time is 2.22'),
                        trailing: Icon(index /2== 0 ? Icons.phone : Icons.video_call),
                      );
                    }
                ),
              ]
          ),
        )
    );
  }
}
