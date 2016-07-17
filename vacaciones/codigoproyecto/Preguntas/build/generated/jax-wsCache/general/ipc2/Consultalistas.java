
package ipc2;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para consultalistas complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="consultalistas">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="consulta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="parametro" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "consultalistas", propOrder = {
    "consulta",
    "parametro"
})
public class Consultalistas {

    protected String consulta;
    protected String parametro;

    /**
     * Obtiene el valor de la propiedad consulta.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getConsulta() {
        return consulta;
    }

    /**
     * Define el valor de la propiedad consulta.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setConsulta(String value) {
        this.consulta = value;
    }

    /**
     * Obtiene el valor de la propiedad parametro.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getParametro() {
        return parametro;
    }

    /**
     * Define el valor de la propiedad parametro.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setParametro(String value) {
        this.parametro = value;
    }

}
