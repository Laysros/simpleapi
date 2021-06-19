import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

class ItemDetail {
  Item item;

  ItemDetail({this.item});
    ItemDetail.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null ? new Item.fromJson(json['item']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.item != null) {
      data['item'] = this.item.toJson();
    }
    return data;
  }
}

class Item {
  PropImgs propImgs;
  ItemImgs itemImgs;
  Location location;
  Skus skus;
  bool hasWarranty;
  String itemWeight;
  String iid;
  String modified;
  String title;
  String approveStatus;
  int cid;
  String created;
  String desc;
  String propsName;
  bool isTaobao;
  String nick;
  int num;
  int numIid;
  String picUrl;
  String freightPayer;
  String postFee;
  String emsFee;
  String expressFee;
  String price;
  String wapDetailUrl;
  String wirelessDesc;
  String score;
  String sellPoint;
  String shopType;
  String stuffStatus;
  String validThru;

  Item(
      {this.propImgs,
        this.itemImgs,
        this.location,
        this.skus,
        this.hasWarranty,
        this.itemWeight,
        this.iid,
        this.modified,
        this.title,
        this.approveStatus,
        this.cid,
        this.created,
        this.desc,
        this.propsName,
        this.isTaobao,
        this.nick,
        this.num,
        this.numIid,
        this.picUrl,
        this.freightPayer,
        this.postFee,
        this.emsFee,
        this.expressFee,
        this.price,
        this.wapDetailUrl,
        this.wirelessDesc,
        this.score,
        this.sellPoint,
        this.shopType,
        this.stuffStatus,
        this.validThru});

  Item.fromJson(Map<String, dynamic> json) {
    propImgs = json['prop_imgs'] != null
        ? new PropImgs.fromJson(json['prop_imgs'])
        : null;
    itemImgs = json['item_imgs'] != null
        ? new ItemImgs.fromJson(json['item_imgs'])
        : null;
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    skus = json['skus'] != null ? new Skus.fromJson(json['skus']) : null;
    hasWarranty = json['has_warranty'];
    itemWeight = json['item_weight'];
    iid = json['iid'];
    modified = json['modified'];
    title = json['title'];
    approveStatus = json['approve_status'];
    cid = json['cid'];
    created = json['created'];
    desc = json['desc'];
    propsName = json['props_name'];
    isTaobao = json['is_taobao'];
    nick = json['nick'];
    num = json['num'];
    numIid = json['num_iid'];
    picUrl = json['pic_url'];
    freightPayer = json['freight_payer'];
    postFee = json['post_fee'];
    emsFee = json['ems_fee'];
    expressFee = json['express_fee'];
    price = json['price'];
    wapDetailUrl = json['wap_detail_url'];
    wirelessDesc = json['wireless_desc'];
    score = json['score'];
    sellPoint = json['sell_point'];
    shopType = json['shop_type'];
    stuffStatus = json['stuff_status'];
    validThru = json['valid_thru'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.propImgs != null) {
      data['prop_imgs'] = this.propImgs.toJson();
    }
    if (this.itemImgs != null) {
      data['item_imgs'] = this.itemImgs.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    if (this.skus != null) {
      data['skus'] = this.skus.toJson();
    }
    data['has_warranty'] = this.hasWarranty;
    data['item_weight'] = this.itemWeight;
    data['iid'] = this.iid;
    data['modified'] = this.modified;
    data['title'] = this.title;
    data['approve_status'] = this.approveStatus;
    data['cid'] = this.cid;
    data['created'] = this.created;
    data['desc'] = this.desc;
    data['props_name'] = this.propsName;
    data['is_taobao'] = this.isTaobao;
    data['nick'] = this.nick;
    data['num'] = this.num;
    data['num_iid'] = this.numIid;
    data['pic_url'] = this.picUrl;
    data['freight_payer'] = this.freightPayer;
    data['post_fee'] = this.postFee;
    data['ems_fee'] = this.emsFee;
    data['express_fee'] = this.expressFee;
    data['price'] = this.price;
    data['wap_detail_url'] = this.wapDetailUrl;
    data['wireless_desc'] = this.wirelessDesc;
    data['score'] = this.score;
    data['sell_point'] = this.sellPoint;
    data['shop_type'] = this.shopType;
    data['stuff_status'] = this.stuffStatus;
    data['valid_thru'] = this.validThru;
    return data;
  }
}

class PropImgs {
  List<PropImg> propImg;

  PropImgs({this.propImg});

  PropImgs.fromJson(Map<String, dynamic> json) {
    if (json['prop_img'] != null) {
      propImg = new List<PropImg>();
      json['prop_img'].forEach((v) {
        propImg.add(new PropImg.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.propImg != null) {
      data['prop_img'] = this.propImg.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PropImg {
  String properties;
  String url;
  bool selected;
  int position;

  PropImg({this.properties, this.url, this.position});

  PropImg.fromJson(Map<String, dynamic> json) {
    properties = json['properties'];
    url = json['url'];
    position = json['position'];
    selected = false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['properties'] = this.properties;
    data['url'] = this.url;
    data['position'] = this.position;
    return data;
  }
}

class ItemImgs {
  List<ItemImg> itemImg;

  ItemImgs({this.itemImg});

  ItemImgs.fromJson(Map<String, dynamic> json) {
    if (json['item_img'] != null) {
      itemImg = new List<ItemImg>();
      json['item_img'].forEach((v) {
        itemImg.add(new ItemImg.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.itemImg != null) {
      data['item_img'] = this.itemImg.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItemImg {
  String url;
  int position;

  ItemImg({this.url, this.position});

  ItemImg.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['position'] = this.position;
    return data;
  }
}

class Location {
  String city;
  String state;

  Location({this.city, this.state});

  Location.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['state'] = this.state;
    return data;
  }
}

class Skus {
  List<Sku> sku;

  Skus({this.sku});

  Skus.fromJson(Map<String, dynamic> json) {
    if (json['sku'] != null) {
      sku = new List<Sku>();
      json['sku'].forEach((v) {
        sku.add(new Sku.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sku != null) {
      data['sku'] = this.sku.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sku {
  double price;
  String properties;
  String propertiesName;
  int quantity;
  int skuId;

  Sku(
      {this.price,
        this.properties,
        this.propertiesName,
        this.quantity,
        this.skuId});

  Sku.fromJson(Map<String, dynamic> json) {
    price =  double.parse(json['price']);
    properties = json['properties'];
    propertiesName = json['properties_name'];
    quantity = json['quantity'];
    skuId = json['sku_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['properties'] = this.properties;
    data['properties_name'] = this.propertiesName;
    data['quantity'] = this.quantity;
    data['sku_id'] = this.skuId;
    return data;
  }
}
