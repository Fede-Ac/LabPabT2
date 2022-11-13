<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorActDepPublishProxyid" scope="session" class="publicadores.ControladorActDepPublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorActDepPublishProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleControladorActDepPublishProxyid.getEndpoint();
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
        sampleControladorActDepPublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorActDepPublish getControladorActDepPublish10mtemp = sampleControladorActDepPublishProxyid.getControladorActDepPublish();
if(getControladorActDepPublish10mtemp == null){
%>
<%=getControladorActDepPublish10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 17:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg020");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        boolean existeInstitucionD17mtemp = sampleControladorActDepPublishProxyid.existeInstitucionD(arg0_1idTemp);
        String tempResultreturnp18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(existeInstitucionD17mtemp));
        %>
        <%= tempResultreturnp18 %>
        <%
break;
case 22:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg055");
            java.lang.String arg0_2idTemp = null;
        if(!arg0_2id.equals("")){
         arg0_2idTemp  = arg0_2id;
        }
        publicadores.DtActividadDeportiva consultaActividadDeportiva22mtemp = sampleControladorActDepPublishProxyid.consultaActividadDeportiva(arg0_2idTemp);
if(consultaActividadDeportiva22mtemp == null){
%>
<%=consultaActividadDeportiva22mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
java.lang.String typedescripcion25 = consultaActividadDeportiva22mtemp.getDescripcion();
        String tempResultdescripcion25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion25));
        %>
        <%= tempResultdescripcion25 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracion:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
%>
<%=consultaActividadDeportiva22mtemp.getDuracion()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">picture:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
java.lang.String typepicture29 = consultaActividadDeportiva22mtemp.getPicture();
        String tempResultpicture29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepicture29));
        %>
        <%= tempResultpicture29 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
java.lang.Float typecosto31 = consultaActividadDeportiva22mtemp.getCosto();
        String tempResultcosto31 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecosto31));
        %>
        <%= tempResultcosto31 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
java.lang.String typenombre33 = consultaActividadDeportiva22mtemp.getNombre();
        String tempResultnombre33 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre33));
        %>
        <%= tempResultnombre33 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaReg:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">anio:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getAnio()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINDIA:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINDIA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXDIA:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXDIA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXANIO:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXANIO()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mes:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMes()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINMES:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINMES()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXMES:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXMES()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">dia:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getDia()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINANIO:</TD>
<TD>
<%
if(consultaActividadDeportiva22mtemp != null){
publicadores.DtFecha tebece0=consultaActividadDeportiva22mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINANIO()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 57:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg090");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        publicadores.DtActividadDeportiva registoDictadoDeClase57mtemp = sampleControladorActDepPublishProxyid.registoDictadoDeClase(arg0_3idTemp);
if(registoDictadoDeClase57mtemp == null){
%>
<%=registoDictadoDeClase57mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
java.lang.String typedescripcion60 = registoDictadoDeClase57mtemp.getDescripcion();
        String tempResultdescripcion60 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion60));
        %>
        <%= tempResultdescripcion60 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracion:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
%>
<%=registoDictadoDeClase57mtemp.getDuracion()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">picture:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
java.lang.String typepicture64 = registoDictadoDeClase57mtemp.getPicture();
        String tempResultpicture64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepicture64));
        %>
        <%= tempResultpicture64 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
java.lang.Float typecosto66 = registoDictadoDeClase57mtemp.getCosto();
        String tempResultcosto66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecosto66));
        %>
        <%= tempResultcosto66 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
java.lang.String typenombre68 = registoDictadoDeClase57mtemp.getNombre();
        String tempResultnombre68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre68));
        %>
        <%= tempResultnombre68 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaReg:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">anio:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getAnio()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINDIA:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINDIA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXDIA:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXDIA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXANIO:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXANIO()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mes:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMes()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINMES:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINMES()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXMES:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXMES()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">dia:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getDia()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINANIO:</TD>
