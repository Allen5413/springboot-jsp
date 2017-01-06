<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form class="am-form" id="addResourceForm" name="addResourceForm" method="post">
  <input type="hidden" name="menuId" value="${param.menuId}" />
  <div class="am-g am-margin-top">
    <div class="am-u-sm-3 am-text-right"><label >登录名：</label></div>
    <div class="am-u-sm-4">
      <input class="am-input-sm" type="text" placeholder="输入登录名" required id="add_loginName" name="loginName"  />
    </div>
    <div class="am-u-sm-5">*必填，不可重复</div>
  </div>

  <div class="am-g am-margin-top">
    <div class="am-u-sm-3 am-text-right"><label >姓名：</label></div>
    <div class="am-u-sm-4">
      <input class="am-input-sm" type="text" placeholder="输入姓名" required id="add_name" name="name"  />
    </div>
    <div class="am-u-sm-5">*必填，不可重复</div>
  </div>

  <div class="am-g am-margin-top">
    <div class="am-u-sm-3 am-text-right"><label >电话：</label></div>
    <div class="am-u-sm-4">
      <input class="am-input-sm" type="text" placeholder="输入电话" required id="add_phone" name="phone"  />
    </div>
    <div class="am-u-sm-5"></div>
  </div>

  <div class="am-g am-margin-top">
    <div class="am-u-sm-3 am-text-right"><label >状态：</label></div>
    <div class="am-u-sm-4">
      <div class="am-btn-group" data-am-button="">
        <label class="am-btn am-btn-primary am-btn-s">
          <input type="radio" name="state" value="1"> 启用
        </label>
        <label class="am-btn am-btn-primary am-btn-s">
          <input type="radio" name="state" value="2"> 停用
        </label>
      </div>
    </div>
    <div class="am-u-sm-5"></div>
  </div>

  <div class="am-g am-margin-top-sm">
    <div class="am-u-sm-3 am-text-right"><label >备注：</label></div>
    <div class="am-u-sm-9">
      <textarea rows="6" placeholder="输入备注" name="remark"></textarea>
    </div>
  </div>
</form>