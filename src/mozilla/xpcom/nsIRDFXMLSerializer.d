/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFXMLSerializer.idl
 */

module mozilla.xpcom.nsIRDFXMLSerializer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAtom;
public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFDataSource;


/* starting interface:    nsIRDFXMLSerializer */
const char[] NS_IRDFXMLSERIALIZER_IID_STR = "8ae1fbf8-1dd2-11b2-bd21-d728069cca92";

const nsIID NS_IRDFXMLSERIALIZER_IID= 
  {0x8ae1fbf8, 0x1dd2, 0x11b2, 
    [ 0xbd, 0x21, 0xd7, 0x28, 0x06, 0x9c, 0xca, 0x92 ]};

extern(Windows)
interface nsIRDFXMLSerializer : nsISupports {
  static const char[] IID_STR = NS_IRDFXMLSERIALIZER_IID_STR;
  static const nsIID IID = NS_IRDFXMLSERIALIZER_IID;

  /**
     * Initialize the serializer with the specified datasource.
     * @param aDataSource the datasource from which data will be
     *   serialized
     */
  /* void init (in nsIRDFDataSource aDataSource); */
  nsresult Init(nsIRDFDataSource aDataSource);

  /**
     * Add the specified namespace to the serializer.
     * @param aPrefix the attribute namespace prefix
     * @param aURI the namespace URI
     */
  /* void addNameSpace (in nsIAtom aPrefix, in DOMString aURI); */
  nsresult AddNameSpace(nsIAtom aPrefix, nsAString * aURI);

}

