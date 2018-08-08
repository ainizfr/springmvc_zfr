@Controller用于标记-一个类，使用它标记的类就是- -个SpringMVC Controller对象，即一个控制器类。<br>
@RequestMapping注解的方法才是真正处理请求的处理器。为了保证Spring能找到控制器，需要完成两件事情:<br>
  1.在Spring MVC的配置文件的头文件中引入spring-context。<br>
  2.使用`<context:component-scan/>`元素，该元素的功能为:启动包扫描功能，以便注册带有@Controller. 
  @Service、@repository. @Component等注解的类成为Spring的Bean。base-package属性指定了需要扫描的
  类包，类包及其递归子包中所有的类都会被处理。配置文件如下所示:<BR>
  `<context : component- scan base-package="org. fkit. controller"/>`<br>
  应该将所有控制器类都放在基本包下，并且指定扫描该包，即**org.fkit.controller,** 而不应该指定扫描org.fkit 包，
    以免Spring MVC扫描了无关的包。<br>
@ModelAttribute 修饰的方法会优先与login调用，该方法用于接收前台jsp页面传入的参数，它把请求参数值赋给对应变量，可以
向方法重的Model添加对象