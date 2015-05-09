## 添加关键字

### Resource URL

POST 

https://xxx.jetyun.com/v1/search_requests

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
keyword       	   | 关键字         | 
crawl_start_at    | 开始时间		   | null为添加后即开始
crawl_end_at      | 结束时间		   | null为添加后即无失效日期


### Example Result

```
HTTP/1.1 201 Created
Content-Type: application/json

{
	id: 210462857140252672
	keyword:"火灾",
	crawl_start_at:"20150510T00:00:00+08"
	crawl_end_at:"20150510T00:00:00+08"
}

```

---

## DELETE keywords/:id

### Resource URL

DELETE

https://xxx.jetyun.com/v1/keywords/:id

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
id            | id            |


### Example Request

https://xxx.jetyun.com/v1/keywords/210462857140252672

### Example Result

```
HTTP/1.1 200 OK 退出成功

```

---

# 推送数据

## 推送搜索结果数据

### Resource URL

https://xxx.jetyun.com/v1/xxx/search_results


### Example Request

POST

https://xxx.jetyun.com/v1/xxx/search_results

```
[
	{
		request: {
			id: 123123
		}
		id: 11717171717 
		keyword:"火灾",
		engine:"baidu",
		crawl_at:"20150510T00:00:00+08",
		url: "http://news.sina.com.cn/c/2015-05-08/023931806591.shtml",
		title: "火灾事故案例分析_火灾案例_事故案例_安全管理网",
		description: "收录有关火灾事故案例分析文章资料,包括案例分析范文、案例分析格式、案例分析报告。... 03-12 [ 文章] 高密市海屹精细化工科技有限公司“6.2”火灾事故 03-12 [..."					
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

## 网页内容数据

### Resource URL

https://xxx.jetyun.com/v1/xxx/html_content


### Example Request

POST

https://xxx.jetyun.com/v1/xxx/html_content

```

{
	search_result:{
		id: 11717171717,
		keyword:"火灾"
	},
	url: "http://news.sina.com.cn/c/2015-05-08/023931806591.shtml",
	crawl_at:"20150510T00:00:00+08",
	keywords:"李克强,创业",
	title: "李克强:加大投入让科学家待遇匹配贡献|李克强|创业_新浪新闻",
	description: "5月7日，中共中央政治局常委、国务院总理李克强先后来到中国科学院和北京中关村创业大街考察调研。他强调，推动大众创业、万众创新是充分激发亿万群众智慧和创造力的重大改革举措，是实现国家强盛、人民富裕的重要途径，要坚决消除各种束缚和桎梏，让创业创新",
	body: "<div>5月7日，中共中央政治局常委、国务院总理李克强先后来到中国科学院和北京中关村创业大街考察调研。他强调，推动大众创业、万众创新是充分激发亿万群众智慧和创造力的重大改革举措，是实现国家强盛、人民富裕的重要途径，要坚决消除各种束缚和桎梏，让创业创新......</div>...."					
}

```

### Example Result

| 退出状态 | 字段类型 | 字段说明 |
|----------|----------|----------|
| success  |      200 | 正常退出 |
| error    |  400-600 | 异常退出 |


---





