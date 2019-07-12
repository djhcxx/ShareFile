function change(obj)
{
    var x=document.getElementById("friend");



    if(x.style.display.toString()=="")
    {
        x.style.display='block';
        obj.style.backgroundColor='green';
    }
    else
    {
        x.style.display='';
        obj.style.backgroundColor='#4CAF50';
    }
}