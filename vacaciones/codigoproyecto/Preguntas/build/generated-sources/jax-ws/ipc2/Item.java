
package ipc2;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para item complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="item">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="bonusneg" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="bonuspos" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="coditem" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="efectividad" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="estado" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
 *         &lt;element name="nombre" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="rareza" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "item", propOrder = {
    "bonusneg",
    "bonuspos",
    "coditem",
    "efectividad",
    "estado",
    "nombre",
    "rareza"
})
public class Item {

    protected int bonusneg;
    protected int bonuspos;
    protected int coditem;
    protected int efectividad;
    protected boolean estado;
    protected String nombre;
    protected int rareza;

    /**
     * Obtiene el valor de la propiedad bonusneg.
     * 
     */
    public int getBonusneg() {
        return bonusneg;
    }

    /**
     * Define el valor de la propiedad bonusneg.
     * 
     */
    public void setBonusneg(int value) {
        this.bonusneg = value;
    }

    /**
     * Obtiene el valor de la propiedad bonuspos.
     * 
     */
    public int getBonuspos() {
        return bonuspos;
    }

    /**
     * Define el valor de la propiedad bonuspos.
     * 
     */
    public void setBonuspos(int value) {
        this.bonuspos = value;
    }

    /**
     * Obtiene el valor de la propiedad coditem.
     * 
     */
    public int getCoditem() {
        return coditem;
    }

    /**
     * Define el valor de la propiedad coditem.
     * 
     */
    public void setCoditem(int value) {
        this.coditem = value;
    }

    /**
     * Obtiene el valor de la propiedad efectividad.
     * 
     */
    public int getEfectividad() {
        return efectividad;
    }

    /**
     * Define el valor de la propiedad efectividad.
     * 
     */
    public void setEfectividad(int value) {
        this.efectividad = value;
    }

    /**
     * Obtiene el valor de la propiedad estado.
     * 
     */
    public boolean isEstado() {
        return estado;
    }

    /**
     * Define el valor de la propiedad estado.
     * 
     */
    public void setEstado(boolean value) {
        this.estado = value;
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

    /**
     * Obtiene el valor de la propiedad rareza.
     * 
     */
    public int getRareza() {
        return rareza;
    }

    /**
     * Define el valor de la propiedad rareza.
     * 
     */
    public void setRareza(int value) {
        this.rareza = value;
    }

}
