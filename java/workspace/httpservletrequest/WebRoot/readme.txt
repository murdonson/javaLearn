1.前端页面发送的请求方式应当和无穷需要的请求方式一致
	- 服务器需要前端发送POST请求，若发送GET请求，服务器应当提示错误信息。
	- 服务器需要前端发送GET请求，若发送POST请求，服务器应当提示错误信息。
	
2.怎么完成以上的需求？
	- 在程序中想办法回去请求是什么类型的请求，POST？还是GET？
	- 当我们获取到请求方式后，在程序中可以使用if进行判断
		if("POST".equals(method)){
		}else if("GET".equals(method)){
		}
		
3.怎么在程序中获取请求方式？
	- 重点：HTTP的请求协议全部信息被自动封装到javax.servlet.httpServletRequest对象中
	- 在HttpServeltRequest接口类型中有一个方法叫：String getMethod()可以获得请求方式
	- public interface javax.servlet.http.HtpServletRequest extends ServletRequest{}
	 	HttpServletRequest hRequest = (HttpServletRequest)req;
		HttpServletResponse hResponse = (HttpServletResponse)res;

4.以上代码在每一个Serlvet中都要写，怎么才能减少代码编写量？
	HttpServlet继承GenericServlet类
	在service中强制转换SerlvetRequest为HttpServletRequest，ServletResponse为HttpServletResponse
	在service中调用service(HttpServletRequest，HttpServletResponse)
	在service(HttpServletRequest，HttpServletResponse)调用用if(("GET或者POST").equals.request.getMethod)调用doGet和doPost方法
	在doGet和doPost方法中都报错
	程序员写的类继承HttpServlet，根据需求重写doGet或doPost，若请求方式和重写方法不一致，会调用原写了报错的方法
	
重点：编写一个Serlvet类要继承HttpSerlvet，若浏览器是get请求请重写doGet方法，post请求请重写doPost方法
	doGet方法和doPost方法可以等同看做main方法
	但浏览器发送的请求方式和后台处理的方式不一致的话，会报错误：405
	
HttpServlet的设计思想：模板方法设计模式【行为型设计模式】
	HttpServlet是一个模板类，其中service(HttpServletRequest，HttpServletResponse)方法是典型的模板方法
	该方法中的核心算法骨架，doGet、doPost.....具体的实现步骤延迟到子类中完成
	
	作用： 1.核心算法得到保护
		 2.核心算法得到复用
		 3.在不改变算法的前提之下，却可以重新定义算法的具体实现
	
	
	
	
	
	
	
	
	





