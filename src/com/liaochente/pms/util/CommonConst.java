package com.liaochente.pms.util;

public class CommonConst {
	public static final String PRODUCT_INFO = "__PRODUCT__INFO__CACHE__";

	/* 以下为相关状态码定义 */

	/**
	 * 查询产品条件-默认全部
	 */
	public static final int PRODUCT_DEFAULE_SEARCH = 0;

	/**
	 * 状态码-操作成功
	 */
	public static final int HANDLE_STATUS_YES = 1;

	/**
	 * 状态码-操作失败
	 */
	public static final int HANDLE_STATUS_NO = 0;

	/* 以下为Ajax操作状态码 */

	public static final String AJAX_HANDLE_STATUS_YES = "yes";

	public static final String AJAX_HANDLE_STATUS_NO = "no";

	/* 以下为SESSION中相关Key定义 */

	/**
	 * 验证码存放在MAP中的KEY
	 */
	public static final String SECURYTY_CODE = "securyty_code";

	/**
	 * 购物车存放在Session中的Key
	 */
	public static final String SHOPPING_CART_KEY = "cart";

	/**
	 * 存放在SESSION中 登陆前上一个页面URL的KEY
	 */
	public static final String LAST_PAGE_KEY = "last_page_key";

	/**
	 * 用户登录信息存在SESSION中的KEY
	 */
	public static final String USER_INFO_KEY = "user";

	/**
	 * 上传状态对象存放在Session中的KEY
	 */
	public static final String FILE_UPLOAD_STATUS_KEY = "_file_upload_status_key";

	/* 以下为相关路径常量定义 */

	/**
	 * 用户头像图片上传保存路径
	 */
	public static final String IMAGES_HEAD_SAVE_PATH = "images/head/";

	/* 以下为相关类型常量定义 */

	/**
	 * 时间格式化类型 yyyy-MM-dd
	 */
	public static final int DATE_FORMAT_TYPE_ONE = 1;

	/**
	 * 时间格式化类型 yyyy-MM-dd hh:mm:ss
	 */
	public static final int DATE_FORMAT_TYPE_TWO = 2;

	/**
	 * 订单状态-交易状态
	 */
	public static final int ORDER_TRADE_STATUS = 0;

	/**
	 * 订单状态-待确认状态
	 */
	public static final int ORDER_UNCONFIRMED_STATUS = 1;

	/**
	 * 订单状态-确认收货状态
	 */
	public static final int ORDER_AFFIRM_STATUS = 2;

	/**
	 * 订单状态-待评价状态
	 */
	public static final int ORDER_WAITEVALUATE_STATUS = 2;

	/* 以下为相关Map key常量定义 */

	public static final String SON_ORDER_DETAIL_KEY = "son_order_detail_list";

	/* 缓存数据存放KEY */
	/**
	 * 字典表
	 */
	public static final String CACHE_KEY_DICTIONARY = "t_dictionary";

	/**
	 * 颜色表
	 */
	public static final String CACHE_KEY_COLOR = "product_color";

	/**
	 * 品牌表
	 */
	public static final String CACHE_KEY_BRAND = "product_brand";

	/**
	 * 类别表
	 */
	public static final String CACHE_KEY_CLASS = "product_class";

}