<TD>
<%
if(registoDictadoDeClase57mtemp != null){
publicadores.DtFecha tebece0=registoDictadoDeClase57mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINANIO()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 92:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg095");
            java.lang.String arg0_4idTemp = null;
        if(!arg0_4id.equals("")){
         arg0_4idTemp  = arg0_4id;
        }
        String arg1_5id=  request.getParameter("arg197");
            java.lang.String arg1_5idTemp = null;
        if(!arg1_5id.equals("")){
         arg1_5idTemp  = arg1_5id;
        }
        sampleControladorActDepPublishProxyid.eliminarRegistroClase(arg0_4idTemp,arg1_5idTemp);
break;
case 99:
        gotMethod = true;
        String arg0_6id=  request.getParameter("arg0102");
            java.lang.String arg0_6idTemp = null;
        if(!arg0_6id.equals("")){
         arg0_6idTemp  = arg0_6id;
        }
        String arg1_7id=  request.getParameter("arg1104");
            java.lang.String arg1_7idTemp = null;
        if(!arg1_7id.equals("")){
         arg1_7idTemp  = arg1_7id;
        }
        String arg2_8id=  request.getParameter("arg2106");
            java.lang.String arg2_8idTemp = null;
        if(!arg2_8id.equals("")){
         arg2_8idTemp  = arg2_8id;
        }
        String arg3_9id=  request.getParameter("arg3108");
        int arg3_9idTemp  = Integer.parseInt(arg3_9id);
        String arg4_10id=  request.getParameter("arg4110");
        float arg4_10idTemp  = Float.parseFloat(arg4_10id);
        String anio_12id=  request.getParameter("anio114");
        int anio_12idTemp  = Integer.parseInt(anio_12id);
        String mINDIA_13id=  request.getParameter("mINDIA116");
        int mINDIA_13idTemp  = Integer.parseInt(mINDIA_13id);
        String mAXDIA_14id=  request.getParameter("mAXDIA118");
        int mAXDIA_14idTemp  = Integer.parseInt(mAXDIA_14id);
        String mAXANIO_15id=  request.getParameter("mAXANIO120");
        int mAXANIO_15idTemp  = Integer.parseInt(mAXANIO_15id);
        String mes_16id=  request.getParameter("mes122");
        int mes_16idTemp  = Integer.parseInt(mes_16id);
        String mINMES_17id=  request.getParameter("mINMES124");
        int mINMES_17idTemp  = Integer.parseInt(mINMES_17id);
        String mAXMES_18id=  request.getParameter("mAXMES126");
        int mAXMES_18idTemp  = Integer.parseInt(mAXMES_18id);
        String dia_19id=  request.getParameter("dia128");
        int dia_19idTemp  = Integer.parseInt(dia_19id);
        String mINANIO_20id=  request.getParameter("mINANIO130");
        int mINANIO_20idTemp  = Integer.parseInt(mINANIO_20id);
        %>
        <jsp:useBean id="publicadores1DtFecha_11id" scope="session" class="publicadores.DtFecha" />
        <%
        publicadores1DtFecha_11id.setAnio(anio_12idTemp);
        publicadores1DtFecha_11id.setMINDIA(mINDIA_13idTemp);
        publicadores1DtFecha_11id.setMAXDIA(mAXDIA_14idTemp);
        publicadores1DtFecha_11id.setMAXANIO(mAXANIO_15idTemp);
        publicadores1DtFecha_11id.setMes(mes_16idTemp);
        publicadores1DtFecha_11id.setMINMES(mINMES_17idTemp);
        publicadores1DtFecha_11id.setMAXMES(mAXMES_18idTemp);
        publicadores1DtFecha_11id.setDia(dia_19idTemp);
        publicadores1DtFecha_11id.setMINANIO(mINANIO_20idTemp);
        String arg6_21id=  request.getParameter("arg6132");
            java.lang.String arg6_21idTemp = null;
        if(!arg6_21id.equals("")){
         arg6_21idTemp  = arg6_21id;
        }
        sampleControladorActDepPublishProxyid.altaActividadDeportiva(arg0_6idTemp,arg1_7idTemp,arg2_8idTemp,arg3_9idTemp,arg4_10idTemp,publicadores1DtFecha_11id,arg6_21idTemp);
break;
case 134:
        gotMethod = true;
        String arg0_22id=  request.getParameter("arg0137");
            java.lang.String arg0_22idTemp = null;
        if(!arg0_22id.equals("")){
         arg0_22idTemp  = arg0_22id;
        }
        java.lang.String[] listarActividadesDeportivas134mtemp = sampleControladorActDepPublishProxyid.listarActividadesDeportivas(arg0_22idTemp);
if(listarActividadesDeportivas134mtemp == null){
%>
<%=listarActividadesDeportivas134mtemp %>
<%
}else{
        String tempreturnp135 = null;
        if(listarActividadesDeportivas134mtemp != null){
        java.util.List listreturnp135= java.util.Arrays.asList(listarActividadesDeportivas134mtemp);
        tempreturnp135 = listreturnp135.toString();
        }
        %>
        <%=tempreturnp135%>
        <%
}
break;
case 139:
        gotMethod = true;
        String arg0_23id=  request.getParameter("arg0142");
            java.lang.String arg0_23idTemp = null;
        if(!arg0_23id.equals("")){
         arg0_23idTemp  = arg0_23id;
        }
        java.lang.String[] listarClases139mtemp = sampleControladorActDepPublishProxyid.listarClases(arg0_23idTemp);
if(listarClases139mtemp == null){
%>
<%=listarClases139mtemp %>
<%
}else{
        String tempreturnp140 = null;
        if(listarClases139mtemp != null){
        java.util.List listreturnp140= java.util.Arrays.asList(listarClases139mtemp);
        tempreturnp140 = listreturnp140.toString();
        }
        %>
        <%=tempreturnp140%>
        <%
}
break;
case 144:
        gotMethod = true;
        String arg0_24id=  request.getParameter("arg0199");
            java.lang.String arg0_24idTemp = null;
        if(!arg0_24id.equals("")){
         arg0_24idTemp  = arg0_24id;
        }
        publicadores.DtClase getDtClase144mtemp = sampleControladorActDepPublishProxyid.getDtClase(arg0_24idTemp);
if(getDtClase144mtemp == null){
%>
<%=getDtClase144mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
java.lang.String typeurl147 = getDtClase144mtemp.getUrl();
        String tempResulturl147 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl147));
        %>
        <%= tempResulturl147 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaInicio:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">hora:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getHora()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXHORA:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getMAXHORA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">seg:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getSeg()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">min:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getMin()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINMIN:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getMINMIN()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINSEG:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getMINSEG()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXMIN:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getMAXMIN()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXSEG:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getMAXSEG()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINHORA:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFechaHora tebece0=getDtClase144mtemp.getFechaInicio();
