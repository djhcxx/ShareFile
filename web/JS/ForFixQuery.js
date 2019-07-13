function JumpWhichQuery(obj) {
    var x=document.getElementById(obj.id);
    x.href="Query.jsp?Select="+x.id;
}