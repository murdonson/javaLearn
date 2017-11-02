<%@page contentType="text/html;charset=UTF-8" %>
<%--
	1.这是jsp专业注释，使用这种方式，不会被翻译到.java源文件中
	2.在jsp文件中编写的所有HTML,CSS,JavaScript都会被自动翻译到Servlet的service中的out.write("在这里")
	3.关于JSP的小脚本scriptlet：
		<%
			java语句;
			java语句;
			java语句;
			java语句;
		%>
	4.小脚本的java语句会被编译到Servlet的service方法中，所以小脚本职工必须编写java语句，java语句以分号结束
	5.所谓的jsp规范，就是SUN制定后的一些编译规则，按照翻译规则进行翻译，生产相对应的java程序，不同的web服务器翻译的结果完全相同
	6。小脚本的数量随意，可以多个
	7.小脚本编写的java程序出现子啊service方法中，有执行顺序
	
	8.声明
		<%! 
			实例变量；
			静态变量；
			方法；
			静态语句块；
			构造函数；
			。。。
		%>
		注：
			声明块中的java程序会被jsp翻译引擎翻译到service方法之外
			声明快中不能直接编写java语句，除非是变量的声明
			
	9.表达式
		<%out.print(i);%>等同<%=i%>
 --%>
 <%! 
 	int a = 10;
 	
 %>
 <% 
 	int i=10;
 %>
<html>
	<%
		System.out.println(i);
		System.out.println(a);
	%>
	<body>
		<%for(i=1;i<7;i++){ %>
		<h<%=i %>>标题</h<%=i %>>
		<%} %>
	</body>
</html>