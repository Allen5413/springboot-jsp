package com.allen.web.controller.menu;

import com.allen.entity.basic.Menu;
import com.allen.service.basic.menu.AddMenuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by Allen on 2016/12/22 0022.
 */
@Controller
@RequestMapping("/addMenu")
public class AddMenuController {

    @Resource
    private AddMenuService addMenuService;

    /**
     * 测试保存数据方法.
     * @return
     */
    @RequestMapping("/add")
    public String add()throws Exception{
        Menu menu = new Menu();
        menu.setName("test");
        addMenuService.add(menu);//保存数据.
        return "ok.Demo2Controller.save";
    }
}
