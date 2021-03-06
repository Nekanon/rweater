<#import "parts/common.ftl" as c>
<@c.page>
Список пользователей
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Role</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td>
                    <#list user.roles as role>
                        ${role}<#sep>,
                     </#list>
                </td>
                <td><a href="/user/${user.id}"/>Редактирование</td>
            </tr>
        </#list>
        </tbody>
    </table>
    <span><a href="/main">Вернуться к сообщениям</a></span>
</@c.page>