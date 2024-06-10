import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:mobiusamza/screens/Homepage.dart';
import 'package:json_path/json_path.dart';
import 'package:tuple/tuple.dart';

class Navigate extends StatefulWidget {
  @override
  _NavigateState createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  List<Tuple4<String, String, String, String>> myList = [];
  Future<dynamic> FetchData(BuildContext context) async {
    final globalData = Provider.of<GlobalData>(context, listen: false);

    var repoChildrenUrl =
        "https://content.xmegtech.com:3443/mobius/rest/repositories/D6DFEAB4-637C-4D99-AB9B-F70DE0FA9392/children";
    var header = {
      "Accept": '*/*',
      "Client-id":
          'AAK-kwN-idyLi3Yimo48bwIngkczaD-KNQsPPOsp2k9IyP-TBw_1GlQ5IK-RxmovCHsss4gXoTx2Cw_c7fN6AUUG8eq9WnSL_DL84bASbIX5kJnbIndYm-sOPEDKU4E-VWHsUpR0GNrZ0qbT7oP02r4WKYUhf7yKNKtZ3p8UhyGxbIg_njMV2FWwP27IOfhRF7skoB8NbAaLAk7HFXOhRjwmAdsZ6ojxTGDtG0cuEhEwR6vbNzXhynihQ1Sg_6hfZwLrxSFBHf1Nrf21ipYcSCZR6JCDbHBv-n5mCxU6qwD8jrezXbG6C4W4Tm85LRh28Mp7st8S_tkSls0IZ4EndajZzgMS1DWrQvh7H1Ioxn6iFsHd-4Ev5UxGxL6xEhaQrVUAXWrv8DHjQUlWeCsIJ_FMCGA8gLz6ex24G1deBC7-0vhEYxOUobPm4SNKOh28lDEDa-_4vraUckfw1QU941gI4gXJmDeGATPa0GMFL19TXZIQquA7qbEYB6iA50NBbNagG9SGUQZ2XIuE1Ufb2OxQJtNWTJ7ok5KcMpedOo4YeEkThg466h6ZxVFwopyifHOVLeXj4krjQ8csWb8bcVofcmUmELlPI2MpJWTlbAoRUNCQHL-VWFoH8Ek6PmBDa1PcB8L8Pn-D7b_WDwoe2uf_GxXtvJkUS27bltXwpY1uKOQBawXntzh7LJNBe2apchoFypxOCFYfxUKh2P0Gr4xf-R7pWGYoB7U1uKe_ptY1-goozq4T8oDkyKNBP1CqzKveVVQ2Ow3-kqePe_MP-mtb9ZX0coAQrKe6xHKWcm66Ykl-E3shCwrHSC6PAUF26yyZjVXp0CVF7JzLviPqIohgd0saTBwJFB1_o1ZSgPuKfNGwqjHb1bWG7HXon_FV3rL4jnghMLQycaIjAybCr0TaK0I4xlTf-QwwUdI98cp-PVyaDc9Po5zpipgIp4Zh5LcU6cdZVpKV8sRCLi-efPTPc_JKoJ3r4Hv_8DI9t0LFgBa7DQwDShp-iPHegM8uP0UWbGYVvm-mNSaPaBFPy5bvwKO09PftcVqKVSHMzNHe-FUJ5KelEs3upv3A4-v6-86YeyS_q7t0Zdxn5pDMODU7bgPXCi7j5aYfWkgOnq15xdtnUIjV6F5bH8p1iW27YF-lEpRbQ3oLGgbdi9KMjnNGsUKN3yLDyw'
    };
    var response = await http.get(Uri.parse(repoChildrenUrl), headers: header);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);

      final objectName = JsonPath(r'$..name').readValues(jsonData);
      final objectDescription =
          JsonPath(r'$..description').readValues(jsonData);
      final objectId = JsonPath(r'$..objectId').readValues(jsonData);
      final objectType = JsonPath(r'$..baseTypeId').readValues(jsonData);

      final objectNameList = objectName.toList();
      final objectDescriptionList = objectDescription.toList();
      final objectIdList = objectId.toList();
      final objectTypeList = objectType.toList();

      for (var i = 0; i < objectNameList.length; i++) {
        myList.add(Tuple4(
          objectNameList[i].toString(),
          objectDescriptionList[i].toString(),
          objectIdList[i].toString(),
          objectTypeList[i].toString(),
        ));
      }
      print(myList);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigate Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                FetchData(context);
              },
              child: Text('Navigateee'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: myList[index].item4 == "FOLDER"
                        ? Icon(Icons.folder)
                        : Icon(Icons.description),
                    title: Text(myList[index].item1),
                    subtitle: Text(myList[index].item2),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
