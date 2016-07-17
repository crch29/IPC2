
package ipc2;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para consultarcurso complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="consultarcurso">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="consultacurso" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "consultarcurso", propOrder = {
    "consultacurso"
})
public class Consultarcurso {

    protected String consultacurso;

    /**
     * Obtiene el valor de la propiedad consultacurso.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getConsultacurso() {
        return consultacurso;
    }

    /**
     * Define el valor de la propiedad consultacurso.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setConsultacurso(String value) {
        this.consultacurso = value;
    }

}