if(tebece0 != null){
%>
<%=tebece0.getMINHORA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">picture:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
java.lang.String typepicture169 = getDtClase144mtemp.getPicture();
        String tempResultpicture169 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepicture169));
        %>
        <%= tempResultpicture169 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaReg:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">anio:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getAnio()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINDIA:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINDIA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXDIA:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXDIA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXANIO:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXANIO()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mes:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMes()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINMES:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINMES()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXMES:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXMES()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">dia:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getDia()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINANIO:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
publicadores.DtFecha tebece0=getDtClase144mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINANIO()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">actDep:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
java.lang.String typeactDep191 = getDtClase144mtemp.getActDep();
        String tempResultactDep191 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeactDep191));
        %>
        <%= tempResultactDep191 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">profe:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
java.lang.String typeprofe193 = getDtClase144mtemp.getProfe();
        String tempResultprofe193 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeprofe193));
        %>
        <%= tempResultprofe193 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantRegistros:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
%>
<%=getDtClase144mtemp.getCantRegistros()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtClase144mtemp != null){
java.lang.String typenombre197 = getDtClase144mtemp.getNombre();
        String tempResultnombre197 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre197));
        %>
        <%= tempResultnombre197 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 201:
        gotMethod = true;
        java.lang.String[] listarInstituciones201mtemp = sampleControladorActDepPublishProxyid.listarInstituciones();
