function openWhich(Name,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = '#F8F8F8';
    }
    document.getElementById(Name).style.display = "block";
    elmnt.style.backgroundColor = color;

}
// 触发 id="defaultOpen" click 事件
document.getElementById("defaultOpen").click();