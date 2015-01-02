function addShoppingCart()
{
		var num = $("#productNumber").val();
		var checkNumberType = /^\d+$/;
		if(!checkNumberType.test(num)) {
			alert("请输入正确的购买数量");
			$("#productNumber").focus();
			return;
		}
		var _temp = "${requestScope.product.color_id}";
		if(_temp!=null&&_temp!="") {
			var checkColorSelected = $("#buyfmcolorid").val();
			if(checkColorSelected==null||checkColorSelected=="") {
				alert("请选择商品颜色");
				return;
			}
		}
		$("#buyfmnum").val(num);
		var url = root + "/ajaxAddProduct.action";
		$.post(
			url,
			{"product.id":$("#buyfmid").val(),
				"product.color_id":$("#buyfmcolorid").val(),
				"product.color_name":$("#buyfmcolorname").val(),
				"product.number":$("#buyfmnum").val(),
				"product.price":$("#price").val(),
				"product.discount":$("#discount").val(),
				"product.name" : $("#name").val()}
			,function (data){
				if(data=="yes")
				{
					alert("添加成功");
				}
				else
				{
					alert("添加失败");
				}
			},"json"
		);
}

function removeShoppingCart(id,color_id)
{
	
	var url = root + "/ajaxRemoveProduct.action";
	$.post(
		url,
		{
			"product.id":id,
			"product.color_id":color_id
		}
		,function (data){
			if(data=="yes")
			{
				location.reload();
			}
		},"json"
	);
}