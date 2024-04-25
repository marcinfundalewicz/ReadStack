<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>ReadStack</title>
    <link rel="icon" href=https://graphicriver.img.customer.envatousercontent.com/files/66261970/books+pr.jpg?auto=compress%2Cformat&fit=crop&crop=top&w=590&h=590&s=a52805715e8a39da7aa9271904878e5e>
    <%@ include file="../segments/stylesheets.jspf" %>
</head>
<body>
<div class="container">
    <%@ include file="../segments/header.jspf" %>

    <aside class="categories">
        <ul>
            <c:forEach var="category" items="${requestScope.categories}">
                <li><a href="${pageContext.request.contextPath.concat('/category?id=').concat(category.id)}">${category.name}</a></li>
            </c:forEach>
        </ul>
    </aside>

    <main>
        <%@ include file="../segments/discovery-list.jspf" %>
    </main>
    <%@ include file="../segments/footer.jspf" %>
</div>
</body>
</html>