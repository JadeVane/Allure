[English](./README.md) | 简体中文

## 介绍

**Allure** 是一个 trilium 主题，提供了更好看、更简约的界面。

trilium 作为一款笔记应用，功能已经足够强大，但是与强大功能对应的确实上世纪画风的界面设计，使用体验很差，主要是因为这种把所有内容并排、按钮包含长文本、单调没有层次的界面并无法让人专注于应该专注的地方，所以我在使用一段时间后，花了点时间写了这个主题，希望能够提供更沉浸的体验。

目前已有三个主题样式可供选择：Allure（原版）、Allure-clear（新版）、Allure-night（新版的夜间模式），由于个人精力有限，接下来将只维护 `Allure-clear` 和 `Allure-night` 版本，此版本的 `Allure` 将是最后一个版本。

## 特点

1. 更简约的界面
1. 更多样的配色
1. 以突出样式着重显示重要内容
1. 同时提供手机端和网页端支持

## 截图

为了简化界面，Allure 主题对 trilium 上世纪的画风进行了不少改动

![screenshot](./resources/screenshot.png)

## stable（稳定版）和 radical（激进版）有什么区别

radical 版比 stable 版对界面做了更大的改动，目的是尽最大可能精简界面，部分改动可能不适用于所有人。

当前 radical 版的额外改动如下：

1. 去除 similar notes
1. 将 attrs 移至笔记内容的底部
1. 将笔记类型和操作菜单按钮移至笔记内容的右侧

## :warning: 注意 :warning:

**不要同时保存超过一个主题样式，否则多个主题的样式将相互影响，会产生不可预料的错误**

## 安装步骤

按照以下步骤安装：

1. 创建一个新笔记，类型为 `CSS`，命名为 `Allure` / `Allure-clear` / `Allure-night` *(笔记叫什么名字取决于你要使用哪个主题)*
1. 选择一个主题，然后复制主题的内容到刚才创建的笔记
    - [Allure.css](./Allure.css)
    - [Allure-clear.css](./Allure-clear.css)
    - [Allure-night.css](./Allure-night.css)
1. 添加 `#appTheme` 属性
1. 下载 [fonts](./fonts/) 里面的全部字体，然后在主题笔记右键，选择 `Import to note` 导入全部字体
1. 为每个字体添加 `#customResourceProvider="字体名称.后缀"` 属性
1. 在 Menu > Options 里面选择 `Allure` / `Allure-clear` / `Allure-night` 主题
1. 按下 `F5` 或 `Ctrl` + `R` 重载页面

<img style="width: 60%;" src="./resources/steps.png">

## 已知问题

- [ ] 搜索框无法跟随左侧面板收起
- [ ] 搜索栏和tab栏的宽度无法随页面宽度改变而改变

## 捐赠

如果你觉得本主题帮助到了你，可以考虑请我喝一杯咖啡

<a href="https://paypal.me/realwenjinyu"><img src="./resources/donate_with_paypal.jpg" height="40px"></a>

![donation](./resources/donation_zh.png)

捐赠列表：
- chee

感谢你们的捐赠，这确实激励到我了！
