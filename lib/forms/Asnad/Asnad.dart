import 'package:finance/module/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../classes/class.dart';
import '../../module/Widgets.dart';

bool filter = false;
int _sort = 0;
List<Sanad> _asnad = [
  Sanad(id: 1, date: '1399/01/01', bed: 48812, bes: 0, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: false, pin: true),
  Sanad(id: 2, date: '1399/01/02', bed: 29361, bes: 29361, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: true, pin: false),
  Sanad(id: 3, date: '1399/01/03', bed: 488, bes: 2323, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: false, pin: false),
  Sanad(id: 4, date: '1399/01/04', bed: 0, bes: 232323, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: false, pin: false),
  Sanad(id: 5, date: '1399/01/05', bed: 48812, bes: 48812, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: false, pin: false),
  Sanad(id: 6, date: '1399/01/06', bed: 0, bes: 0, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: false, pin: true),
  Sanad(id: 7, date: '1399/01/07', bed: 292929, bes: 292928, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: false, pin: false),
  Sanad(id: 8, date: '1399/01/08', bed: 48812, bes: 48812, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: true, pin: true),
  Sanad(id: 9, date: '1399/01/09', bed: 0, bes: 0, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: false, pin: false),
  Sanad(id: 10, date: '1399/01/10', bed: 37894352134, bes: 37894352134, lastedit: '1399/01/01 - 13:34', note: 'سند حواله فروش', reg: false, pin: false),
];

class Asnad extends StatefulWidget {
  const Asnad({Key key, @required this.user}) : super(key: key);

  final User user;

  @override
  _AsnadState createState() => _AsnadState();
}

class _AsnadState extends State<Asnad> {
  changeSort(int i){
    setState(() {
      if (_sort == i)
        _sort = i+1;
      else
        _sort = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormHeader(
              title: 'اسناد حسابداری', 
              btnRight: MyIconButton(type: ButtonType.other, icon: Icon(CupertinoIcons.eyeglasses), hint: 'فیلتر اسناد', onPressed:()=> setState((){filter = !filter;})),
              btnLeft: MyIconButton(type: ButtonType.none),
            ),
            filter  
              ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Wrap(
                  children: [
                    Card(color: Colors.yellow.withOpacity(0.35), child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد ثبت نشده'), SizedBox(width: 10.0,)])),
                    Card(color: Colors.redAccent.withOpacity(0.35), child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد غیر تراز'), SizedBox(width: 10.0,)])),
                    Card(color: Colors.green.withOpacity(0.35), child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد ثبت شده'), SizedBox(width: 10.0,)])),
                    Card(color: Colors.purple.withOpacity(0.35), child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد بدون آرتیکل'), SizedBox(width: 10.0,)])),
                    SizedBox(width: 25,),
                    Card(child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد امروز'), SizedBox(width: 10.0,)])),
                    Card(child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد دیروز'), SizedBox(width: 10.0,)])),
                    Card(child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد هفته جاری'), SizedBox(width: 10.0,)])),
                    Card(child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد هفته گذشته'), SizedBox(width: 10.0,)])),
                    Card(child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد ماه جاری'), SizedBox(width: 10.0,)])),
                    Card(child: Row(mainAxisSize: MainAxisSize.min,children: [Switch(value: false, onChanged: (val){}), SizedBox(width: 5.0), Text('اسناد ماه گذشته'), SizedBox(width: 10.0,)])),
                  ],
                ),
              )
              : Container(height: 0,),
            GridCaption(
              obj: [
                GridColumn('شماره سند', header: true, sort: _sort==10 ? Sort.asc : _sort==11 ? Sort.desc : Sort.none, onPressed: ()=>changeSort(10)), 
                GridColumn('تاریخ سند', header: true, sort:  _sort==20 ? Sort.asc : _sort==21 ? Sort.desc : Sort.none, onPressed: ()=>changeSort(20)), 
                GridColumn('جمع بدهکار', header: true, sort:  _sort==30 ? Sort.asc : _sort==31 ? Sort.desc : Sort.none, onPressed: ()=>changeSort(30)), 
                GridColumn('جمع بستانکار', header: true, sort:  _sort==40 ? Sort.asc : _sort==41 ? Sort.desc : Sort.none, onPressed: ()=>changeSort(40)), 
                GridColumn('شرح سند', header: true,  sort: _sort==50 ? Sort.asc : _sort==51 ? Sort.desc : Sort.none, onPressed: ()=>changeSort(50), flex: 2), 
                GridColumn('آخرین ویرایش', header: true, sort:  _sort==60 ? Sort.asc : _sort==61 ? Sort.desc : Sort.none, onPressed: ()=>changeSort(60)), 
              ], 
              endbuttons: 3
            ),
            //Pin Sanad's
            Column(
              children: _asnad.map((e){
                if (e.pin)
                  return SanadRow(sanad: e);
                return Container(height: 0);
              }).toList(),
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 7.5), color: Colors.black12, height: 2),
            //Not Pin Sanad's
            Expanded(
              child: ListView.builder(
                itemCount: _asnad.length,
                itemBuilder: (BuildContext context, int idx) {
                  if (!_asnad[idx].pin)
                    return SanadRow(sanad: _asnad[idx]);
                  return Container(height: 0);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SanadRow extends StatelessWidget {
  const SanadRow({Key key, @required this.sanad}) : super(key: key);

  final Sanad sanad;

  @override
  Widget build(BuildContext context) {
    return MyRow(
      children: [
        GridColumn('${this.sanad.id}'), 
        GridColumn('${this.sanad.date}'), 
        GridColumn('${moneySeprator(this.sanad.bed)}'), 
        GridColumn('${moneySeprator(this.sanad.bes)}'), 
        GridColumn('${this.sanad.note}', flex: 2),
        GridColumn('${this.sanad.lastedit}'), 
        SizedBox(width: 40),
        MyIconButton(type: ButtonType.other, icon: Icon(sanad.pin ? CupertinoIcons.pin_slash : CupertinoIcons.pin, color: Colors.black54, size: 15,), hint: sanad.pin ? 'خروج از پین' : 'پین کردن', onPressed: (){}),
        MyIconButton(type: ButtonType.other, icon: Icon(CupertinoIcons.doc_on_clipboard, color: Colors.black54,), hint: 'کپی سند در سند جدید', onPressed: (){}),
        MyIconButton(type: ButtonType.other, icon: Icon(CupertinoIcons.viewfinder), hint: 'مشاهده سند', onPressed: (){})
      ], 
      color: this.sanad.reg
        ? Colors.green.withOpacity(0.35)
        : this.sanad.bed==this.sanad.bes && this.sanad.bed > 0 
          ? Colors.yellow.withOpacity(0.35)
          : this.sanad.bed == this.sanad.bes && this.sanad.bed == 0
            ? Colors.purple.withOpacity(0.35)
            : this.sanad.bed != this.sanad.bes
              ? Colors.redAccent.withOpacity(0.35)
              : Colors.transparent, 
      hint: this.sanad.reg
        ? 'ثبت شده است'
        : this.sanad.bed==this.sanad.bes && this.sanad.bed > 0 
          ? 'ثبت نشده است'
          : this.sanad.bed == this.sanad.bes && this.sanad.bed == 0
            ? 'بدون آرتیکل'
            : this.sanad.bed != this.sanad.bes
              ? 'تراز نمی باشد'
              : ''
    );
  }
}


