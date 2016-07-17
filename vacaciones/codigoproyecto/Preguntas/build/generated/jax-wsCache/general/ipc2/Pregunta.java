
package ipc2;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para pregunta complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="pregunta">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="codcurso" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="codpregunta" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="descripcion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="nivel" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="puntos" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="respuesta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="respuesta1" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="respuesta2" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="tiempo" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="estadoRespuesta" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "pregunta", propOrder = {
    "codcurso",
    "codpregunta",
    "descripcion",
    "nivel",
    "puntos",
    "respuesta",
    "respuesta1",
    "respuesta2",
    "tiempo",
    "estadoRespuesta"
})
public class Pregunta {

    protected int codcurso;
    protected int codpregunta;
    protected String descripcion;
    protected String nivel;
    protected int puntos;
    protected String respuesta;
    protected String respuesta1;
    protected String respuesta2;
    protected int tiempo;
    protected boolean estadoRespuesta;

    /**
     * Obtiene el valor de la propiedad codcurso.
     * 
     */
    public int getCodcurso() {
        return codcurso;
    }

    /**
     * Define el valor de la propiedad codcurso.
     * 
     */
    public void setCodcurso(int value) {
        this.codcurso = value;
    }

    /**
     * Obtiene el valor de la propiedad codpregunta.
     * 
     */
    public int getCodpregunta() {
        return codpregunta;
    }

    /**
     * Define el valor de la propiedad codpregunta.
     * 
     */
    public void setCodpregunta(int value) {
        this.codpregunta = value;
    }

    /**
     * Obtiene el valor de la propiedad descripcion.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * Define el valor de la propiedad descripcion.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescripcion(String value) {
        this.descripcion = value;
    }

    /**
     * Obtiene el valor de la propiedad nivel.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNivel() {
        return nivel;
    }

    /**
     * Define el valor de la propiedad nivel.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNivel(String value) {
        this.nivel = value;
    }

    /**
     * Obtiene el valor de la propiedad puntos.
     * 
     */
    public int getPuntos() {
        return puntos;
    }

    /**
     * Define el valor de la propiedad puntos.
     * 
     */
    public void setPuntos(int value) {
        this.puntos = value;
    }

    /**
     * Obtiene el valor de la propiedad respuesta.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRespuesta() {
        return respuesta;
    }

    /**
     * Define el valor de la propiedad respuesta.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRespuesta(String value) {
        this.respuesta = value;
    }

    /**
     * Obtiene el valor de la propiedad respuesta1.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRespuesta1() {
        return respuesta1;
    }

    /**
     * Define el valor de la propiedad respuesta1.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRespuesta1(String value) {
        this.respuesta1 = value;
    }

    /**
     * Obtiene el valor de la propiedad respuesta2.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRespuesta2() {
        return respuesta2;
    }

    /**
     * Define el valor de la propiedad respuesta2.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRespuesta2(String value) {
        this.respuesta2 = value;
    }

    /**
     * Obtiene el valor de la propiedad tiempo.
     * 
     */
    public int getTiempo() {
        return tiempo;
    }

    /**
     * Define el valor de la propiedad tiempo.
     * 
     */
    public void setTiempo(int value) {
        this.tiempo = value;
    }

    /**
     * Obtiene el valor de la propiedad estadoRespuesta.
     * 
     */
    public boolean isEstadoRespuesta() {
        return estadoRespuesta;
    }

    /**
     * Define el valor de la propiedad estadoRespuesta.
     * 
     */
    public void setEstadoRespuesta(boolean value) {
        this.estadoRespuesta = value;
    }

}
