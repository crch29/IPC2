 <%
    try {
	ipc2.General_Service service = new ipc2.General_Service();
	ipc2.General port = service.getGeneralPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cadenaconsulta = "select * from pregunta;";
	// TODO process result here
	java.util.List<ipc2.Pregunta> result = port.generarconsulta(cadenaconsulta);
        %><table border="3">
            <%
	for(int i=0;i<result.size();i++){
            %><tr><%
            ipc2.Pregunta pr = result.get(i);
            %>
                    <td><%out.println(pr.getCodcurso());%></td>
                    <td><%out.println(pr.getCodpregunta());%></td>
                    <td><%out.println(pr.getDescripcion());%></td>
                    <td><%out.println(pr.getRespuesta());%></td>
                    <td><%out.println(pr.getRespuesta1());%></td>
                    <td><%out.println(pr.getTiempo());%></td>
                    <td><%out.println(pr.getNivel());%></td>
                    <td><%out.println(pr.getPuntos());%></td>
                    
                    </tr><%
        }%></table><%
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>