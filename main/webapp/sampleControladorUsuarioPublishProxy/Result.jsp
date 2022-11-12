<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorUsuarioPublishProxyid" scope="session" class="publicadores.ControladorUsuarioPublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorUsuarioPublishProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleControladorUsuarioPublishProxyid.getEndpoint();
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
        sampleControladorUsuarioPublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorUsuarioPublish getControladorUsuarioPublish10mtemp = sampleControladorUsuarioPublishProxyid.getControladorUsuarioPublish();
if(getControladorUsuarioPublish10mtemp == null){
%>
<%=getControladorUsuarioPublish10mtemp %>
<%
}else{
        if(getControladorUsuarioPublish10mtemp!= null){
        String tempreturnp11 = getControladorUsuarioPublish10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg048");
            java.lang.String arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
         arg0_1idTemp  = arg0_1id;
        }
        String arg1_2id=  request.getParameter("arg150");
            java.lang.String arg1_2idTemp = null;
        if(!arg1_2id.equals("")){
         arg1_2idTemp  = arg1_2id;
        }
        publicadores.DtUsuario existeUsuario13mtemp = sampleControladorUsuarioPublishProxyid.existeUsuario(arg0_1idTemp,arg1_2idTemp);
if(existeUsuario13mtemp == null){
%>
<%=existeUsuario13mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNac:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">anio:</TD>
<TD>
<%
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
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
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
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
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
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
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
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
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
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
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
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
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
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
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
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
if(existeUsuario13mtemp != null){
publicadores.DtFecha tebece0=existeUsuario13mtemp.getFechaNac();
if(tebece0 != null){
%>
<%=tebece0.getMINANIO()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(existeUsuario13mtemp != null){
java.lang.String typenickname36 = existeUsuario13mtemp.getNickname();
        String tempResultnickname36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname36));
        %>
        <%= tempResultnickname36 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(existeUsuario13mtemp != null){
java.lang.String typeemail38 = existeUsuario13mtemp.getEmail();
        String tempResultemail38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail38));
        %>
        <%= tempResultemail38 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(existeUsuario13mtemp != null){
java.lang.String typecontrasenia40 = existeUsuario13mtemp.getContrasenia();
        String tempResultcontrasenia40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia40));
        %>
        <%= tempResultcontrasenia40 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pfp:</TD>
<TD>
<%
if(existeUsuario13mtemp != null){
java.lang.String typepfp42 = existeUsuario13mtemp.getPfp();
        String tempResultpfp42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepfp42));
        %>
        <%= tempResultpfp42 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(existeUsuario13mtemp != null){
java.lang.String typeapellido44 = existeUsuario13mtemp.getApellido();
        String tempResultapellido44 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido44));
        %>
        <%= tempResultapellido44 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(existeUsuario13mtemp != null){
java.lang.String typenombre46 = existeUsuario13mtemp.getNombre();
        String tempResultnombre46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre46));
        %>
        <%= tempResultnombre46 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 52:
        gotMethod = true;
        String descripcion_5id=  request.getParameter("descripcion59");
            java.lang.String descripcion_5idTemp = null;
        if(!descripcion_5id.equals("")){
         descripcion_5idTemp  = descripcion_5id;
        }
        String url_6id=  request.getParameter("url61");
            java.lang.String url_6idTemp = null;
        if(!url_6id.equals("")){
         url_6idTemp  = url_6id;
        }
        String nombre_7id=  request.getParameter("nombre63");
            java.lang.String nombre_7idTemp = null;
        if(!nombre_7id.equals("")){
         nombre_7idTemp  = nombre_7id;
        }
        %>
        <jsp:useBean id="publicadores1DtInstitucionDeportiva_4id" scope="session" class="publicadores.DtInstitucionDeportiva" />
        <%
        publicadores1DtInstitucionDeportiva_4id.setDescripcion(descripcion_5idTemp);
        publicadores1DtInstitucionDeportiva_4id.setUrl(url_6idTemp);
        publicadores1DtInstitucionDeportiva_4id.setNombre(nombre_7idTemp);
        String descripcion_8id=  request.getParameter("descripcion65");
            java.lang.String descripcion_8idTemp = null;
        if(!descripcion_8id.equals("")){
         descripcion_8idTemp  = descripcion_8id;
        }
        String sitioWeb_9id=  request.getParameter("sitioWeb67");
            java.lang.String sitioWeb_9idTemp = null;
        if(!sitioWeb_9id.equals("")){
         sitioWeb_9idTemp  = sitioWeb_9id;
        }
        String biografia_10id=  request.getParameter("biografia69");
            java.lang.String biografia_10idTemp = null;
        if(!biografia_10id.equals("")){
         biografia_10idTemp  = biografia_10id;
        }
        %>
        <jsp:useBean id="publicadores1DtProfesor_3id" scope="session" class="publicadores.DtProfesor" />
        <%
        publicadores1DtProfesor_3id.setInstitucion(publicadores1DtInstitucionDeportiva_4id);
        publicadores1DtProfesor_3id.setDescripcion(descripcion_8idTemp);
        publicadores1DtProfesor_3id.setSitioWeb(sitioWeb_9idTemp);
        publicadores1DtProfesor_3id.setBiografia(biografia_10idTemp);
        sampleControladorUsuarioPublishProxyid.altaUsuarioProfesor(publicadores1DtProfesor_3id);
