<%-- 
    Document   : updateProduct
    Created on : Jul 24, 2020, 3:58:40 PM
    Author     : Admin
--%>

<%@page import="com.Node.DAO.ProductDAO"%>
<%@page import="com.Node.Entity.Product"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="updateProduct.jsp" method="post">
            <table>
                <tr>
                    <td>
                        <h1>EDIT PRODUCT</h1> 
                    </td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td><input type="number" value="${param.pId}" name="txtID"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" value="${param.pName}" name="txtName" />
                        <br></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" value="${param.pPrice}" name="txPrice"></td>
                </tr>
                <tr>
                    <td>Brand</td>
                    <td><input type="text" value="${param.pBrand}" name="txtPBrand"></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td><input type="text" value="${param.pType}" name="txtType"></td>
                </tr>
                <tr>
                    <td>Category</td>
                    <td><input type="text" value="${param.pCategory}" name="txtCategory"></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="number" value="${param.pQuantity}" name="txtQuantity"></td>
                </tr>
                <tr>
                    <td>Color</td>
                    <td><input type="text" value="${param.color}" name="txtColor"></td>
                </tr>
                <tr>
                    <td>Length</td>
                    <td><input type="text" value="${param.length}" name="txtLength"></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><input type="text" value="${param.pDescription}" name="txtDescription"></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td><input type="number" value="${param.pStatusId}" name="txtStatus"></td>
                </tr>
                <tr>
                    <td>ImageID</td>
                    <td><input type="text" value="${param.pImageID}" name="txtImgID"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="btn" value="Update"></td>
                </tr>
            </table>
            <c:if test="${!empty param.txtID}">
                <sql:setDataSource driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost/jewellery"
                                   user="root" password=""
                                   var="conn" scope="session"/>
                <sql:update var="update" dataSource="${conn}">
                    UPDATE `product` SET `pName`=?,`pSalePrice`=?,`pBrand`=?,`pType`=?,`pCategoryId`=?,`pQuantity`=?,`color`=?,`length`=?,`pDescription`=?,`pStatusId`=?,`pImageID`=? WHERE `pId`=?
                    <sql:param value="${param.txtName}"/>
                    <sql:param value="${param.txtPrice}"/>
                    <sql:param value="${param.txtBrand}"/>
                    <sql:param value="${param.txtType}"/>
                    <sql:param value="${param.txtCategory}"/>
                    <sql:param value="${param.txtQuantity}"/>
                    <sql:param value="${param.txtColor}"/>
                    <sql:param value="${param.txtLength}"/>
                    <sql:param value="${param.txtDescription}"/>
                    <sql:param value="${param.txtStatus}"/>
                    <sql:param value="${param.txtImgID}"/>
                    <sql:param value="${param.txtID}"/>
                </sql:update>
            </c:if>
            <%
                if (request.getParameter("btn") != null) {
                    response.sendRedirect("AdminUI.jsp");
                }
            %>
        </form>

    </body>
</html>
