
package ipc2;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.6-1b01 
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "general", targetNamespace = "http://ipc2/", wsdlLocation = "http://localhost:8084/serviciowebproyecto/general?wsdl")
public class General_Service
    extends Service
{

    private final static URL GENERAL_WSDL_LOCATION;
    private final static WebServiceException GENERAL_EXCEPTION;
    private final static QName GENERAL_QNAME = new QName("http://ipc2/", "general");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8084/serviciowebproyecto/general?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        GENERAL_WSDL_LOCATION = url;
        GENERAL_EXCEPTION = e;
    }

    public General_Service() {
        super(__getWsdlLocation(), GENERAL_QNAME);
    }

    public General_Service(WebServiceFeature... features) {
        super(__getWsdlLocation(), GENERAL_QNAME, features);
    }

    public General_Service(URL wsdlLocation) {
        super(wsdlLocation, GENERAL_QNAME);
    }

    public General_Service(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, GENERAL_QNAME, features);
    }

    public General_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public General_Service(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns General
     */
    @WebEndpoint(name = "generalPort")
    public General getGeneralPort() {
        return super.getPort(new QName("http://ipc2/", "generalPort"), General.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns General
     */
    @WebEndpoint(name = "generalPort")
    public General getGeneralPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://ipc2/", "generalPort"), General.class, features);
    }

    private static URL __getWsdlLocation() {
        if (GENERAL_EXCEPTION!= null) {
            throw GENERAL_EXCEPTION;
        }
        return GENERAL_WSDL_LOCATION;
    }

}