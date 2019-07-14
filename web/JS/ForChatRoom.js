window.onload = function(){
    var Words = document.getElementById("words");
    var Who = document.getElementById("who");
    var TalkWords = document.getElementById("talkwords");
    var TalkSub = document.getElementById("talksub");


    TalkSub.onclick = function(){
        //定义空字符串
        var str = "";
        if(TalkWords.value == ""){
            // 消息为空时弹窗
            alert("消息不能为空");
            return;
        }
        if(Who.value == 0){
            //如果Who.value为0n那么是 A说
            str = '<div class="atalk"><span>A说 :' + TalkWords.value +'</span></div>';
        }
        else{
            str = '<div class="btalk"><span>B说 :' + TalkWords.value +'</span></div>' ;
        }
        Words.innerHTML = Words.innerHTML + str;
        var withwho=document.getElementById("withwho").innerText;
        var customer=getCookie("account");
        var talkwords=document.getElementById("talkwords");
        var url="Chat.jsp?account="+customer+"&withwho="+withwho.toString()+"&talkwords="+talkwords.value;

    }

}

function myFunction(obj){
    var x=document.getElementById("room");
    var withwho=document.getElementById("withwho");
    withwho.innerText=obj.id;
    if(x.style.display.toString()=="")
    {
        x.style.display='block';
    }
    else
    {
        x.style.display='';
    }
}


function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}