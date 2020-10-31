import 'package:finance/module/Widgets.dart';
import 'package:finance/module/consts.dart';
import 'package:flutter/material.dart';

import '../../classes/class.dart';

int _section = 4;

List<Group> _group = [
  Group(id: 1, name: 'دارائيهاي جاري'),
  Group(id: 2, name: 'دارائيهاي غير جاري'),
  Group(id: 3, name: 'بدهي کوتاه مدت'),
  Group(id: 4, name: 'بدهي هاي بلند مدت'),
  Group(id: 5, name: 'درآمدها'),
  Group(id: 6, name: 'هزينه ها'),
  Group(id: 7, name: 'کنترلي')
];
List<Kol> _kol = [Kol(grp: 1, id: 101, name: 'وجوه نقد'),
  Kol(grp: 1, id: 102, name: 'حسابها و اسناد دريافتني'),
  Kol(grp: 1, id: 103, name: 'ساير حسابها و اسناد دريافتني'),
  Kol(grp: 1, id: 104, name: 'موحودي کالا'),
  Kol(grp: 1, id: 105, name: 'سفارشات و پيش پرداختها'),
  Kol(grp: 1, id: 106, name: 'جديد'),
  Kol(grp: 1, id: 120, name: 'دارائي هاي مشهود و نامشهود'),
  Kol(grp: 2, id: 201, name: 'حسابها و اسناد دريافتني بلند مدت'),
  Kol(grp: 2, id: 202, name: 'ساير حسابها و اسناد دريافتني بلند مدت'),
  Kol(grp: 2, id: 203, name: 'دارايي هاي ثابت'),
  Kol(grp: 3, id: 301, name: 'حسابها و اسناد پرداختني'),
  Kol(grp: 3, id: 302, name: 'ساير حسابها و اسناد پرداختني'),
  Kol(grp: 4, id: 401, name: 'ذخاير پرسنلي'),
  Kol(grp: 1, id: 433, name: 'حساب کل جديد '),
  Kol(grp: 5, id: 501, name: 'درآمد ارايه خدمات'),
  Kol(grp: 5, id: 502, name: 'فروش کالا و برگشت از فروش'),
  Kol(grp: 5, id: 503, name: 'ساير درآمدها  هزينه ها'),
  Kol(grp: 6, id: 601, name: 'هزينه حقوق و دستمزد'),
  Kol(grp: 6, id: 602, name: 'هزينه هاي اداري تشيکلاتي'),
  Kol(grp: 6, id: 603, name: 'هزينه هاي مالي'),
  Kol(grp: 6, id: 604, name: 'بهاي تمام شده کالاي فروش رفته'),
  Kol(grp: 6, id: 605, name: 'بدون ماهيت'),
  Kol(grp: 6, id: 606, name: 'هزينه هاي توليدي'),
  Kol(grp: 6, id: 607, name: 'هزينه هاي استهلاک'),
  Kol(grp: 7, id: 701, name: 'حسابهاي انتتظامي اسناد ديگران'),
  Kol(grp: 7, id: 702, name: 'عملکرد سود و زيان'),
  Kol(grp: 7, id: 703, name: 'کنترلي'),
];
List<Moin> _moin = [
  Moin(kol: 101, id: 11, name: 'بانکهاي ريالي'),
  Moin(kol: 101, id: 12, name: 'صندوق ها'),
  Moin(kol: 101, id: 13, name: 'تنخواه'),
  Moin(kol: 101, id: 14, name: 'بانکهاي ارزي'),
  Moin(kol: 101, id: 15, name: '75675'),
  Moin(kol: 101, id: 16, name: 'kjdjsfhjs'),
  Moin(kol: 102, id: 11, name: 'اسناد دريافتني'),
  Moin(kol: 102, id: 12, name: 'حسابهاي دريافتني'),
  Moin(kol: 102, id: 13, name: 'اسناد نزد صندوق'),
  Moin(kol: 102, id: 14, name: 'اسناد نزد بانک'),
  Moin(kol: 103, id: 11, name: 'ماليات بر ارزش افزوده'),
  Moin(kol: 103, id: 12, name: 'مساعده'),
  Moin(kol: 103, id: 13, name: 'وام'),
  Moin(kol: 104, id: 11, name: 'مواد اوليه'),
  Moin(kol: 104, id: 12, name: 'محصول'),
  Moin(kol: 104, id: 13, name: 'لوازم التحرير و مواد مصرفي'),
  Moin(kol: 105, id: 11, name: 'اعتبارات اسنادي'),
  Moin(kol: 105, id: 12, name: 'سفارشات داخلي'),
  Moin(kol: 120, id: 11, name: 'نرم افزارهاي محاسباتي'),
  Moin(kol: 201, id: 1, name: 'صثق'),
  Moin(kol: 203, id: 15, name: 'ساختمان'),
  Moin(kol: 203, id: 16, name: 'زمين'),
  Moin(kol: 203, id: 17, name: 'ماشين آلات'),
  Moin(kol: 203, id: 101, name: 'استهلاک انباشته ساختمان'),
  Moin(kol: 203, id: 102, name: 'استهلاک انباشته زمين'),
  Moin(kol: 203, id: 103, name: 'استهلاک انباشته ماشين آلات'),
  Moin(kol: 301, id: 11, name: 'حسابهاي پرداختني'),
  Moin(kol: 301, id: 12, name: 'اسناد پرداختني'),
  Moin(kol: 302, id: 1, name: 'بيمه پرداختي سهم پرسنل'),
  Moin(kol: 302, id: 11, name: 'اضافات غير موثر'),
  Moin(kol: 302, id: 12, name: 'کسورات غير موثر'),
  Moin(kol: 302, id: 13, name: 'بيمه پرداختني'),
  Moin(kol: 302, id: 14, name: 'پس انداز پرسنل'),
  Moin(kol: 302, id: 15, name: 'حقوق پرداختني'),
  Moin(kol: 302, id: 16, name: 'ماليات حقوق پرداختني'),
  Moin(kol: 401, id: 11, name: 'ذخيره بن'),
  Moin(kol: 401, id: 12, name: 'ذخيره عيدي'),
  Moin(kol: 401, id: 13, name: 'ذخيره سنوات'),
  Moin(kol: 433, id: 54, name: 'اينم جديده '),
  Moin(kol: 501, id: 11, name: 'درآمدهاي ارايه خدمات مالي'),
  Moin(kol: 501, id: 12, name: 'بررسي اداري _مالي'),
  Moin(kol: 501, id: 13, name: 'عانيملا'),
  Moin(kol: 502, id: 11, name: 'فروش کالاهاي ايراني'),
  Moin(kol: 502, id: 12, name: 'فروش کالاهاي توليدي اصفهان'),
  Moin(kol: 502, id: 13, name: 'تخفيفات و برگشت از فروش'),
  Moin(kol: 503, id: 1, name: 'سود (زيان) ناشي از فروش دارائي ثابت'),
  Moin(kol: 503, id: 11, name: 'تخيفات و اضافات همکاران فروش'),
  Moin(kol: 503, id: 12, name: 'فروش دارائي ثابت'),
  Moin(kol: 601, id: 11, name: 'اضافه کار'),
  Moin(kol: 601, id: 12, name: 'حقوق و دستمزد'),
  Moin(kol: 601, id: 13, name: 'بيمه سهم کارفرما'),
  Moin(kol: 601, id: 14, name: 'حق اولاد'),
  Moin(kol: 601, id: 15, name: 'بيمه بيکاري'),
  Moin(kol: 601, id: 16, name: 'بن'),
  Moin(kol: 601, id: 17, name: 'عيدي'),
  Moin(kol: 601, id: 18, name: 'سنوات'),
  Moin(kol: 601, id: 19, name: 'حق مسکن'),
  Moin(kol: 601, id: 20, name: 'حق جذب'),
  Moin(kol: 601, id: 21, name: 'اضافه کار'),
  Moin(kol: 601, id: 22, name: 'حق ماموريت'),
  Moin(kol: 601, id: 23, name: 'حق شرکت در جلسات'),
  Moin(kol: 601, id: 24, name: 'پاداش توليد'),
  Moin(kol: 601, id: 25, name: 'حق فني'),
  Moin(kol: 601, id: 26, name: 'حق بيمه سختي کار'),
  Moin(kol: 601, id: 27, name: 'اضافه کار مديريت'),
  Moin(kol: 601, id: 28, name: 'اضافه کار مالي'),
  Moin(kol: 601, id: 29, name: 'اضافه کار فروش'),
  Moin(kol: 601, id: 30, name: 'پاداش مديريت'),
  Moin(kol: 601, id: 31, name: 'پاداش مالي'),
  Moin(kol: 601, id: 32, name: 'پاداش فروش'),
  Moin(kol: 601, id: 34, name: 'بيمه سهم کارفرما فروش'),
  Moin(kol: 601, id: 35, name: 'بن فروش'),
  Moin(kol: 601, id: 36, name: 'خالص پرداختني فروش'),
  Moin(kol: 602, id: 11, name: 'هزينه هاي اياب و ذهاب پرسنل'),
  Moin(kol: 602, id: 12, name: 'هزينه ارتباطات'),
  Moin(kol: 602, id: 13, name: 'هزينه تحقيقات'),
  Moin(kol: 602, id: 14, name: 'هزينه سوخت وسايط نقليه'),
  Moin(kol: 602, id: 15, name: 'هزينه بهداشت و درمان'),
  Moin(kol: 602, id: 18, name: 'براي تست بودجه'),
  Moin(kol: 606, id: 1, name: 'هزينه هاي آزمون کالا'),
  Moin(kol: 606, id: 2, name: 'هزينه هاي ضايعات کالاي آزمون شده'),
  Moin(kol: 607, id: 1, name: 'استهلاک ساختمان'),
  Moin(kol: 607, id: 2, name: 'استهلاک ماشين آلان'),
  Moin(kol: 607, id: 3, name: 'ساير استهلاک ها'),
  Moin(kol: 701, id: 11, name: 'چک هاي تضميني'),
  Moin(kol: 701, id: 12, name: 'سفته هاي تضميني'),
  Moin(kol: 702, id: 11, name: ' حسابهاي موقت - هزينه ها'),
  Moin(kol: 702, id: 12, name: ' درامده'),
  Moin(kol: 702, id: 32000, name: 'يبي'),
];
List<Tafsili> _tafsili = [
  Tafsili(id: 1001, name: 'محمود رضايي 1'),
  Tafsili(id: 1002, name: 'شاهين احمديان - جنوبي'),
  Tafsili(id: 1003, name: 'رضا جماليان'),
  Tafsili(id: 1004, name: 'سيروس تالاب'),
  Tafsili(id: 1005, name: 'شهاب شورابي'),
  Tafsili(id: 101, name: 'بانک ملي عيسي بن مريم جاري 0101087641003'),
  Tafsili(id: 102, name: 'بانک ملي مرکزي جاري 0104292845002'),
  Tafsili(id: 103, name: 'جاري مشترک سهامداران'),
  Tafsili(id: 104, name: 'جاري ملت چهارراه سيروس'),
  Tafsili(id: 201, name: 'واحد مالي دفتر مرکزي'),
  Tafsili(id: 202, name: 'واحد انبار'),
  Tafsili(id: 203, name: 'واحد تدارکات'),
  Tafsili(id: 204, name: 'واحد مديريت'),
  Tafsili(id: 205, name: 'خط توليد شماره يک'),
  Tafsili(id: 206, name: 'خط توليد شماره دو'),
  Tafsili(id: 207, name: 'واحد نگهباني'),
  Tafsili(id: 2001, name: 'فروشگاه تعاوني ياوران1'),
  Tafsili(id: 2002, name: 'شرکت سهند پويا'),
  Tafsili(id: 2003, name: 'شرکت پويندگاه راه'),
  Tafsili(id: 2004, name: 'خدمات ريلي آسان'),
  Tafsili(id: 2005, name: 'فروشگاه زنجيره اي'),
  Tafsili(id: 2006, name: 'خدماتي صنعت داران'),
  Tafsili(id: 2007, name: 'شرکت سبز محيط'),
  Tafsili(id: 3001, name: 'پروژه 100واحدي جنوب'),
  Tafsili(id: 3002, name: 'پروژه تحصيل زمين از دريا'),
  Tafsili(id: 3003, name: 'پروژه زيبا سازي محوط شرکت نيرو'),
  Tafsili(id: 1006, name: 'حسين رحيمي'),
  Tafsili(id: 3004, name: 'عغغ'),
  Tafsili(id: 1013, name: 'شرکت آب بر مشهد'),
  Tafsili(id: 35, name: 'اعتبارت اسنادي بانک ها 21'),
];

