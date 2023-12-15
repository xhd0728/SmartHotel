# Smart_Hotel_Dev 智慧酒店系统

## 1. 简介

本项目为哈尔滨工程大学计算机科学与技术学院信息系统课程设计作业，请勿抄袭

Author: @xhd0728

本项目采用前后端分离的方式进行开发，后端采用`django+django-rest-framework`，前端采用`vue+ElementUI`，数据库使用`MySQL8.0.30`，设置有触发器和视图等，管理员登录采用`JWT==1.7.1`，采用`token`验证方式，使用`redis`进行验证码识别。

## 2. 技术栈

- 前端
  - `Vue2.7`
  - `vue-cli 5.0.8`
  - `Nodejs 18.12.0`
- 后端
  - `Python 3.8.8`
  - `Django 4.1.3`
  - `PyJWT 1.7.1`
- 数据库
  - `MySQL 8.0.30`
  - `Redis 5.0`
- 开发工具
  - `Virtual Studio Code`
  - `Jetbrain Pycharm Professional`
- 版本控制工具
  - `Git`
  - `Kleopatra`
- 部署工具
  - `docker`
  - `docker-compose 2.14.0`
  - `xshell 5`

## 3. 运行方法

### 1.常规运行（推荐）

#### 1. 数据库

在数据库中新建表`smart_hotel`，将`sql\smart_hotel.sql`文件导入数据库中

#### 2. 后端

- 确保电脑装有`python3`环境
- 进入`server\`文件夹
- 运行`python -m venv venv`命令创建虚拟环境
- 运行`.\venv\Scripts\activate`命令激活虚拟环境
- 运行`pip install -r .\requirements.txt`命令安装包
- 运行`python .\manage.py runserver 0.0.0.0:3000`命令运行后端

#### 3. 前端

- 确保电脑有`nodejs`和`npm`环境
- 进入`client\`文件夹
- 运行`npm install --registry=https://registry.npm.taobao.org`命令安装包
- 运行`npm run serve`命令启动前端环境

#### 4. 测试

- 浏览器访问网址`http://localhost:8080/`
- 默认账户名和密码都是`root`

### 2. docker方式（不稳定）

- 确保电脑有`docker`和`docker-compose`环境
- 运行`docker-compose up -d`命令生成`docker`容器
