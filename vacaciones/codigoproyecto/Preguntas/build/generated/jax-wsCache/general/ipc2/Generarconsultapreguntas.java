
package ipc2;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para generarconsultapreguntas complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="generarconsultapreguntas">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="cadenaconsulta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "generarconsultapreguntas", propOrder = {
    "cadenaconsulta"
})
public class Generarconsultapreguntas {

    protected String cadenaconsulta;

    /**
     * Obtiene el valor de la propiedad cadenaconsulta.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCadenaconsulta() {
        return cadenaconsulta;
    }

    /**
     * Define el valor de la propiedad cadenaconsulta.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCadenaconsulta(String value) {
        this.cadenaconsulta = value;
    }

}
