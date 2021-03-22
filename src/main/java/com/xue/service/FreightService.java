package com.xue.service;

import com.xue.entity.model.Freight;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface FreightService {

    int addFreight(MultipartFile file,String priceType) throws Exception;

    List<Freight> selectFreightList(String areaName,String weight,Integer freightType,int count,int pageSize);

    int selectFreightListCount(String areaName,String weight,Integer freightType);
}
