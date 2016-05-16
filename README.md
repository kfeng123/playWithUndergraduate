# ReadMe

大家好，我是助教，这里是我建立的统计计算课程的repo。请大家把作业交到这个上面来。
#### How it works

请同学们首先注册github的账号。下载git软件，github好像有一系列新手教程的吧。

把这个repo fork到自己的账号里，方法是：点击右上角的Fork按钮。

这是，你的账号里有一个repo的复制了，网站应该会自动跳转到xxx/playWithUndergraduate，其中xxx是你的账号。

我们的工作模式是，你们在自己账号中的repo里写作业，然后向我提交pull request来交作业。

首先，打开git bash，切换到你的硬盘的合适的目录(比如d盘):
```
    cd d/
```

输入

```
   git clone https://github.com/xxx/playWithUndergraduate 
```
其中xxx是你的账号。

完毕后你会发现repo已经被克隆到你的硬盘里了，进入这个repo
```
    cd playWithUndergraduate
```

然后添加一个名叫upstream的remote，保存我(助教)的repo:
```
    git remote add upstream https://github.com/kfeng123/playWithUndergraduate
```

你们在repo里添加一个自己的目录，可以以自己的学号或姓名命名：
```
    mkdir TA123456
```
然后进入这个目录：
```
    cd TA123456
```
在这份目录里新建一个文本文件，格式为markdown(.markdown或.md)。然后用markdown(语法请自行百度，5分钟以内就可以学会吧)写一份简短的自我介绍，可以只有一两行，向你的同学和我打声招呼～

以后你们写作业都放到你们自己建立的目录里，不要动其他人的目录，防止发生conflict。

现在你写好了你的个人介绍。请先更新你的repo防止冲突，然后请把repo推送到你的账号下：
```
    git pull upstream master
    git add .
    git commit -m "hello world!"
    git push origin master
``
然后在你的repo（不是我的repo！！）里已经有了你刚才写的东西了。然后请你点击New pull request向我发送pull request。当我看到你的pull request并审阅你的pull request觉得没问题时，我会接受你的pull request。这样我的repo里也有了你的更改。

这就完成了作业的提交。这也是在github上为开源repo贡献代码的方式。

