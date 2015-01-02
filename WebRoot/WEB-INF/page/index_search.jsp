<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
	<div class="row">
						<form action="product.action" class="form-search" method="post">
							<div class="input-append">
								<select id="searchHelp.productClass" name="searchHelp.productClass" class="span2">
									<option value="">
										全部
									</option>
									<s:iterator value="#request.classList" status="stuts">
										<option value='<s:property value="id"/>'>
											<s:property value="name" />
										</option>
									</s:iterator>
								</select>
								<input class="span3" id="searchHelp.name" name="searchHelp.name" type="text"
									value="${searchHelp.name}">

								<button class="btn" type="submit">
									<s:text name="label4"></s:text>
								</button>
							</div>
						</form>
					</div>