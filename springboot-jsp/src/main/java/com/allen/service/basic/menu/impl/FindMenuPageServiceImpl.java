package com.allen.service.basic.menu.impl;

import com.allen.dao.FindPageByWhereDao;
import com.allen.dao.PageInfo;
import com.allen.dao.basic.menu.FindMenuDao;
import com.allen.dao.basic.menu.impl.FindMenuPageDaoImpl;
import com.allen.service.basic.menu.FindMenuPageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by Allen on 2016/12/20.
 */
@Service
public class FindMenuPageServiceImpl implements FindMenuPageService {

    @Resource
    private FindMenuDao findMenuDao;
    @Resource
    private FindMenuPageDaoImpl findMenuPageDao;

    @Override
    public PageInfo find(PageInfo pageInfo, Map<String, String> params, Map<String, Boolean> sortMap) throws Exception {
        return findMenuPageDao.findPageByWhere(pageInfo, params, sortMap);
    }
}
