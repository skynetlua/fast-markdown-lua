local markdown = require "markdown"

local test_txt = [[
![alt](./money.png \"图片title\")
![alt](./money.png)
![]()
[接名](./money.png '超链接title')
**这是倾斜的文字*内==容
|服务器工具表|
*这是倾斜的文字*内==容|表头|表头
---|:--:|---:
**这是倾斜的文字*内==容|内容|内容
**这是倾斜的文字*内==容|列表**这是加粗的文字***这是倾斜的文字*内==text==容

1. 列表**这是加粗的文字***这是倾斜的文字*内==text==容
1. 列表内容
   + 列表内容
   + 列表内容
1. 列表内容
* 列表内容1
* 列表内容2
* 列表内容3
- 列表内容
- 列表内容
+ 列表内容
   1. 列表内容
   2. 列表内容

`asga`
 asd`asga`asdf
![alt](./money.png '图片title')
[接名](地址 '超链接title')
这是加**这是加粗的文字**这wer是加
**这是加粗的文字**这是加
*这是倾斜的文字*
***这是斜体加粗的文字***
~~这是加删除线的文字~~

fas==text==sfa

```javascript
function $initHighlight(block, cls) {
    try {
        if (cls.search(/\bno\-highlight\b/) != -1)
            return process(block, true, 0x0F) +
                \` class=\"${cls}\"\`;
    } catch (e) {
        /* handle exception */
    }
    for (var i = 0 / 2; i < classes.length; i++) {
        if (checkCondition(classes[i]) === undefined)
            console.log('undefined');
    }
}

export  $initHighlight;
(```)


---
***
# 这是一级
## 这是二级

### 这是三级
#### 这是四级
##### 这是五级
###### 这是六级
>这是引用的内容

]]


local start_ts = os.time()
for i=1,1000 do
    local retval = markdown(test_txt)
end
local end_ts = os.time()
print("cost time:",end_ts-start_ts, "second")

--result
--cost time:2 second
