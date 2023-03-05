/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM rdfISerializer.idl
 */

module mozilla.xpcom.rdfISerializer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.rdfIDataSource; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    rdfISerializer */
const char[] RDFISERIALIZER_IID_STR = "f0edfcdd-8bca-4d32-9226-7421001396a4";

const nsIID RDFISERIALIZER_IID= 
  {0xf0edfcdd, 0x8bca, 0x4d32, 
    [ 0x92, 0x26, 0x74, 0x21, 0x00, 0x13, 0x96, 0xa4 ]};

/**
 * Interface used to serialize RDF.
 *
 * @status PLASMA
 */
extern(Windows)
interface rdfISerializer : nsISupports {
  static const char[] IID_STR = RDFISERIALIZER_IID_STR;
  static const nsIID IID = RDFISERIALIZER_IID;

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
  nsresult Serialize(rdfIDataSource aDataSource, nsIOutputStream aOut);

}

