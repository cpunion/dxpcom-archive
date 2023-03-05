/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFXMLSource.idl
 */

module mozilla.dxpcom.nsIRDFXMLSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFXMLSource;


public import mozilla.dxpcom.nsIRDFXMLSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIOutputStream;
public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIRDFXMLSource */
class nsIRDFXMLSourceD : public nsISupportsD {

  static const nsIID IID = NS_IRDFXMLSOURCE_IID;


  alias nsIRDFXMLSource InnerType;

  this(nsIRDFXMLSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFXMLSource opCast() {
    return inner;
  }

  void opAssign(nsIRDFXMLSource value) {
    inner = value;
  }

  /**
     * Serialize the contents of the datasource to aStream.
     * @param aStream the output stream the will recieve the
     *   RDF/XML. Currently, the output stream need only
     *   implement the |write()| method.
     */
  /* void Serialize (in nsIOutputStream aStream); */
  void Serialize(nsIOutputStreamD aStream){
    nsresult __result = inner.Serialize(aStream ? cast(nsIOutputStream)aStream : null);
    CheckException(__result);
  }

private:
  nsIRDFXMLSource inner;

}

