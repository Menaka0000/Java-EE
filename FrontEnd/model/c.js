function c(id,name,qtyForSale,dbQty,price,cost){
    var __id=id;
    var __name=name;
    var __qtyForSale =qtyForSale;
    var __dbQty=dbQty;
    var __price = price;
    var __cost = cost;

    this.setCItemID=function (id){
        __id=id;
    }
    this.setCItemName=function (name){
    __name=name;
    }
    this.setQtyForSale=function (qty){
        __qtyForSale=qty;
    }
    this.setCItemPrice=function (price){
        __price=price;
    }
    this.setCItemCost=function (cost){
        __cost=cost;
    }
    this.getCItemId=function (){
        return __id;
    }
    this.getCItemName=function (){
        return __name;
    }
    this.getQtyForSale = function (){
        return __qtyForSale;
    }
    this.getDbQty = function (){
        return __dbQty;
    }
    this.getCItemPrice = function (){
        return __price;
    }
    this.getCItemCost = function (){
        return __cost;
    }

}