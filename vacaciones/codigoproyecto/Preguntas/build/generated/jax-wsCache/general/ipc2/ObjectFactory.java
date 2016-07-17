
package ipc2;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the ipc2 package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Consultaritem_QNAME = new QName("http://ipc2/", "consultaritem");
    private final static QName _ConsultarestudianteResponse_QNAME = new QName("http://ipc2/", "consultarestudianteResponse");
    private final static QName _ConsultarUsuario_QNAME = new QName("http://ipc2/", "consultarUsuario");
    private final static QName _Cerrarconexion_QNAME = new QName("http://ipc2/", "cerrarconexion");
    private final static QName _CerrarconexionResponse_QNAME = new QName("http://ipc2/", "cerrarconexionResponse");
    private final static QName _ConsultarUsuarioResponse_QNAME = new QName("http://ipc2/", "consultarUsuarioResponse");
    private final static QName _Consultarcurso_QNAME = new QName("http://ipc2/", "consultarcurso");
    private final static QName _IngresarResponse_QNAME = new QName("http://ipc2/", "ingresarResponse");
    private final static QName _Consultarestudiante_QNAME = new QName("http://ipc2/", "consultarestudiante");
    private final static QName _Generarconsultapreguntas_QNAME = new QName("http://ipc2/", "generarconsultapreguntas");
    private final static QName _ConsultalistasResponse_QNAME = new QName("http://ipc2/", "consultalistasResponse");
    private final static QName _ConsultaritemResponse_QNAME = new QName("http://ipc2/", "consultaritemResponse");
    private final static QName _Ingresar_QNAME = new QName("http://ipc2/", "ingresar");
    private final static QName _ConsultarcursoResponse_QNAME = new QName("http://ipc2/", "consultarcursoResponse");
    private final static QName _GenerarconsultapreguntasResponse_QNAME = new QName("http://ipc2/", "generarconsultapreguntasResponse");
    private final static QName _Consultalistas_QNAME = new QName("http://ipc2/", "consultalistas");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: ipc2
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ConsultarcursoResponse }
     * 
     */
    public ConsultarcursoResponse createConsultarcursoResponse() {
        return new ConsultarcursoResponse();
    }

    /**
     * Create an instance of {@link Consultalistas }
     * 
     */
    public Consultalistas createConsultalistas() {
        return new Consultalistas();
    }

    /**
     * Create an instance of {@link GenerarconsultapreguntasResponse }
     * 
     */
    public GenerarconsultapreguntasResponse createGenerarconsultapreguntasResponse() {
        return new GenerarconsultapreguntasResponse();
    }

    /**
     * Create an instance of {@link ConsultalistasResponse }
     * 
     */
    public ConsultalistasResponse createConsultalistasResponse() {
        return new ConsultalistasResponse();
    }

    /**
     * Create an instance of {@link ConsultaritemResponse }
     * 
     */
    public ConsultaritemResponse createConsultaritemResponse() {
        return new ConsultaritemResponse();
    }

    /**
     * Create an instance of {@link Generarconsultapreguntas }
     * 
     */
    public Generarconsultapreguntas createGenerarconsultapreguntas() {
        return new Generarconsultapreguntas();
    }

    /**
     * Create an instance of {@link Ingresar }
     * 
     */
    public Ingresar createIngresar() {
        return new Ingresar();
    }

    /**
     * Create an instance of {@link IngresarResponse }
     * 
     */
    public IngresarResponse createIngresarResponse() {
        return new IngresarResponse();
    }

    /**
     * Create an instance of {@link Consultarcurso }
     * 
     */
    public Consultarcurso createConsultarcurso() {
        return new Consultarcurso();
    }

    /**
     * Create an instance of {@link Consultarestudiante }
     * 
     */
    public Consultarestudiante createConsultarestudiante() {
        return new Consultarestudiante();
    }

    /**
     * Create an instance of {@link ConsultarUsuario }
     * 
     */
    public ConsultarUsuario createConsultarUsuario() {
        return new ConsultarUsuario();
    }

    /**
     * Create an instance of {@link ConsultarestudianteResponse }
     * 
     */
    public ConsultarestudianteResponse createConsultarestudianteResponse() {
        return new ConsultarestudianteResponse();
    }

    /**
     * Create an instance of {@link Consultaritem }
     * 
     */
    public Consultaritem createConsultaritem() {
        return new Consultaritem();
    }

    /**
     * Create an instance of {@link ConsultarUsuarioResponse }
     * 
     */
    public ConsultarUsuarioResponse createConsultarUsuarioResponse() {
        return new ConsultarUsuarioResponse();
    }

    /**
     * Create an instance of {@link Cerrarconexion }
     * 
     */
    public Cerrarconexion createCerrarconexion() {
        return new Cerrarconexion();
    }

    /**
     * Create an instance of {@link CerrarconexionResponse }
     * 
     */
    public CerrarconexionResponse createCerrarconexionResponse() {
        return new CerrarconexionResponse();
    }

    /**
     * Create an instance of {@link Estudiante }
     * 
     */
    public Estudiante createEstudiante() {
        return new Estudiante();
    }

    /**
     * Create an instance of {@link Item }
     * 
     */
    public Item createItem() {
        return new Item();
    }

    /**
     * Create an instance of {@link Pregunta }
     * 
     */
    public Pregunta createPregunta() {
        return new Pregunta();
    }

    /**
     * Create an instance of {@link Curso }
     * 
     */
    public Curso createCurso() {
        return new Curso();
    }

    /**
     * Create an instance of {@link Usuario }
     * 
     */
    public Usuario createUsuario() {
        return new Usuario();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Consultaritem }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultaritem")
    public JAXBElement<Consultaritem> createConsultaritem(Consultaritem value) {
        return new JAXBElement<Consultaritem>(_Consultaritem_QNAME, Consultaritem.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ConsultarestudianteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultarestudianteResponse")
    public JAXBElement<ConsultarestudianteResponse> createConsultarestudianteResponse(ConsultarestudianteResponse value) {
        return new JAXBElement<ConsultarestudianteResponse>(_ConsultarestudianteResponse_QNAME, ConsultarestudianteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ConsultarUsuario }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultarUsuario")
    public JAXBElement<ConsultarUsuario> createConsultarUsuario(ConsultarUsuario value) {
        return new JAXBElement<ConsultarUsuario>(_ConsultarUsuario_QNAME, ConsultarUsuario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Cerrarconexion }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "cerrarconexion")
    public JAXBElement<Cerrarconexion> createCerrarconexion(Cerrarconexion value) {
        return new JAXBElement<Cerrarconexion>(_Cerrarconexion_QNAME, Cerrarconexion.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CerrarconexionResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "cerrarconexionResponse")
    public JAXBElement<CerrarconexionResponse> createCerrarconexionResponse(CerrarconexionResponse value) {
        return new JAXBElement<CerrarconexionResponse>(_CerrarconexionResponse_QNAME, CerrarconexionResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ConsultarUsuarioResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultarUsuarioResponse")
    public JAXBElement<ConsultarUsuarioResponse> createConsultarUsuarioResponse(ConsultarUsuarioResponse value) {
        return new JAXBElement<ConsultarUsuarioResponse>(_ConsultarUsuarioResponse_QNAME, ConsultarUsuarioResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Consultarcurso }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultarcurso")
    public JAXBElement<Consultarcurso> createConsultarcurso(Consultarcurso value) {
        return new JAXBElement<Consultarcurso>(_Consultarcurso_QNAME, Consultarcurso.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IngresarResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "ingresarResponse")
    public JAXBElement<IngresarResponse> createIngresarResponse(IngresarResponse value) {
        return new JAXBElement<IngresarResponse>(_IngresarResponse_QNAME, IngresarResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Consultarestudiante }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultarestudiante")
    public JAXBElement<Consultarestudiante> createConsultarestudiante(Consultarestudiante value) {
        return new JAXBElement<Consultarestudiante>(_Consultarestudiante_QNAME, Consultarestudiante.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Generarconsultapreguntas }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "generarconsultapreguntas")
    public JAXBElement<Generarconsultapreguntas> createGenerarconsultapreguntas(Generarconsultapreguntas value) {
        return new JAXBElement<Generarconsultapreguntas>(_Generarconsultapreguntas_QNAME, Generarconsultapreguntas.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ConsultalistasResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultalistasResponse")
    public JAXBElement<ConsultalistasResponse> createConsultalistasResponse(ConsultalistasResponse value) {
        return new JAXBElement<ConsultalistasResponse>(_ConsultalistasResponse_QNAME, ConsultalistasResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ConsultaritemResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultaritemResponse")
    public JAXBElement<ConsultaritemResponse> createConsultaritemResponse(ConsultaritemResponse value) {
        return new JAXBElement<ConsultaritemResponse>(_ConsultaritemResponse_QNAME, ConsultaritemResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Ingresar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "ingresar")
    public JAXBElement<Ingresar> createIngresar(Ingresar value) {
        return new JAXBElement<Ingresar>(_Ingresar_QNAME, Ingresar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ConsultarcursoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultarcursoResponse")
    public JAXBElement<ConsultarcursoResponse> createConsultarcursoResponse(ConsultarcursoResponse value) {
        return new JAXBElement<ConsultarcursoResponse>(_ConsultarcursoResponse_QNAME, ConsultarcursoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GenerarconsultapreguntasResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "generarconsultapreguntasResponse")
    public JAXBElement<GenerarconsultapreguntasResponse> createGenerarconsultapreguntasResponse(GenerarconsultapreguntasResponse value) {
        return new JAXBElement<GenerarconsultapreguntasResponse>(_GenerarconsultapreguntasResponse_QNAME, GenerarconsultapreguntasResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Consultalistas }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ipc2/", name = "consultalistas")
    public JAXBElement<Consultalistas> createConsultalistas(Consultalistas value) {
        return new JAXBElement<Consultalistas>(_Consultalistas_QNAME, Consultalistas.class, null, value);
    }

}
