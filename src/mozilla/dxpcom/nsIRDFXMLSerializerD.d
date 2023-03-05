/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFXMLSerializer.idl
 */

module mozilla.dxpcom.nsIRDFXMLSerializerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFXMLSerializer;


public import mozilla.dxpcom.nsIRDFXMLSerializerD;

public import mozilla.xpcom.nsIAtom;
public import mozilla.dxpcom.nsIAtomD;
public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.dxpcom.nsIRDFDataSourceD;


/* starting wrapper class:    nsIRDFXMLSerializer */
class nsIRDFXMLSerializerD : public nsISupportsD {

  static const nsIID IID = NS_IRDFXMLSERIALIZER_IID;


  alias nsIRDFXMLSerializer InnerType;

  this(nsIRDFXMLSerializer intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFXMLSerializer opCast() {
    return inner;
  }

  void opAssign(nsIRDFXMLSerializer value) {
    inner = value;
  }

  /**
     * Initialize the serializer with the specified datasource.
     * @param aDataSource the datasource from which data will be
     *   serialized
     */
  /* void init (in nsIRDFDataSource aDataSource); */
  void Init(nsIRDFDataSourceD aDataSource){
    nsresult __result = inner.Init(aDataSource ? cast(nsIRDFDataSource)aDataSource : null);
    CheckException(__result);
  }

  /**
     * Add the specified namespace to the serializer.
     * @param aPrefix the attribute namespace prefix
     * @param aURI the namespace URI
     */
  /* void addNameSpace (in nsIAtom aPrefix, in DOMString aURI); */
  void AddNameSpace(nsIAtomD aPrefix, wchar[] aURI){
    scope auto _aURI = new AString(aURI);
    nsresult __result = inner.AddNameSpace(aPrefix ? cast(nsIAtom)aPrefix : null, cast(nsAString*)_aURI);
    CheckException(__result);
  }

private:
  nsIRDFXMLSerializer inner;

}

