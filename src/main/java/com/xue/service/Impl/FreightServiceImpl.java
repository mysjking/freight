package com.xue.service.Impl;

import com.xue.entity.model.Freight;
import com.xue.repository.dao.FreightMapper;
import com.xue.service.FreightService;
import com.xue.transcation.MyException;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Service
public class FreightServiceImpl implements FreightService {

    @Autowired(required = false)
    private FreightMapper freightMapper;

    @Override
    public int addFreight(MultipartFile file,String priceType) throws Exception {
        int result = 0;

        List<Freight> freightList = new ArrayList<>();

        String fileName = file.getOriginalFilename();

        String suffix = fileName.substring(fileName.lastIndexOf(".")+1);

        System.out.println("suffix="+suffix);

        InputStream ins = file.getInputStream();
        Workbook wb;
        if ("xlsx".equals(suffix)) {
            wb = new XSSFWorkbook(ins);
        } else {
            wb = new HSSFWorkbook(ins);
        }

        Sheet sheet = wb.getSheetAt(0);

        if (null != sheet) {
             Row row2 = sheet.getRow(1);
            for (int line = 2; line <= sheet.getLastRowNum(); line++) {
                Row row = sheet.getRow(line);
                if(null == row){
                    continue;
                }
                if(1 != row.getCell(0).getCellType()){
                    System.out.println(row.getCell(0).toString());
                    throw new MyException("单元格类型不是文本类型！");
                }
                String Kgs = row.getCell(0).getStringCellValue();
                String weight = "0";
                Integer freightType;
                if ("DOC".equals(Kgs)) {
                    freightType = 0;
                } else if (Kgs.contains("PAK")) {
                    weight = Kgs.replace("PAK","");
                    freightType = 1;
                } else {
                    weight = Kgs;
                    freightType = 2;
                }
                for (int i = 1; i < row.getLastCellNum(); i++) {
                    Freight freight = new Freight();
                    Double price = row.getCell(i).getNumericCellValue();
                    if (null != price) {
                        freight.setAreaName(row2.getCell(i).getStringCellValue());
                        freight.setPrice(price.toString());
                        freight.setFreightType(freightType);
                        freight.setWeight(weight);
                        freight.setPriceType(priceType);
                        freightList.add(freight);
                    }
                }
            }

            for (Freight freight : freightList) {
                String areaName = freight.getAreaName();
                String weight = freight.getWeight();
                Integer freightType = freight.getFreightType();
                int count = freightMapper.selectFreight(areaName,weight,freightType,priceType);
                if(count==0) {
                    result = freightMapper.addFreight(freight);
                } else {
                    System.out.println("存在相同的数据");
                }
            }
        }

        return result;
    }

    @Override
    public List<Freight> selectFreightList(String areaName,String weight,Integer freightType,int count,int pageSize) {
        return freightMapper.selectFreightList(areaName,weight,freightType,count,pageSize);
    }

    @Override
    public int selectFreightListCount(String areaName,String weight,Integer freightType){
       return  freightMapper.selectFreightListCount(areaName,weight,freightType);
    }


}
