<%-- 
    Document   : schedule
    Created on : Jun 29, 2022, 4:20:57 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div>Instructor: A</div>
            <div >
                <table class="table table-bordered text-center">
                    <thead class="thead-light">
                        <tr>
                            <th rowspan="1" >Time
                                <select>
                                    <option>05/06/2022 - 11/06/2022</option>
                                    <option>12/06/2022 - 18/06/2022</option><!-- comment -->
                                    <option>19/06/2022 - 25/06/2022</option><!-- comment -->
                                    <option>26/06/2022 - 2/07/2022</option><!-- comment -->
                                    
                                </select>
                            </th>
                            <th>Mon</th>
                            <th>Tue</th>
                            <th>Wed</th>
                            <th>Thu</th>
                            <th>Fri</th>
                            <th>Sat</th>
                            <th>Sun</th>

                        </tr>
                        <tr>
                            <c:forEach items="${requestScope.datesinweek}" var="d">
                                <th>${d}</th>
                                </c:forEach>
                        </tr>
                    </thead>
                    <tbody >
                        <c:forEach items="${requestScope.timeslots}" var="t">     
                            <tr>   
                                <td>${t.timeslotID}</td>
                                <c:forEach items="${requestScope.datesinweek}" var="d" >
                                    <c:set var = "flag" value = "false"/>
                                    <c:forEach items="${requestScope.sessions}" var="se">

                                        <c:if test="${(se.timeslotID.timeslotID eq t.timeslotID) and (se.sessionDate eq d)}">
                                            <c:set var = "flag" value = "true"/>
                                            <td>
                                                <span>${se.groupID.courseID.courseName}</span>
                                                <div>at 
                                                    <span>${se.roomID.roomID}</span>
                                                </div>
                                                <div>${se.timeslotID.start}-${se.timeslotID.end}</div>
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                    <c:if test="${not flag}">
                                        <td></td>
                                    </c:if>
                                </c:forEach>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
