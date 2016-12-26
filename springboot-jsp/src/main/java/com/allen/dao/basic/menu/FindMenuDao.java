package com.allen.dao.basic.menu;

import com.allen.dao.BaseQueryDao;
import com.allen.dao.PageInfo;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by Allen on 2016/12/26 0026.
 */
@Service
public class FindMenuDao extends BaseQueryDao{

    /**
     * 分页查询信息
     * @param pageInfo
     * @param paramsMap
     * @param sortMap
     * @return
     * @throws Exception
     */
    public PageInfo findPageByWhere(PageInfo pageInfo, Map<String, Object> paramsMap, Map<String, Boolean> sortMap)throws Exception{
        String fileds = "*";
        String[] tableNames = {"menu"};
        String[] paramsIf = {"like"};
        return super.findPageByNativeSql(pageInfo, fileds, tableNames, paramsMap, paramsIf, sortMap);
    }
}
