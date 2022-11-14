<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorClasePublishProxyid" scope="session" class="publicadores.ControladorClasePublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorClasePublishProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleControladorClasePublishProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleControladorClasePublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorClasePublish getControladorClasePublish10mtemp = sampleControladorClasePublishProxyid.getControladorClasePublish();
if(getControladorClasePublish10mtemp == null){
%>
<%=getControladorClasePublish10mtemp %>
<%
}else{
        if(getControladorClasePublish10mtemp!= null){
        String tempreturnp11 = getControladorClasePublish10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg016");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        String arg1_2id=  request.getParameter("arg118");
            java.lang.String arg1_2idTemp = null;
        if(!arg1_2id.equals("")){
         arg1_2idTemp  = arg1_2id;
        }
        String hora_4id=  request.getParameter("hora22");
        int hora_4idTemp  = Integer.parseInt(hora_4id);
        String mAXHORA_5id=  request.getParameter("mAXHORA24");
        int mAXHORA_5idTemp  = Integer.parseInt(mAXHORA_5id);
        String seg_6id=  request.getParameter("seg26");
        int seg_6idTemp  = Integer.parseInt(seg_6id);
        String min_7id=  request.getParameter("min28");
        int min_7idTemp  = Integer.parseInt(min_7id);
        String mINMIN_8id=  request.getParameter("mINMIN30");
        int mINMIN_8idTemp  = Integer.parseInt(mINMIN_8id);
        String mINSEG_9id=  request.getParameter("mINSEG32");
        int mINSEG_9idTemp  = Integer.parseInt(mINSEG_9id);
        String mAXMIN_10id=  request.getParameter("mAXMIN34");
        int mAXMIN_10idTemp  = Integer.parseInt(mAXMIN_10id);
        String mAXSEG_11id=  request.getParameter("mAXSEG36");
        int mAXSEG_11idTemp  = Integer.parseInt(mAXSEG_11id);
        String mINHORA_12id=  request.getParameter("mINHORA38");
        int mINHORA_12idTemp  = Integer.parseInt(mINHORA_12id);
        %>
        <jsp:useBean id="publicadores1DtFechaHora_3id" scope="session" class="publicadores.DtFechaHora" />
        <%
        publicadores1DtFechaHora_3id.setHora(hora_4idTemp);
        publicadores1DtFechaHora_3id.setMAXHORA(mAXHORA_5idTemp);
        publicadores1DtFechaHora_3id.setSeg(seg_6idTemp);
        publicadores1DtFechaHora_3id.setMin(min_7idTemp);
        publicadores1DtFechaHora_3id.setMINMIN(mINMIN_8idTemp);
        publicadores1DtFechaHora_3id.setMINSEG(mINSEG_9idTemp);
        publicadores1DtFechaHora_3id.setMAXMIN(mAXMIN_10idTemp);
        publicadores1DtFechaHora_3id.setMAXSEG(mAXSEG_11idTemp);
        publicadores1DtFechaHora_3id.setMINHORA(mINHORA_12idTemp);
        String arg3_13id=  request.getParameter("arg340");
            java.lang.String arg3_13idTemp = null;
        if(!arg3_13id.equals("")){
         arg3_13idTemp  = arg3_13id;
        }
        String arg4_14id=  request.getParameter("arg442");
            java.lang.String arg4_14idTemp = null;
        if(!arg4_14id.equals("")){
         arg4_14idTemp  = arg4_14id;
        }
        String anio_16id=  request.getParameter("anio46");
        int anio_16idTemp  = Integer.parseInt(anio_16id);
        String mINDIA_17id=  request.getParameter("mINDIA48");
        int mINDIA_17idTemp  = Integer.parseInt(mINDIA_17id);
        String mAXDIA_18id=  request.getParameter("mAXDIA50");
        int mAXDIA_18idTemp  = Integer.parseInt(mAXDIA_18id);
        String mAXANIO_19id=  request.getParameter("mAXANIO52");
        int mAXANIO_19idTemp  = Integer.parseInt(mAXANIO_19id);
        String mes_20id=  request.getParameter("mes54");
        int mes_20idTemp  = Integer.parseInt(mes_20id);
        String mINMES_21id=  request.getParameter("mINMES56");
        int mINMES_21idTemp  = Integer.parseInt(mINMES_21id);
        String mAXMES_22id=  request.getParameter("mAXMES58");
        int mAXMES_22idTemp  = Integer.parseInt(mAXMES_22id);
        String dia_23id=  request.getParameter("dia60");
        int dia_23idTemp  = Integer.parseInt(dia_23id);
        String mINANIO_24id=  request.getParameter("mINANIO62");
        int mINANIO_24idTemp  = Integer.parseInt(mINANIO_24id);
        %>
        <jsp:useBean id="publicadores1DtFecha_15id" scope="session" class="publicadores.DtFecha" />
        <%
        publicadores1DtFecha_15id.setAnio(anio_16idTemp);
        publicadores1DtFecha_15id.setMINDIA(mINDIA_17idTemp);
        publicadores1DtFecha_15id.setMAXDIA(mAXDIA_18idTemp);
        publicadores1DtFecha_15id.setMAXANIO(mAXANIO_19idTemp);
        publicadores1DtFecha_15id.setMes(mes_20idTemp);
        publicadores1DtFecha_15id.setMINMES(mINMES_21idTemp);
        publicadores1DtFecha_15id.setMAXMES(mAXMES_22idTemp);
        publicadores1DtFecha_15id.setDia(dia_23idTemp);
        publicadores1DtFecha_15id.setMINANIO(mINANIO_24idTemp);
        String arg6_25id=  request.getParameter("arg664");
            java.lang.String arg6_25idTemp = null;
        if(!arg6_25id.equals("")){
         arg6_25idTemp  = arg6_25id;
        }
        sampleControladorClasePublishProxyid.addClase(arg0_1idTemp,arg1_2idTemp,publicadores1DtFechaHora_3id,arg3_13idTemp,arg4_14idTemp,publicadores1DtFecha_15id,arg6_25idTemp);
break;
case 66:
        gotMethod = true;
        String arg0_26id=  request.getParameter("arg069");
            java.lang.String arg0_26idTemp = null;
        if(!arg0_26id.equals("")){
         arg0_26idTemp  = arg0_26id;
        }
        java.lang.String[] listarActividadesDeportivas66mtemp = sampleControladorClasePublishProxyid.listarActividadesDeportivas(arg0_26idTemp);
if(listarActividadesDeportivas66mtemp == null){
%>
<%=listarActividadesDeportivas66mtemp %>
<%
}else{
        String tempreturnp67 = null;
        if(listarActividadesDeportivas66mtemp != null){
        java.util.List listreturnp67= java.util.Arrays.asList(listarActividadesDeportivas66mtemp);
        tempreturnp67 = listreturnp67.toString();
        }
        %>
        <%=tempreturnp67%>
        <%
}
break;
case 71:
        gotMethod = true;
        String arg0_27id=  request.getParameter("arg074");
            java.lang.String arg0_27idTemp = null;
        if(!arg0_27id.equals("")){
         arg0_27idTemp  = arg0_27id;
        }
        java.lang.String[] listarClases71mtemp = sampleControladorClasePublishProxyid.listarClases(arg0_27idTemp);
if(listarClases71mtemp == null){
%>
<%=listarClases71mtemp %>
<%
}else{
        String tempreturnp72 = null;
        if(listarClases71mtemp != null){
        java.util.List listreturnp72= java.util.Arrays.asList(listarClases71mtemp);
        tempreturnp72 = listreturnp72.toString();
        }
        %>
        <%=tempreturnp72%>
        <%
}
break;
case 76:
        gotMethod = true;
        java.lang.String[] listarInstituciones76mtemp = sampleControladorClasePublishProxyid.listarInstituciones();
if(listarInstituciones76mtemp == null){
%>
<%=listarInstituciones76mtemp %>
<%
}else{
        String tempreturnp77 = null;
        if(listarInstituciones76mtemp != null){
        java.util.List listreturnp77= java.util.Arrays.asList(listarInstituciones76mtemp);
        tempreturnp77 = listreturnp77.toString();
        }
        %>
        <%=tempreturnp77%>
        <%
}
break;
case 79:
        gotMethod = true;
        publicadores.DtClase[] rankingClases79mtemp = sampleControladorClasePublishProxyid.rankingClases();
if(rankingClases79mtemp == null){
%>
<%=rankingClases79mtemp %>
<%
}else{
        String tempreturnp80 = null;
        if(rankingClases79mtemp != null){
        java.util.List listreturnp80= java.util.Arrays.asList(rankingClases79mtemp);
        tempreturnp80 = listreturnp80.toString();
        }
        %>
        <%=tempreturnp80%>
        <%
}
break;
case 82:
        gotMethod = true;
        String arg0_28id=  request.getParameter("arg085");
            java.lang.String arg0_28idTemp = null;
        if(!arg0_28id.equals("")){
         arg0_28idTemp  = arg0_28id;
        }
        java.lang.String[] listarProfesores82mtemp = sampleControladorClasePublishProxyid.listarProfesores(arg0_28idTemp);
if(listarProfesores82mtemp == null){
%>
<%=listarProfesores82mtemp %>
<%
}else{
        String tempreturnp83 = null;
        if(listarProfesores82mtemp != null){
        java.util.List listreturnp83= java.util.Arrays.asList(listarProfesores82mtemp);
        tempreturnp83 = listreturnp83.toString();
        }
        %>
        <%=tempreturnp83%>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>