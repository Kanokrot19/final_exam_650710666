import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _Answer2State();
}

class _Answer2State extends State<Answer2> {
  double product_w = 0;
  String r1 = "1";
  String r2 = "2";
  String r3 = "3";
  double service1 = 20;
  double service2 = 50;
double count = 0;

  void price(){
    if (product_w == 2 && r2 == "2") {
    count = 2*15;

    }
  }

  final _formKey = GlobalKey<FormState>();
  String? s1 = '1';
  String? s2 = '2';
  String? s3 = '3';
  String? _selectedItem;
  bool _isChecked = false;
  bool _isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('คำนวณค่าจัดส่ง',
              style: TextStyle(color: Colors.black)),
        ),
        body: Form(
            key: _formKey,
            child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'น้ำหนักสินค้า (กก.):'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField<String>(
                        decoration:
                            const InputDecoration(labelText: 'เลือกระยะทาง:'),
                        value: _selectedItem,
                        items: ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (value) {
                          _selectedItem = value;
                        },
                        validator: (value) =>
                            value == null ? 'เลือกระยะทางที่จะส่ง' : null,
                      ),
                      const SizedBox(height: 20),
                      Text("บริการเสริม"),
                      CheckboxListTile(
                        title: const Text('แพ็คกิ้งพิเศษ(+20)'),
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text('ประกันพัสดุ(+50)'),
                        value: _isChecked2,
                        onChanged: (value) {
                          setState(() {
                            _isChecked2 = value!;
                          });
                        },
                      ),

                      
                      const SizedBox(height: 20),
                      Text("เลือกคว่มเร่งด่วน:"),
                      
                    Expanded(
                      child: RadioListTile(
                        title: Text('ปกติ'),
                        value: 'ปกติ',
                        groupValue: s1,
                        onChanged: (value) {
                          setState(() {
                            s1 = value.toString();
                          });
                        },
                      ),
                    ),
                    
                    Expanded(
                      child: RadioListTile(
                        title: Text('ด่วน'),
                        value: 'ด่วน',
                        groupValue: s2,
                        onChanged: (value) {
                          setState(() {
                            s2 = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text('ด่วนพิเศษ'),
                        value: 'ด่วนพิเศษ',
                        groupValue: s3,
                        onChanged: (value) {
                          setState(() {
                            s3 = value.toString();
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                Center(child: ElevatedButton(onPressed: () {}, child: Text("คำนวณราคา")),),
                    
                    
                  
              
                    ]))));
  }
}
