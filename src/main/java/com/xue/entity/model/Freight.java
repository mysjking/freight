package com.xue.entity.model;

public class Freight {

     private Integer freightId;
     private String areaName;
     private String areaEgName;
     private String price;
     private Integer freightType;
     private String weight;
     private String priceType;

    public Integer getFreightId() {
        return freightId;
    }

    public void setFreightId(Integer freightId) {
        this.freightId = freightId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getAreaEgName() {
        return areaEgName;
    }

    public void setAreaEgName(String areaEgName) {
        this.areaEgName = areaEgName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Integer getFreightType() {
        return freightType;
    }

    public void setFreightType(Integer freightType) {
        this.freightType = freightType;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getPriceType() {
        return priceType;
    }

    public void setPriceType(String priceType) {
        this.priceType = priceType;
    }
}
