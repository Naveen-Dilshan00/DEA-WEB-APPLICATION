<%-- 
    Document   : messages
    Created on : 06-Apr-2024, 17:21:48
    Author     : Naveen Dilshan
--%>

<%

String Msg1 = (String)session.getAttribute("faildMsg");
if(Msg1!=null){
    
    out.println(Msg1);
    
    session.removeAttribute("faildMsg");
}

String Msg2 = (String)session.getAttribute("SuccMsg");
if(Msg2!=null){
    
    out.println(Msg2);
    
    session.removeAttribute("SuccMsg");
}







%>