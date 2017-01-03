<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<p />
<form id="pageForm" name="pageForm" action="${pageContext.request.contextPath}/findMenuPage/find.htm" method="post">
  <input type="hidden" id="rows" name="rows" />
  <input type="hidden" id="currentPage" name="page" value="${pageInfo.currentPage}"/>

  <label >菜单名称：</label>
  <input type="text" id="name" name="name" value="${param.name}" />&nbsp;&nbsp;&nbsp;&nbsp;

  <button type="button" id="searchBtn" class="am-btn am-btn-primary btn-loading-example"
          data-am-loading="{spinner: 'circle-o-notch', loadingText: '查询中...', resetText: '查询超时'}"
          onclick="app.searchFormPage($('#pageForm'), $('#pageForm').attr('action'), this)"><span class="am-icon-search"></span> 查询</button>
</form>
<p /><p />

<table class="am-table am-table-bordered am-table-striped am-table-hover" style="width:100%;">
  <tr>
    <td colspan="999" style="background-color:#FFF">
      <button class="am-btn am-btn-primary am-btn-sm" type="button" onClick="add()"><span class="am-icon-plus"></span> 新增菜单</button>
    </td>
  </tr>
  <tr class="am-primary">
    <th style="width: 5%;">序号</th>
    <th style="width: 30%;">菜单名称</th>
    <th style="width: 20%;">备注</th>
    <th style="width: 7%;">操作人</th>
    <th style="width: 15%;">操作时间</th>
    <th>操作</th>
  </tr>
  <c:if test="${empty pageInfo || empty pageInfo.pageResults}">
    <tr>
      <td colspan="6" align="center" style="color: red;">没有找到相关数据</td>
    </tr>
  </c:if>
  <c:forEach var="menu" items="${pageInfo.pageResults}" varStatus="status">
    <tr>
      <td align="center">${status.index+1}</td>
      <td>${menu.name}</td>
      <td>${menu.remark}</td>
      <td>${menu.operator}</td>
      <td><fmt:formatDate value="${menu.operateTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
      <td>
        <a class="am-badge am-badge-success am-radius am-text-lg" onClick="openResource(${menu.id})"><span class="am-icon-cog"></span> 关联资源</a>
        <a class="am-badge am-badge-secondary am-radius am-text-lg" onClick="edit(${menu.id})"><span class="am-icon-edit"></span> 修改</a>
        <a class="am-badge am-badge-danger am-radius am-text-lg" onClick="del(${menu.id}, this)"><span class="am-icon-trash-o"></span> 删除</a>
      </td>
    </tr>
  </c:forEach>
</table>
<%@ include file="../../common/page.jsp"%>
<script>
  function edit(id){
    var url = '${pageContext.request.contextPath}/editMenu/open.html?id='+id;
    app.openDialog(url, '编辑菜单', 600, 0.4, function(index){
      var name = $("#edit_name").val().trim();
      if(name == ""){
        app.msg("请输入名称", 1);
        return;
      }
      app.edit("${pageContext.request.contextPath}/editMenu/editor.json", $('#editForm').serialize(), index);
    });
  }

  function add(){
    app.openDialog("${pageContext.request.contextPath}/addMenu/open.html", "新增菜单", 600, 0.4, function(index){
      app.add("${pageContext.request.contextPath}/addMenu/add.json", $('#addForm').serialize(), index);
    });
  }

  function del(id, btnObj){
    app.del("您确定要删除该菜单信息？", "${pageContext.request.contextPath}/delMenu/del.json", {"id":id}, btnObj);
  }

  function openResource(id){
    app.openOneBtnDialog('${pageContext.request.contextPath}/findResourceByMenuId/open.html?menuId='+id, '关联资源', 1200, 0.8);
  }
</script>
