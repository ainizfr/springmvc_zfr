  开发环境  
web服务器.  Apache Tomcat/9.0.5  
数据库  mysql 5.7
操作系统  Mac OS  X
java开发包  jdk 8
开发工具  Intellij IDEA
浏览器  chrom
项目说明
前端页面样式使用bootstrap3框架，所欲需要导入bootstrap3的，并在springmvc-config里面配置拦截控制
本系统使用SSM框架开发，需要框架的JAR包，还有数据库连接，JSTL标签等
Spring 4.3.13的JAR包
commons-logging-1.2.jar（Spring 依赖的JAR包）
AspectJ 1.8.13的JAR包（Spring AOP实现）
MyBatis 3.4.5及其依赖的第三方的JAR包
mybatis-spring-1.3.1.jar
mysql-connector-java-5.1.41.jar
jstl-1.2.jar
standard-1.1.2.jar
项目功能
 查询成员  添加成员  修改成员    删除成员

项目结构
Contraller   主要负责拦截用户请求，并调用业务逻辑层相应的组件的业务逻辑方法处理用户请求，并返回jsp页面
Dao   由若干个接口组成，接口的一Mapper结尾，用MyBatis映射
Mapper  查询数据库的xml文件    与Mybatis的映射文件与接口名称相对应
Service  有若干个Service接口和实现类组成。主要实现系统业务逻辑



