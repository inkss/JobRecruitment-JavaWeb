function clockon(bgclock) {
    var now = new Date();
    var year = now.getYear();
    var month = now.getMonth();
    var date = now.getDate();
    var day = now.getDay();
    var hour = now.getHours();
    var minu = now.getMinutes();
    var sec = now.getSeconds();
    var week;
    month = month + 1;
    if (month < 10) month = "0" + month;
    if (date < 10) date = "0" + date;
    if (hour < 10) hour = "0" + hour;
    if (minu < 10) minu = "0" + minu;
    if (sec < 10) sec = "0" + sec;
    var arr_week = new Array("������", "����һ", "���ڶ�", "������", "������", "������", "������");
    week = arr_week[day];
    var time = "";
    time = year + "��" + month + "��" + date + "�� " + week + " " + hour + ":" + minu + ":" + sec;
    if (document.all) {
        bgclock.innerHTML = "<b>" + time + "</b>"
    }
    var timer = setTimeout("clockon(bgclock)", 200);
} 
