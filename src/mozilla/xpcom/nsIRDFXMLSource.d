/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFXMLSource.idl
 */

module mozilla.xpcom.nsIRDFXMLSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIOutputStream;


/* starting interface:    nsIRDFXMLSource */
const char[] NS_IRDFXMLSOURCE_IID_STR = "4da56f10-99fe-11d2-8ebb-00805f29f370";

const nsIID NS_IRDFXMLSOURCE_IID= 
  {0x4da56f10, 0x99fe, 0x11d2, 
    [ 0x8e, 0xbb, 0x00, 0x80, 0x5f, 0x29, 0xf3, 0x70 ]};

extern(Windows)
interface nsIRDFXMLSource : nsISupports {
  static const char[] IID_STR = NS_IRDFXMLSOURCE_IID_STR;
  static const nsIID IID = NS_IRDFXMLSOURCE_IID;

  /**
     * Serialize the contents of the datasource to aStream.
     * @param aStream the output stream the will recieve the
     *   RDF/XML. Currently, the output stream need only
     *   implement the |write()| method.
     */
  /* void Serialize (in nsIOutputStream aStream); */
  nsresult Serialize(nsIOutputStream aStream);

}