if(listarInstituciones201mtemp == null){
%>
<%=listarInstituciones201mtemp %>
<%
}else{
        String tempreturnp202 = null;
        if(listarInstituciones201mtemp != null){
        java.util.List listreturnp202= java.util.Arrays.asList(listarInstituciones201mtemp);
        tempreturnp202 = listreturnp202.toString();
        }
        %>
        <%=tempreturnp202%>
        <%
}
break;
case 204:
        gotMethod = true;
        String arg0_25id=  request.getParameter("arg0207");
            java.lang.String arg0_25idTemp = null;
        if(!arg0_25id.equals("")){
         arg0_25idTemp  = arg0_25id;
        }
        String arg1_26id=  request.getParameter("arg1209");
            java.lang.String arg1_26idTemp = null;
        if(!arg1_26id.equals("")){
         arg1_26idTemp  = arg1_26id;
        }
        sampleControladorActDepPublishProxyid.altaRegistroDictadoDeClase(arg0_25idTemp,arg1_26idTemp);
break;
case 211:
        gotMethod = true;
        java.lang.String[] getSocios211mtemp = sampleControladorActDepPublishProxyid.getSocios();
if(getSocios211mtemp == null){
%>
<%=getSocios211mtemp %>
<%
}else{
        String tempreturnp212 = null;
        if(getSocios211mtemp != null){
        java.util.List listreturnp212= java.util.Arrays.asList(getSocios211mtemp);
        tempreturnp212 = listreturnp212.toString();
        }
        %>
        <%=tempreturnp212%>
        <%
}
break;
case 214:
        gotMethod = true;
        java.lang.String[] getActividadesDeportivas214mtemp = sampleControladorActDepPublishProxyid.getActividadesDeportivas();
if(getActividadesDeportivas214mtemp == null){
%>
<%=getActividadesDeportivas214mtemp %>
<%
}else{
        String tempreturnp215 = null;
        if(getActividadesDeportivas214mtemp != null){
        java.util.List listreturnp215= java.util.Arrays.asList(getActividadesDeportivas214mtemp);
        tempreturnp215 = listreturnp215.toString();
        }
        %>
        <%=tempreturnp215%>
        <%
}
break;
case 217:
        gotMethod = true;
        String arg0_27id=  request.getParameter("arg0250");
            java.lang.String arg0_27idTemp = null;
        if(!arg0_27id.equals("")){
         arg0_27idTemp  = arg0_27id;
        }
        publicadores.DtActividadDeportiva getDtActividadDeportiva217mtemp = sampleControladorActDepPublishProxyid.getDtActividadDeportiva(arg0_27idTemp);
if(getDtActividadDeportiva217mtemp == null){
%>
<%=getDtActividadDeportiva217mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
java.lang.String typedescripcion220 = getDtActividadDeportiva217mtemp.getDescripcion();
        String tempResultdescripcion220 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion220));
        %>
        <%= tempResultdescripcion220 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">duracion:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
%>
<%=getDtActividadDeportiva217mtemp.getDuracion()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">picture:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
java.lang.String typepicture224 = getDtActividadDeportiva217mtemp.getPicture();
        String tempResultpicture224 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepicture224));
        %>
        <%= tempResultpicture224 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">costo:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
java.lang.Float typecosto226 = getDtActividadDeportiva217mtemp.getCosto();
        String tempResultcosto226 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecosto226));
        %>
        <%= tempResultcosto226 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
java.lang.String typenombre228 = getDtActividadDeportiva217mtemp.getNombre();
        String tempResultnombre228 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre228));
        %>
        <%= tempResultnombre228 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaReg:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">anio:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getAnio()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINDIA:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINDIA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXDIA:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXDIA()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXANIO:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXANIO()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mes:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMes()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINMES:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINMES()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mAXMES:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMAXMES()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">dia:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getDia()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">mINANIO:</TD>
<TD>
<%
if(getDtActividadDeportiva217mtemp != null){
publicadores.DtFecha tebece0=getDtActividadDeportiva217mtemp.getFechaReg();
if(tebece0 != null){
%>
<%=tebece0.getMINANIO()
%><%}}%>
</TD>
</TABLE>
<%
}
break;
case 252:
        gotMethod = true;
        publicadores.DtActividadDeportiva[] rankingActividadesDeportivas252mtemp = sampleControladorActDepPublishProxyid.rankingActividadesDeportivas();
