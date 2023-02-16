
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1  class="w-100 d-flex justify-content-center mt-5">Администрирование</h1>
<div class="w-100 d-flex justify-content-center mt-4">
    <div class="card border-0" style="width: 24rem;">
        <form action="updateRole" method="POST">
            <b>Пользователи:</b> 
            <select class="form-select border-0" name="userId">
                <option selected disabled>Выберите пользователя</option>
                <c:forEach var="user" items="${listUsers}">
                    <option value="${user.id}">
                        ${user.login} Роли:
                        <c:forEach var="role" items="${user.roles}">
                            ${role.roleName},
                        </c:forEach>
                    </option>

                </c:forEach>
            </select>
            <b>Роли:</b> 
            <select class="form-select border-0" name="roleId">
                <option selected disabled>Выберите роль</option>
                <c:forEach var="role" items="${listRoles}">
                    <option value="${role.id}">
                        ${role.roleName}
                    </option>
                </c:forEach>
            </select>
            <p class="w-100 mt-3 d-flex justify-content-between">
                <input type="submit" name="action" value="Добавить">
                <input type="submit" name="action" value="Удалить">
            </p>
        </form>
    </div>
</div>
    
