## POST keywords

### Resource URL

https://xxx.jetyun.com/1.1/keywords

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
keyword       | 关键字         | 
engines       | 搜索引擎        | 
start_time    | 开始时间		   | null为添加后即开始
end_time      | 结束时间		   | null为添加后即无失效日期

### Example Request

POST
https://xxx.jetyun.com/1.1/keywords

```
[
	{
		keyword:"火灾",
		engines:["google","baidu","bing"],
		start_time:"1430969776"
		end_time:"1430969776"
	},
	{
		keyword:"反恐",
		engines:["google","baidu","bing"],
		start_time:"1430969776"
		end_time:"1430969776"
	}，
	... ...
]

```

### Example Result

```
{	
	status: "success/error"
	error_msg: "key error"
}

```

---

## PUT keywords/:id

### Resource URL

https://xxx.jetyun.com/1.1/keywords/:id

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
id            | id            |
keyword       | 关键字         | 
engines       | 搜索引擎        | 
start_time    | 开始时间		   | null为添加后即开始
end_time      | 结束时间		   | null为添加后即无失效日期

### Example Request

PUT
https://xxx.jetyun.com/1.1/keywords/210462857140252672

### Example Result

```
{	
	status: "success/error"
	error_msg: "key error"
}

```

---

## DELETE keywords/:id

### Resource URL

DELETE

https://xxx.jetyun.com/1.1/keywords/:id

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
id            | id            |


### Example Request

https://xxx.jetyun.com/1.1/keywords/210462857140252672

### Example Result

```
{	
	status: "success/error"
	error_msg: "key error"
}

```

---

## GET keywords/:id

### Resource URL

https://xxx.jetyun.com/1.1/keywords/:id

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
id            | id            |


### Example Request

GET

https://xxx.jetyun.com/1.1/keywords/210462857140252672

### Example Result

```
{
	id: "210462857140252672"
	keyword:"火灾",
	engines:["google","baidu","bing"],
	start_time:"1430969776"
	end_time:"1430969776"
}

```

---

# 推送数据

## POST /path/xxx

### Resource URL

https://xxx.jetyun.com/1.1/path/xxx

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
keyword       | 关键字         | 
page-num      | 爬取页数       | 

### Example Request

POST

https://xxx.jetyun.com/1.1/path/xxx

```
[
	{
		search_keyword:"火灾",
		engine:"baidu",
		url: "http://news.sina.com.cn/c/2015-05-08/023931806591.shtml",
		create_at:"2015-05-08 02:39:36",
		source: "news.sina.com.cn",
		keywords:"李克强,创业",
		title: "李克强:加大投入让科学家待遇匹配贡献|李克强|创业_新浪新闻",
		description: "5月7日，中共中央政治局常委、国务院总理李克强先后来到中国科学院和北京中关村创业大街考察调研。他强调，推动大众创业、万众创新是充分激发亿万群众智慧和创造力的重大改革举措，是实现国家强盛、人民富裕的重要途径，要坚决消除各种束缚和桎梏，让创业创新",
		og_title: "李克强:加大投入让科学家待遇匹配贡献",
		og_description: "李克强:加大投入让科学家待遇匹配贡献",
		content: "5月7日，中共中央政治局常委、国务院总理李克强先后来到中国科学院和北京中关村创业大街考察调研。他强调，推动大众创业、万众创新是充分激发亿万群众智慧和创造力的重大改革举措，是实现国家强盛、人民富裕的重要途径，要坚决消除各种束缚和桎梏，让创业创新......"					
	},
	......
]

```

### Example Result

| 退出状态 | 字段类型 | 字段说明 |
|----------|----------|----------|
| success  |      200 | 正常退出 |
| error    |  400-600 | 异常退出 |


---





