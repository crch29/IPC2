
package ipc2;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.6-1b01 
 * Generated source version: 2.2
 * 
 */
@WebService(name = "general", targetNamespace = "http://ipc2/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface General {


    /**
     * 
     * @param consultaestudiante
     * @return
     *     returns java.util.List<ipc2.Estudiante>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "consultarestudiante", targetNamespace = "http://ipc2/", className = "ipc2.Consultarestudiante")
    @ResponseWrapper(localName = "consultarestudianteResponse", targetNamespace = "http://ipc2/", className = "ipc2.ConsultarestudianteResponse")
    @Action(input = "http://ipc2/general/consultarestudianteRequest", output = "http://ipc2/general/consultarestudianteResponse")
    public List<Estudiante> consultarestudiante(
        @WebParam(name = "consultaestudiante", targetNamespace = "")
        String consultaestudiante);

    /**
     * 
     * @param consultausuario
     * @return
     *     returns java.util.List<ipc2.Usuario>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "consultarUsuario", targetNamespace = "http://ipc2/", className = "ipc2.ConsultarUsuario")
    @ResponseWrapper(localName = "consultarUsuarioResponse", targetNamespace = "http://ipc2/", className = "ipc2.ConsultarUsuarioResponse")
    @Action(input = "http://ipc2/general/consultarUsuarioRequest", output = "http://ipc2/general/consultarUsuarioResponse")
    public List<Usuario> consultarUsuario(
        @WebParam(name = "consultausuario", targetNamespace = "")
        String consultausuario);

    /**
     * 
     * @param instruccion
     */
    @WebMethod
    @RequestWrapper(localName = "ingresar", targetNamespace = "http://ipc2/", className = "ipc2.Ingresar")
    @ResponseWrapper(localName = "ingresarResponse", targetNamespace = "http://ipc2/", className = "ipc2.IngresarResponse")
    @Action(input = "http://ipc2/general/ingresarRequest", output = "http://ipc2/general/ingresarResponse")
    public void ingresar(
        @WebParam(name = "instruccion", targetNamespace = "")
        String instruccion);

    /**
     * 
     * @param consultacurso
     * @return
     *     returns java.util.List<ipc2.Curso>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "consultarcurso", targetNamespace = "http://ipc2/", className = "ipc2.Consultarcurso")
    @ResponseWrapper(localName = "consultarcursoResponse", targetNamespace = "http://ipc2/", className = "ipc2.ConsultarcursoResponse")
    @Action(input = "http://ipc2/general/consultarcursoRequest", output = "http://ipc2/general/consultarcursoResponse")
    public List<Curso> consultarcurso(
        @WebParam(name = "consultacurso", targetNamespace = "")
        String consultacurso);

    /**
     * 
     */
    @WebMethod
    @RequestWrapper(localName = "cerrarconexion", targetNamespace = "http://ipc2/", className = "ipc2.Cerrarconexion")
    @ResponseWrapper(localName = "cerrarconexionResponse", targetNamespace = "http://ipc2/", className = "ipc2.CerrarconexionResponse")
    @Action(input = "http://ipc2/general/cerrarconexionRequest", output = "http://ipc2/general/cerrarconexionResponse")
    public void cerrarconexion();

    /**
     * 
     * @param cadenaconsulta
     * @return
     *     returns java.util.List<ipc2.Pregunta>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "generarconsultapreguntas", targetNamespace = "http://ipc2/", className = "ipc2.Generarconsultapreguntas")
    @ResponseWrapper(localName = "generarconsultapreguntasResponse", targetNamespace = "http://ipc2/", className = "ipc2.GenerarconsultapreguntasResponse")
    @Action(input = "http://ipc2/general/generarconsultapreguntasRequest", output = "http://ipc2/general/generarconsultapreguntasResponse")
    public List<Pregunta> generarconsultapreguntas(
        @WebParam(name = "cadenaconsulta", targetNamespace = "")
        String cadenaconsulta);

    /**
     * 
     * @param consultaitem
     * @return
     *     returns java.util.List<ipc2.Item>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "consultaritem", targetNamespace = "http://ipc2/", className = "ipc2.Consultaritem")
    @ResponseWrapper(localName = "consultaritemResponse", targetNamespace = "http://ipc2/", className = "ipc2.ConsultaritemResponse")
    @Action(input = "http://ipc2/general/consultaritemRequest", output = "http://ipc2/general/consultaritemResponse")
    public List<Item> consultaritem(
        @WebParam(name = "consultaitem", targetNamespace = "")
        String consultaitem);

    /**
     * 
     * @param parametro
     * @param consulta
     * @return
     *     returns java.util.List<java.lang.Object>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "consultalistas", targetNamespace = "http://ipc2/", className = "ipc2.Consultalistas")
    @ResponseWrapper(localName = "consultalistasResponse", targetNamespace = "http://ipc2/", className = "ipc2.ConsultalistasResponse")
    @Action(input = "http://ipc2/general/consultalistasRequest", output = "http://ipc2/general/consultalistasResponse")
    public List<Object> consultalistas(
        @WebParam(name = "consulta", targetNamespace = "")
        String consulta,
        @WebParam(name = "parametro", targetNamespace = "")
        String parametro);

}
