<%-- 
    Document   : clientesAlterar
    Created on : 17/09/2018, 20:24:41
    Author     : Itay
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page errorPage="/erro.jsp"%>
<%@page import="com.ufpr.tads.web2.beans.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="com.ufpr.tads.web2.beans.LoginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="login" class="com.ufpr.tads.web2.beans.LoginBean" scope="session"/>

        <c:if test="${empty sessionScope.login}">
            <jsp:forward page="/index.jsp">
                <jsp:param name="msg" value="Usuário deve se autenticar para acessar o sistema"/>
            </jsp:forward>
        </c:if>
        
        <h1>Dados do cliente</h1>
        
        <jsp:useBean id="alterar" class="com.ufpr.tads.web2.beans.Cliente" scope="application">
            
        S{(<jsp:getProperty name="alterar" property="*"/> != null)
            <h1>Dados do cliente</h1>

            <form action="ClientesServlet?action=update" method="POST">
                Nome: <input type="text" name="nome" value=<jsp:getProperty name="alterar" property="nome_cliente"/> > <br/>
                Id: <input type="text" name="id" value=<jsp:getProperty name="alterar" property="id_cliente"/> ><br/>
                CPF: <input type="text" name="cpf" value= <jsp:getProperty name="alterar" property="cpf_cliente"/> ><br/>
                Email: <input type="text" name="email" value= <jsp:getProperty name="alterar" property="email_cliente"/>><br/>
                Data: <input type="text" name="data" value= <jsp:getProperty name="alterar" property="data_cliente"/> ><br/>
                Rua: <input type="text" name="rua" value= <jsp:getProperty name="alterar" property="rua_cliente"/> ><br/>
                Número: <input type="text" name="numero" value= <jsp:getProperty name="alterar" property="nr_cliente"/> ><br/>
                CEP: <input type="text" name="cep" value= <jsp:getProperty name="alterar" property="cep_cliente"/> ><br/>

                Cidade:
                <select name="cidade" <jsp:getProperty name="alterar" property="cidade_cliente"/>>
                    <option value="">Selecione</option>
                        <c:forEach items="${listacidades}" var="cidade">  
                            <option value="${cidade.id_cidade}">${cidade.nome_cidade}</option>
                        </c:forEach>
                </select>

                <br/>

                Estado:
                <select name="uf" <jsp:getProperty name="alterar" property="estado_cliente"/>>
                    <option value="">Selecione</option>
                        <c:forEach items="${listaestados}" var="estado">  
                            <option value="${estado.id_estado}">${estado.nome_estado}</option>
                        </c:forEach>
                </select>

               <br/><br/>

                <input type="submit" value="Alterar"> <input type="submit" value="Cancelar" formaction="ClientesServlet">
            </form>
         
        :

            <h1>Novo do cliente</h1>

            <form action="ClientesServlet?action=new" method="POST">
                Nome: <input type="text" name="nome" > <br/>
                CPF: <input type="text" name="cpf" ><br/>
                Email: <input type="text" name="email" ><br/>
                Data: <input type="text" name="data" ><br/>
                Rua: <input type="text" name="rua" ><br/>
                Número: <input type="text" name="numero" ><br/>
                CEP: <input type="text" name="cep" ><br/>


                Cidade:
                <select name="cidade">
                    <option value="">Selecione</option>
                        <c:forEach items="${listacidades}" var="cidade">  
                            <option value="${cidade.id_cidade}">${cidade.nome_cidade}</option>
                        </c:forEach>
                </select>

                <br/>

                Estado:
                <select name="uf" >
                    <option value="">Selecione</option>
                        <c:forEach items="${listaestados}" var="estado">  
                            <option value="${estado.id_estado}">${estado.nome_estado}</option>
                        </c:forEach>
                </select>

                <br/><br/>

                <input type="submit" value="Salvar"> <input type="submit" value="Cancelar" formaction="ClientesServlet">
            </form>
        }
        </jsp:useBean>
            
    </body>
</html>
