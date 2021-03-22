package com.xue.repository.dao;

import com.xue.entity.model.Freight;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface FreightMapper {

    int addFreight(Freight freight);

    int selectFreight(@Param(value="areaName") String areaName, @Param(value="weight") String weight,
                      @Param(value="freightType") Integer freightType,@Param(value="priceType") String priceType);

    int selectFreightListCount(@Param(value="areaName") String areaName, @Param(value="weight") String weight,
                               @Param(value="freightType") Integer freightType);

    List<Freight> selectFreightList(@Param(value="areaName") String areaName, @Param(value="weight") String weight,
             @Param(value="freightType") Integer freightType, @Param(value="count") int count, @Param(value="pageSize") int pageSize);

    int updateFreight(Freight freight);
}