if(rankingActividadesDeportivas252mtemp == null){
%>
<%=rankingActividadesDeportivas252mtemp %>
<%
}else{
        String tempreturnp253 = null;
        if(rankingActividadesDeportivas252mtemp != null){
        java.util.List listreturnp253= java.util.Arrays.asList(rankingActividadesDeportivas252mtemp);
        tempreturnp253 = listreturnp253.toString();
        }
        %>
        <%=tempreturnp253%>
        <%
}
break;
case 255:
        gotMethod = true;
        String descripcion_29id=  request.getParameter("descripcion260");
            java.lang.String descripcion_29idTemp = null;
        if(!descripcion_29id.equals("")){
         descripcion_29idTemp  = descripcion_29id;
        }
        String duracion_30id=  request.getParameter("duracion262");
        int duracion_30idTemp  = Integer.parseInt(duracion_30id);
        String picture_31id=  request.getParameter("picture264");
            java.lang.String picture_31idTemp = null;
        if(!picture_31id.equals("")){
         picture_31idTemp  = picture_31id;
        }
        String costo_32id=  request.getParameter("costo266");
            java.lang.Float costo_32idTemp = null;
        if(!costo_32id.equals("")){
         costo_32idTemp  = java.lang.Float.valueOf(costo_32id);
        }
        String nombre_33id=  request.getParameter("nombre268");
            java.lang.String nombre_33idTemp = null;
        if(!nombre_33id.equals("")){
         nombre_33idTemp  = nombre_33id;
        }
        String anio_35id=  request.getParameter("anio272");
        int anio_35idTemp  = Integer.parseInt(anio_35id);
        String mINDIA_36id=  request.getParameter("mINDIA274");
        int mINDIA_36idTemp  = Integer.parseInt(mINDIA_36id);
        String mAXDIA_37id=  request.getParameter("mAXDIA276");
        int mAXDIA_37idTemp  = Integer.parseInt(mAXDIA_37id);
        String mAXANIO_38id=  request.getParameter("mAXANIO278");
        int mAXANIO_38idTemp  = Integer.parseInt(mAXANIO_38id);
        String mes_39id=  request.getParameter("mes280");
        int mes_39idTemp  = Integer.parseInt(mes_39id);
        String mINMES_40id=  request.getParameter("mINMES282");
        int mINMES_40idTemp  = Integer.parseInt(mINMES_40id);
        String mAXMES_41id=  request.getParameter("mAXMES284");
        int mAXMES_41idTemp  = Integer.parseInt(mAXMES_41id);
        String dia_42id=  request.getParameter("dia286");
        int dia_42idTemp  = Integer.parseInt(dia_42id);
        String mINANIO_43id=  request.getParameter("mINANIO288");
        int mINANIO_43idTemp  = Integer.parseInt(mINANIO_43id);
        %>
        <jsp:useBean id="publicadores1DtFecha_34id" scope="session" class="publicadores.DtFecha" />
        <%
        publicadores1DtFecha_34id.setAnio(anio_35idTemp);
        publicadores1DtFecha_34id.setMINDIA(mINDIA_36idTemp);
        publicadores1DtFecha_34id.setMAXDIA(mAXDIA_37idTemp);
        publicadores1DtFecha_34id.setMAXANIO(mAXANIO_38idTemp);
        publicadores1DtFecha_34id.setMes(mes_39idTemp);
        publicadores1DtFecha_34id.setMINMES(mINMES_40idTemp);
        publicadores1DtFecha_34id.setMAXMES(mAXMES_41idTemp);
        publicadores1DtFecha_34id.setDia(dia_42idTemp);
        publicadores1DtFecha_34id.setMINANIO(mINANIO_43idTemp);
        %>
        <jsp:useBean id="publicadores1DtActividadDeportiva_28id" scope="session" class="publicadores.DtActividadDeportiva" />
        <%
        publicadores1DtActividadDeportiva_28id.setDescripcion(descripcion_29idTemp);
        publicadores1DtActividadDeportiva_28id.setDuracion(duracion_30idTemp);
        publicadores1DtActividadDeportiva_28id.setPicture(picture_31idTemp);
        publicadores1DtActividadDeportiva_28id.setCosto(costo_32idTemp);
        publicadores1DtActividadDeportiva_28id.setNombre(nombre_33idTemp);
        publicadores1DtActividadDeportiva_28id.setFechaReg(publicadores1DtFecha_34id);
        sampleControladorActDepPublishProxyid.modificarActividadDeportiva(publicadores1DtActividadDeportiva_28id);
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