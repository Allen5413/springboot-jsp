package com.allen.service.basic.menu.impl;

import com.allen.dao.basic.menu.MenuDao;
import com.allen.entity.basic.Menu;
import com.allen.service.basic.menu.AddMenuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Allen on 2016/12/22 0022.
 */
@Service
public class AddMenuServiceImpl implements AddMenuService {

    @Resource
    private MenuDao menuDao;
    @Override
    public void add(Menu menu) throws Exception {
        menuDao.save(menu);
    }
}
