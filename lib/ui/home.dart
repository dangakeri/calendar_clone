import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Badge(
              badgeContent: Text('S'),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          );
        }),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.aspect_ratio,
                color: Colors.black,
              )),
        ],
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        child: ListView(children: [
          // DrawerHeader(
          Row(
            children: [
              Spacer(),
              Badge(
                badgeContent: Text('N'),
                child: Icon(Icons.settings),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          // ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.date_range),
            title: Text('Year'),
          ),
          const ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Month'),
          ),
          const ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Week'),
          ),
          const ListTile(
            leading: Icon(Icons.today),
            title: Text('Day'),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Reminder'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.phone_android),
            title: const Text('My phone'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down_outlined),
            ),
          ),
          ListTile(
            leading: const Icon(Zocial.google),
            title: const Text('Google'),
            subtitle: const Text('dangakeri254@gmail.com'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down_outlined),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.grid_view_outlined),
            title: const Text('App events'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down),
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.delete),
            title: Text('Recycle bin'),
          ),
          const ListTile(
            leading: Icon(Icons.sync),
            title: Text('Sync now'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Manage calendars',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          )
        ]),
      ),
      body: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),

// Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 20.0),
//             ElevatedButton(
//               child: Text('Basics'),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => TableBasicsExample()),
//               ),
//             ),
//             const SizedBox(height: 12.0),
//             ElevatedButton(
//               child: Text('Range Selection'),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => TableRangeExample()),
//               ),
//             ),
//             const SizedBox(height: 12.0),
//             ElevatedButton(
//               child: Text('Events'),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => TableEventsExample()),
//               ),
//             ),
//             const SizedBox(height: 12.0),
//             ElevatedButton(
//               child: Text('Multiple Selection'),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => TableMultiExample()),
//               ),
//             ),
//             const SizedBox(height: 12.0),
//             ElevatedButton(
//               child: Text('Complex'),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => TableComplexExample()),
//               ),
//             ),
//             const SizedBox(height: 20.0),

//         ]),
// )
      ),
    );
  }
}
