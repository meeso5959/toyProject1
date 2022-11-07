<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<!-- fullcalendar css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">

<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<!-- fullcalendar ��� �������� script -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/vendors/themify-icons/css/themify-icons.css">
    <!-- Bootstrap + JoeBLog main styles -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/joeblog.css">
</head>
<body>

    <!-- Page Second Navigation -->
    <nav class="navbar custom-navbar navbar-expand-md navbar-light bg-primary sticky-top">
        <div class="container">
            <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">                     
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="no-sidebar.html">No Sidebar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="single-post.html">Single Post</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
                <div class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="calendar.do" class="ml-4 btn btn-dark mt-1 btn-sm">�޷����ΰ��</a>
                    </li>
                </div>
            </div>
        </div>
    </nav>
<div id='calendar'></div>


<script type="text/javascript">

document.addEventListener('DOMContentLoaded', function() {
	var calendarEl = document.getElementById('calendar');
	var calendar = new FullCalendar.Calendar(calendarEl, {
		initialView : 'dayGridMonth', // �ʱ� �ε� �ɶ� ���̴� Ķ���� ȭ��(�⺻ ����: ��)
		headerToolbar : { // ����� ǥ���� �� ��
			start : 'prev next today',
			center : 'title',
			end : 'dayGridMonth,dayGridWeek,dayGridDay'
		},
		titleFormat : function(date) {
			return date.date.year + '�� ' + (parseInt(date.date.month) + 1) + '��';
		},
		//initialDate: '2021-07-15', // �ʱ� ��¥ ���� (�������� ������ ���� ��¥�� ���δ�.)
		selectable : true, // �޷� ���� �巡�� ��������
		droppable : true,
		editable : true,
		nowIndicator: true, // ���� �ð� ��ũ
		locale: 'ko' // �ѱ��� ����
	});
	calendar.render();
});


</script>


	<!-- core  -->
    <script src="<%=request.getContextPath()%>/resources/assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/vendors/bootstrap/bootstrap.bundle.js"></script>

    <!-- JoeBLog js -->
    <script src="<%=request.getContextPath()%>/resources/assets/js/joeblog.js"></script>



</body>
</html>