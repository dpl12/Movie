import 'package:flutter/material.dart';
import 'movie/list.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //返回一个底部TabBer控制器，控制Tab页面的切换
    return DefaultTabController(
        length: 3, //3个底部Tab
        child: Scaffold(
            appBar: AppBar(
              title: Text('电影列表'),
              centerTitle: true,
              //标题栏右侧行为按钮
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )
              ],
            ),
            //使用TabBarView，作为TabBar切换时的各个主页面
            body: TabBarView(
              children: <Widget>[
                MovieList(mt: 'in_theaters',),  //mt为传递电影类型参数
                MovieList(mt: 'coming_soon',),
                MovieList(mt: 'top100',),
              ],
            ),
            //实现一个左拉抽屉
            drawer: Drawer(
                child: ListView(
                  //布局使用列表控件
                  padding: EdgeInsets.all(0.0), //去除抽屉顶部的灰色条
                  children: <Widget>[
                    //抽屉上部使用账户信息（头像、邮件、账户名）
                    UserAccountsDrawerHeader(
                      accountName: Text('actor'),
                      accountEmail: Text('2343243212@qq.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'http://upload.taihainet.com/news/UploadFiles_6334/201312/20131226073319201_m.jpg'),
                      ),
                      //对UserAccountDrawerHeader进行美化装饰，这里添加背景图片
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566577522103&di=ed18e0373530ab8242255d91150c22a0&imgtype=0&src=http%3A%2F%2Ff.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fb151f8198618367aa7f3cc7424738bd4b31ce525.jpg'))),
                    ),
                    //再添加几个Item项
                    ListTile(
                        title: Text('用户反馈'),
                        trailing: Icon(Icons.feedback)), //trailing:设置ListTile后边图标
                    ListTile(title: Text('系统设置'), trailing: Icon(Icons.settings)),
                    ListTile(title: Text('我要发布'), trailing: Icon(Icons.send)),
                    Divider(color: Colors.black38),
                    ListTile(title: Text('注销'), trailing: Icon(Icons.exit_to_app)),
                  ],
                )),
            //添加底部TabBer
            bottomNavigationBar: Container(
              //装饰下Container盒子
              decoration: BoxDecoration(color: Colors.black87),
              height: 50.0, //一般手机的tabBer高度为50
              child: TabBar(
                labelStyle: TextStyle(height: 0.0,fontSize: 10.0),//tabBer的文本设置为0，解决文本被隐藏的问题
                tabs: <Widget>[
                  Tab(text: '正在热映', icon: Icon(Icons.movie_filter)),
                  Tab(text: '即将上映', icon: Icon(Icons.movie_creation)),
                  Tab(text: 'top100', icon: Icon(Icons.local_movies))
                ],
              ),
            )));
  }
}
