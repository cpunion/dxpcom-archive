/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM rdfISerializer.idl
 */

module mozilla.dxpcom.rdfISerializerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.rdfISerializer;


public import mozilla.dxpcom.rdfISerializerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.rdfIDataSource;

public import mozilla.dxpcom.rdfIDataSourceD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    rdfISerializer */
/**
 * Interface used to serialize RDF.
 *
 * @status PLASMA
 */
class rdfISerializerD : public nsISupportsD {

  static const nsIID IID = RDFISERIALIZER_IID;


  alias rdfISerializer InnerType;

  this(rdfISerializer intr){
    super(intr);
    this.inner = intr;
  }

  rdfISerializer opCast() {
    return inner;
  }

  void opAssign(rdfISerializer value) {
    inner = value;
  }

  /**
     * Synchronously serialize the given datasource to the outputstream.
     *
     * Implementations are not required to implement any buffering or
     * other stream-based optimizations.
     *
     * @param aDataSource The RDF data source to be serialized.
     * @param aOut The output stream to use.
     */
  /* void serialize (in rdfIDataSource aDataSource, in nsIOutputStream aOut); */
  void Serialize(rdfIDataSourceD aDataSource, nsIOutputStreamD aOut){
    nsresult __result = inner.Serialize(aDataSource ? cast(rdfIDataSource)aDataSource : null, aOut ? cast(nsIOutputStream)aOut : null);
    CheckException(__result);
  }

private:
  rdfISerializer inner;

}