break;
case 71:
        gotMethod = true;
        java.lang.String[] mostrarUsuarios71mtemp = sampleControladorUsuarioPublishProxyid.mostrarUsuarios();
if(mostrarUsuarios71mtemp == null){
%>
<%=mostrarUsuarios71mtemp %>
<%
}else{
        String tempreturnp72 = null;
        if(mostrarUsuarios71mtemp != null){
        java.util.List listreturnp72= java.util.Arrays.asList(mostrarUsuarios71mtemp);
        tempreturnp72 = listreturnp72.toString();
        }
        %>
        <%=tempreturnp72%>
        <%
}
break;
case 74:
        gotMethod = true;
        String arg0_11id=  request.getParameter("arg0109");
            java.lang.String arg0_11idTemp = null;
        if(!arg0_11id.equals("")){
         arg0_11idTemp  = arg0_11id;
        }
        publicadores.DtUsuario consultaUsuario74mtemp = sampleControladorUsuarioPublishProxyid.consultaUsuario(arg0_11idTemp);
if(consultaUsuario74mtemp == null){
%>
<%=consultaUsuario74mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNac:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">anio:</TD>
<TD>
<%
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
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
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
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
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
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
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
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
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
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
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
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
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
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
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
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
if(consultaUsuario74mtemp != null){
publicadores.DtFecha tebece0=consultaUsuario74mtemp.getFechaNac();
if(tebece0 != null){
%>
<%=tebece0.getMINANIO()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nickname:</TD>
<TD>
<%
if(consultaUsuario74mtemp != null){
java.lang.String typenickname97 = consultaUsuario74mtemp.getNickname();
        String tempResultnickname97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenickname97));
        %>
        <%= tempResultnickname97 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(consultaUsuario74mtemp != null){
java.lang.String typeemail99 = consultaUsuario74mtemp.getEmail();
        String tempResultemail99 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail99));
        %>
        <%= tempResultemail99 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contrasenia:</TD>
<TD>
<%
if(consultaUsuario74mtemp != null){
java.lang.String typecontrasenia101 = consultaUsuario74mtemp.getContrasenia();
        String tempResultcontrasenia101 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontrasenia101));
        %>
        <%= tempResultcontrasenia101 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pfp:</TD>
<TD>
<%
if(consultaUsuario74mtemp != null){
java.lang.String typepfp103 = consultaUsuario74mtemp.getPfp();
        String tempResultpfp103 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepfp103));
        %>
        <%= tempResultpfp103 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">apellido:</TD>
<TD>
<%
if(consultaUsuario74mtemp != null){
java.lang.String typeapellido105 = consultaUsuario74mtemp.getApellido();
        String tempResultapellido105 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeapellido105));
        %>
        <%= tempResultapellido105 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(consultaUsuario74mtemp != null){
java.lang.String typenombre107 = consultaUsuario74mtemp.getNombre();
        String tempResultnombre107 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre107));
        %>
        <%= tempResultnombre107 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 111:
        gotMethod = true;
        String arg0_12id=  request.getParameter("arg0120");
            java.lang.String arg0_12idTemp = null;
        if(!arg0_12id.equals("")){
         arg0_12idTemp  = arg0_12id;
        }
        publicadores.DtInstitucionDeportiva getDtinstitucionDeportiva111mtemp = sampleControladorUsuarioPublishProxyid.getDtinstitucionDeportiva(arg0_12idTemp);
if(getDtinstitucionDeportiva111mtemp == null){
%>
<%=getDtinstitucionDeportiva111mtemp %>
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
if(getDtinstitucionDeportiva111mtemp != null){
java.lang.String typedescripcion114 = getDtinstitucionDeportiva111mtemp.getDescripcion();
        String tempResultdescripcion114 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion114));
        %>
        <%= tempResultdescripcion114 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getDtinstitucionDeportiva111mtemp != null){
java.lang.String typeurl116 = getDtinstitucionDeportiva111mtemp.getUrl();
        String tempResulturl116 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl116));
        %>
        <%= tempResulturl116 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getDtinstitucionDeportiva111mtemp != null){
java.lang.String typenombre118 = getDtinstitucionDeportiva111mtemp.getNombre();
        String tempResultnombre118 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre118));
        %>
        <%= tempResultnombre118 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 122:
        gotMethod = true;
        publicadores.DtUsuario publicadores1DtUsuario_13id = null;
        sampleControladorUsuarioPublishProxyid.altaUsuario(publicadores1DtUsuario_13id);
break;
case 127:
        gotMethod = true;
        java.lang.String[] listarInstituciones127mtemp = sampleControladorUsuarioPublishProxyid.listarInstituciones();
if(listarInstituciones127mtemp == null){
%>
<%=listarInstituciones127mtemp %>
<%
}else{
        String tempreturnp128 = null;
        if(listarInstituciones127mtemp != null){
        java.util.List listreturnp128= java.util.Arrays.asList(listarInstituciones127mtemp);
        tempreturnp128 = listreturnp128.toString();
        }
        %>
        <%=tempreturnp128%>
        <%
}
break;
case 130:
        gotMethod = true;
        publicadores.DtUsuario publicadores1DtUsuario_14id = null;
        sampleControladorUsuarioPublishProxyid.modificarUsuario(publicadores1DtUsuario_14id);
break;
case 135:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1DtSocio_15id" scope="session" class="publicadores.DtSocio" />
        <%
        sampleControladorUsuarioPublishProxyid.altaUsuarioSocio(publicadores1DtSocio_15id);
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