int grpid = 0;
int kolid = 0;

class FmCoding extends StatefulWidget {
  FmCoding({Key key, @required this.user}) : super(key: key);

  final User user;

  @override
  _FmCodingState createState() => _FmCodingState();
}

class _FmCodingState extends State<FmCoding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            FormHeader(
              title: 'مدیریت کدینگ حسابداری',
              btnLeft: MyIconButton(type: ButtonType.none),
            ),
            Row(
              children: [
                Expanded(child: Card(child: ListTile(selectedTileColor: _section == 1 ? accentcolor(context).withOpacity(0.25): Colors.transparent, title: Text('گروه حساب ها'), onTap: ()=>setState((){_section = 1;}), selected: _section == 1,))),
                Expanded(child: Card(child: ListTile(selectedTileColor: _section == 2 ? accentcolor(context).withOpacity(0.25) : Colors.transparent, title: Text('حساب های کل'), onTap: ()=>setState((){grpid=_group[0].id; _section = 2;}), selected: _section == 2,))),
                Expanded(child: Card(child: ListTile(selectedTileColor: _section == 3 ? accentcolor(context).withOpacity(0.25) : Colors.transparent, title: Text('حساب های معین'), onTap: ()=>setState((){kolid=_kol[0].id; _section = 3;}), selected: _section == 3,))),
                Expanded(child: Card(child: ListTile(selectedTileColor: _section == 4 ? accentcolor(context).withOpacity(0.25) : Colors.transparent, title: Text('حساب های تفصیلی'), onTap: ()=>setState((){_section = 4;}), selected: _section == 4,))),
              ],
            ),
            Expanded(
              child: _section == 1
                ? PnGroup()
                : _section == 2
                  ? PnKol(ontap: groupClick,)
                  : _section == 3
                    ? PnMoin(ontap: kolClick)
                    : PnTafsili(),
            )
          ],
        ),
      ),
    );
  }

  groupClick(int id){
    setState(() {
      grpid = id;
    });
  }
  kolClick(int id){
    setState(() {
      kolid = id;
    });
  }
}

