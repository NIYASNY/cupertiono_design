import 'package:flutter/cupertino.dart';

class Mysecond extends StatelessWidget {
  const Mysecond({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView( 
        
        slivers: <Widget>[
         const CupertinoSliverNavigationBar(
            leading: Icon(CupertinoIcons.person_2),
            largeTitle: Text('Contacts'),
            trailing: Icon(CupertinoIcons.add_circled),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               const Text(
                  'SECOND.....',
                  textAlign: TextAlign.center,
                ),
                CupertinoButton.filled(
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(
                      builder: (BuildContext Context) {
                        return MyWidget();
                      },
                    ));
                  },
                  child: const Text("GO TO NEXT PAGE"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.systemGreen,
            border: Border(
              bottom: BorderSide(
                color: brightness == Brightness.light
                ? CupertinoColors.black
                : CupertinoColors.white,
              ),
            ),
            middle: const Text('Contacts'),
            largeTitle: const Text('Family'),
          ),
          const SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Drag me up',textAlign: TextAlign.center,),
                Text('The last one',textAlign: TextAlign.center,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
