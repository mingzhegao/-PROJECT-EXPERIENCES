<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://hitt.com/common/" prefix="common"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>客户管理-BootCRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">BOOT客户管理系统 v2.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			        <i class="fa fa-envelope fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		<!-- /.dropdown-messages -->
		</li>
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				    <i class="fa fa-tasks fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			        <i class="fa fa-bell fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
			<!-- /.dropdown-alerts -->
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			        <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${sessionScope.user.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="/CRM_Class1/user/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> <!-- /input-group -->
				</li>
				<li>
				    <a href="/CRM_Class1/customer/showCustomer.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 客户管理
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 客户拜访
				    </a>
				</li>
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">客户管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="post"
				      action="/CRM_Class1/customer/showCustomer.action">
					<div class="form-group">
						<label for="customerName">客户名称</label> 
						<input type="text" class="form-control" id="customerName" 
						                   value="${customer.cust_name}" name="cust_name" />
					</div>
					<div class="form-group">
						<label for="customerFrom">客户来源</label> 
						<select	class="form-control" id="customerFrom" 
						        name="cust_source">
							<option value="">--请选择--</option>

							<c:forEach items="${sessionScope.sources}" var="source">
							<option  <c:if test="${customer.cust_source==source.dict_id}">selected</c:if>  value="${source.dict_id}">${source.dict_item_name}</option>
							</c:forEach>

						</select>
					</div>
					<div class="form-group">
						<label for="custIndustry">所属行业</label> 
						<select	class="form-control" id="custIndustry"  name="cust_industry">
							<option value="">--请选择--</option>
							<c:forEach items="${sessionScope.industies}" var="industry">
								<option <c:if test="${customer.cust_industry==industry.dict_id}">selected</c:if> value="${industry.dict_id}">${industry.dict_item_name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custLevel">客户级别</label>
						<select	class="form-control" id="custLevel" name="cust_level">
							<option value="">--请选择--</option>
							<c:forEach items="${sessionScope.levels}" var="level">
								<option <c:if test="${customer.cust_level==level.dict_id}">selected</c:if> value="${level.dict_id}">${level.dict_item_name}</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCustomer()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">客户信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>客户名称</th>
								<th>客户来源</th>
								<th>客户所属行业</th>
								<th>客户级别</th>
								<th>固定电话</th>
								<th>手机</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${customers}" var="customer">
								<tr>
									<td>${customer.cust_id}</td>
									<td>${customer.cust_name}</td>
									<td>${customer.cust_source}</td>
									<td>${customer.cust_industry}</td>
									<td>${customer.cust_level}</td>
									<td>${customer.cust_mobile}</td>
								    <td>${customer.cust_phone}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCustomer(${customer.cust_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${customer.cust_id})">删除</a>
									</td>
								</tr>
						</c:forEach>
						</tbody>
					</table>
                  <!--分页显示 -->
					<div class="col-md-12 text-right">
					
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 客户列表查询部分  end-->
</div>
<!-- 创建客户模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel1">新建客户信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_customer_form">
					<input type="hidden" name="cust_create_id" value="${sessionScope.user.user_id}">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    客户名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_customerName" placeholder="客户名称" name="cust_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">客户来源</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_customerFrom"  name="cust_source">
								<option value="">--请选择--</option>
								<c:forEach items="${sessionScope.sources}" var="source">
									<option value="${source.dict_id}">${source.dict_item_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">所属行业</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_custIndustry"  name="cust_industry">
								<option value="">--请选择--</option>
								<c:forEach items="${sessionScope.industies}" var="industry">
									<option value="${industry.dict_id}">${industry.dict_item_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custLevel" style="float:left;padding:7px 15px 0 27px;">客户级别</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_custLevel" name="cust_level">
								<option value="">--请选择--</option>
								<c:forEach items="${sessionScope.levels}" var="level">
									<option value="${level.dict_id}">${level.dict_item_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">联系人</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_linkMan" placeholder="联系人" name="cust_linkman" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">固定电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_phone" placeholder="固定电话" name="cust_phone" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_mobile" placeholder="移动电话" name="cust_mobile" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_zipcode" class="col-sm-2 control-label">邮政编码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_zipcode" placeholder="邮政编码" name="cust_zipcode" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_address" placeholder="联系地址" name="cust_address" />
						</div>
					</div><input  type="hidden"  name="cust_create_id"  value="${sessionScope.user.user_id }">

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="addCustomer()">创建客户</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改客户模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改客户信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_customer_form">
					<input type="hidden" id="edit_cust_id" name="cust_id" value=""/>
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">客户名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_customerName" placeholder="客户名称" name="cust_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">客户来源</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="edit_customerFrom"  name="cust_source">
								<option value="">--请选择--</option>
								<c:forEach items="${sessionScope.sources}" var="source">
									<option value="${source.dict_id}">${source.dict_item_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">所属行业</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_custIndustry"  name="cust_industry">
								<option value="">--请选择--</option>
								<c:forEach items="${sessionScope.industies}" var="industry">
									<option value="${industry.dict_id}">${industry.dict_item_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">客户级别</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_custLevel" name="cust_level">
								<option value="">--请选择--</option>
								<c:forEach items="${sessionScope.levels}" var="level">
									<option value="${level.dict_id}">${level.dict_item_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">联系人</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_linkMan" placeholder="联系人" name="cust_linkman" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_phone" class="col-sm-2 control-label">固定电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_phone" placeholder="固定电话" name="cust_phone" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_mobile" placeholder="移动电话" name="cust_mobile" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_zipcode" class="col-sm-2 control-label">邮政编码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_zipcode" placeholder="邮政编码" name="cust_zipcode" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_address" placeholder="联系地址" name="cust_address" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="changeCustomer()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
function clearCustomer() {
	$("#new_address").val("");
	$("#new_custIndustry").val("");
	$("#new_custLevel").val("");
	$("#new_zipcode").val("");
	$("#new_customerFrom").val("");
	$("#new_customerName").val("");
	$("#new_linkMan").val("");
	$("#new_mobile").val("");
	$("#new_phone").val("");

}
function addCustomer() {
	var params=$("#new_customer_form").serialize();
	$.ajax({
		async:false,
		cache:false,
		type:"post",
		url:"/CRM_Class1/customer/addCustomer.action",
		data:params,
		success:function (res) {
			if (res){
			    alert("客户创建成功");
			    location.reload();
            }else { alert("客户创建失败");
			}

		}


	});
}


function deleteCustomer(cust_id) {
	if (confirm("确认删除该客户吗?")){
		$.ajax({
			async:false,
			cache:false,
			type:"post",
			url:"/CRM_Class1/customer/removeCustomer.action",
			data:"cust_id="+cust_id,
			success:function (res) {
				if (res){
					alert("删除成功");
					location.reload();
				} else {
					alert("删除失败");
				}
			}
		});
	}
}

function editCustomer(cust_id) {
$.post( "/CRM_Class1/customer/getCustomerById.action", "cust_id="+cust_id, function (res) {
	$("#edit_customerName").val(res.cust_name);
	$("#edit_customerFrom").val(res.cust_source);
	$("#edit_custIndustry").val(res.cust_industry);
	$("#edit_custLevel").val(res.cust_level);
	$("#edit_linkMan").val(res.cust_linkman);
	$("#edit_phone").val(res.cust_phone);
	$("#edit_mobile").val(res.cust_mobile);
	$("#edit_zipcode").val(res.cust_zipcode);
	$("#edit_address").val(res.cust_address);
	$("#edit_cust_id").val(res.cust_id);

});

}

function changeCustomer() {
	var url ="/CRM_Class1/customer/changeCustomer.action";
	var params= $("#edit_customer_form").serialize();
	$.post(url,params,function (res) {
		if (res){
			alert("客户修改成功");
			location.reload();
		}else {
			alert("客户修改失败");
		}

	});
}
</script>
</body>
</html>