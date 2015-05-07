## POST keywords/create

### Resource URL

https://xxx.jetyun.com/1.1/keywords/create

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
keyword       | 关键字         | 
engines       | 搜索引擎        | 
start_time    | 开始时间		   | null为添加后即开始
end_time      | 结束时间		   | null为添加后即无失效日期

### Example Request

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

## POST keywords/update

### Resource URL

https://xxx.jetyun.com/1.1/keywords/update

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
id            | id            |
keyword       | 关键字         | 
engines       | 搜索引擎        | 
start_time    | 开始时间		   | null为添加后即开始
end_time      | 结束时间		   | null为添加后即无失效日期

### Example Request

```
{
	id: "12345678"
	keyword:"火灾",
	engines:["google","baidu","bing"],
	start_time:"1430969776"
	end_time:"1430969776"
}

```

### Example Result

```
{	
	status: "success/error"
	error_msg: "key error"
}

```

---

## POST keywords/destroy/:id

### Resource URL

https://xxx.jetyun.com/1.1/keywords/destroy/:id

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
id            | id            |


### Example Request

```
{
	id: "12345678"
}

```

### Example Result

```
{	
	status: "success/error"
	error_msg: "key error"
}

```

---

## GET keywords/show/:id

### Resource URL

https://xxx.jetyun.com/1.1/keywords/show/:id

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
id            | id            |


### Example Request

```
GET

https://xxx.jetyun.com/1.1/keywords/show.json?id=210462857140252672

```

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

# 采集

## 关键字

### Resource URL

/path/casperjs search_xxxx.js keyword="key" page-num="num"

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
keyword       | 关键字         | 
page-num      | 爬取页数       | 

### Example Request

/path/casperjs search_baidu.js keyword="火灾" page-num="2"

### Example Result

| 退出状态 | 字段类型 | 字段说明 |
|----------|----------|----------|
| success  |        0 | 正常退出 |
| error    |        1 | 异常退出 |

### Example Task

```
{
	keyword:"",
	url:["http://aaaaa","http://bb.com","http://cc.com"]
}

```

---

## 获取页面

### Resource URL

/path/casperjs  crawler-page.js url="url" path="path"

### Parameters

字段名称       | 中文名称        | 备注
:-----------: | :-----------: | :-----------:
url            | 爬取地址           |
path       | 存储路径         | 

### Example Request

/path/casperjs  crawler-page.js url="http://news.sina.com/" path="baidu/"

### Example Result

| 退出状态 | 字段类型 | 字段说明 |
|----------|----------|----------|
| success  |        0 | 正常退出 |
| error    |        1 | 异常退出 |





