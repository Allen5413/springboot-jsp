package com.allen.dao.user.user;

import com.allen.dao.BaseQueryDao;
import com.allen.entity.user.User;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Allen on 2017/1/4 0004.
 */
@Service
public class FindUserDao extends BaseQueryDao {

    /**
     * 通过登录名和密码查询用户
     * @param loginName
     * @param pwd
     * @return
     * @throws Exception
     */
    public User findByLoginNameAndPwd(String loginName, String pwd)throws Exception{
        String fields = "u";
        String[] tableNames = {"User u"};
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("loginName",loginName);
        paramsMap.put("pwd", pwd);
        String[] paramsIf = {"=", "="};
        return (User) super.findByHql(tableNames, fields, paramsMap, paramsIf, null, User.class);
    }
}
