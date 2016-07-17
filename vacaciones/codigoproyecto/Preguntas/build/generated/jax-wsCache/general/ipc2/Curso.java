
package ipc2;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para curso complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="curso">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="carrera" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="codcurso" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="estadocurso" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
 *         &lt;element name="nombre" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "curso", propOrder = {
    "carrera",
    "codcurso",
    "estadocurso",
    "nombre"
})
public class Curso {

    protected int carrera;
    protected int codcurso;
    protected boolean estadocurso;
    protected String nombre;

    /**
     * Obtiene el valor de la propiedad carrera.
     * 
     */
    public int getCarrera() {
        return carrera;
    }

    /**
     * Define el valor de la propiedad carrera.
     * 
     */
    public void setCarrera(int value) {
        this.carrera = value;
    }

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
     * Obtiene el valor de la propiedad estadocurso.
     * 
     */
    public boolean isEstadocurso() {
        return estadocurso;
    }

    /**
     * Define el valor de la propiedad estadocurso.
     * 
     */
    public void setEstadocurso(boolean value) {
        this.estadocurso = value;
    }

    /**
     * Obtiene el valor de la propiedad nombre.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Define el valor de la propiedad nombre.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombre(String value) {
        this.nombre = value;
    }

}
