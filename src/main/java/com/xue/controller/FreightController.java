package com.xue.controller;


import javax.servlet.http.HttpSession;

import com.xue.entity.model.Freight;
import com.xue.entity.page.PageSupport;
import com.xue.service.FreightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class FreightController {

    @Autowired
    private FreightService freightService;


    /**
     * 上传excel页面
     */
    @RequestMapping("/index")
    public String selectPrice(){
        return "index";
    }


    @RequestMapping("/import")
    @ResponseBody
    public String excelImport(@RequestParam(value="filename")MultipartFile file,
                              @RequestParam(value="priceType")String priceType,
                              @RequestParam(value="selfpriceType")String selfpriceType,
                              HttpSession session){
        int result = 0;
        try {
            System.out.println("selfpriceType="+ selfpriceType +"====" + "priceType=" + priceType);
            if (!StringUtils.isEmpty(selfpriceType)) {
                priceType = selfpriceType;
            }
            result = freightService.addFreight(file, priceType);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (result > 0) {
            return "excel数据导入成功！";
        }else{
            return "excel数据导入失败！";
        }
    }

    @RequestMapping("/selectFreightList")
    @ResponseBody
    public Object serachName(@RequestParam(value="areaName")String areaName,
                             @RequestParam(value="weight")String weight,
                             @RequestParam(value="freightType")Integer freightType,
                             @RequestParam(value="pageindex")String pageindex){
        if(StringUtils.isEmpty(weight) || StringUtils.isEmpty(areaName)){
            return  "error";
        }

        int currentPageNo = 1;
        int pageSize = 10;
        if(pageindex != null){
            try{
                currentPageNo = Integer.parseInt(pageindex);
            }catch(NumberFormatException e){
                return  "error";
            }
        }
        if(freightType==0){
            weight = "0";
        }

        //总数量
        int totalCount = freightService.selectFreightListCount(areaName,weight,freightType);
        PageSupport pages = new PageSupport();
        //当前页码
        pages.setCurrentPageNo(currentPageNo);
        //页面容量
        pages.setPageSize(pageSize);
        //总数量
        pages.setTotalCount(totalCount);
        //总页数
        int totalPageCount = pages.getTotalPageCount();
        //控制首页和尾页
        if(pages.getCurrentPageNo() < 1){
            pages.setCurrentPageNo(1);
        }else if(pages.getCurrentPageNo() > totalPageCount){
            pages.setCurrentPageNo(totalPageCount);
        }
        int count = 0;
        //当前页码起始下标
        if (pages.getCurrentPageNo() > 0 ) {
             count = (pages.getCurrentPageNo() - 1) * pageSize;
        }
        if(Double.parseDouble(weight) >= 22 && Double.parseDouble(weight) <= 44){
            weight = "22-44";
        } else if(Double.parseDouble(weight) >= 45 && Double.parseDouble(weight) <= 70){
            weight = "45-70";
        } else if(Double.parseDouble(weight) >= 71 && Double.parseDouble(weight) <= 99){
            weight = "71-99";
        } else if(Double.parseDouble(weight) >= 101 && Double.parseDouble(weight) <= 299){
            weight = "101-299";
        }

        List<Freight> freights = freightService.selectFreightList(areaName,weight,freightType,count,pageSize);
        Map<String,Object> map= new HashMap<>(6);
        map.put("infoList",freights);
        map.put("areaName",areaName);
        map.put("totalCount",pages.getTotalCount());
        map.put("totalPageCount",pages.getTotalPageCount());
        map.put("currentPageNo",pages.getCurrentPageNo());
        return map;
    }

}

