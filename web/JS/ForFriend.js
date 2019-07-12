function change(obj)
{
    var x=document.getElementById("friend");

console.log(x.value);

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