class PnGroup extends StatelessWidget {
  const PnGroup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          GridCaption(obj: [MyIconButton(type: ButtonType.add, onPressed: (){}),'کد', 'عنوان', '']),
          Expanded(
            child: ListView.builder(
              itemCount: _group.length,
              itemBuilder: (context, idx){
                return MyRow(children: [
                  '${_group[idx].id}',
                  '${_group[idx].name}', '',
                  MyIconButton(type: ButtonType.del, onPressed: (){})
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}

class PnKol extends StatelessWidget {
  const PnKol({Key key, @required this.ontap}) : super(key: key);

  final Function(int) ontap;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                GridCaption(obj: ['گروه حساب']),
                Expanded(
                  child: ListView.builder(
                    itemCount: _group.length,
                    itemBuilder: (context, idx){
                      return MyRow(children: ['${_group[idx].name}'], selected: _group[idx].id==grpid, onPressed: ()=>this.ontap(_group[idx].id),);
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                GridCaption(obj: [MyIconButton(type: ButtonType.add, onPressed: (){}),'کد', 'عنوان', '']),
                Expanded(
                  child: ListView.builder(
                    itemCount: _kol.length,
                    itemBuilder: (context, idx){
                      if (_kol[idx].grp == grpid)
                        return MyRow(children: [
                          '${_kol[idx].id}',
                          '${_kol[idx].name}', '',
                          MyIconButton(type: ButtonType.del, onPressed: (){})
                        ]);
                      return Container(height: 0);  
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PnMoin extends StatelessWidget {
  const PnMoin({Key key, @required this.ontap}) : super(key: key);

  final Function(int) ontap;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                GridCaption(obj: ['حساب کل']),
                Expanded(
                  child: ListView.builder(
                    itemCount: _kol.length,
                    itemBuilder: (context, idx){
                      return MyRow(children: ['${_kol[idx].name}'], selected: _kol[idx].id==kolid, onPressed: ()=>this.ontap(_kol[idx].id));
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                GridCaption(obj: [MyIconButton(type: ButtonType.add, onPressed: (){}),'کد', 'عنوان', '']),
                Expanded(
                  child: ListView.builder(
                    itemCount: _moin.length,
                    itemBuilder: (context, idx){
                      if (_moin[idx].kol == kolid)
                        return MyRow(children: [
                          '${_moin[idx].id}',
                          '${_moin[idx].name}', '',
                          MyIconButton(type: ButtonType.del, onPressed: (){})
                        ]);
                      return Container(height: 0);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PnTafsili extends StatelessWidget {
  const PnTafsili({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          GridCaption(obj: [MyIconButton(type: ButtonType.add, onPressed: (){}),'کد', 'عنوان', '']),
          Expanded(
            child: ListView.builder(
              itemCount: _tafsili.length,
              itemBuilder: (context, idx){
                return MyRow(children: [
                  '${_tafsili[idx].id}',
                  '${_tafsili[idx].name}', '',
                  MyIconButton(type: ButtonType.del, onPressed: (){})
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}