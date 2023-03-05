/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFService.idl
 */

module mozilla.xpcom.nsIRDFService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.xpcom.nsIRDFLiteral;
public import mozilla.xpcom.nsIRDFDataSource;


/* starting interface:    nsIRDFService */
const char[] NS_IRDFSERVICE_IID_STR = "bfd05261-834c-11d2-8eac-00805f29f370";

const nsIID NS_IRDFSERVICE_IID= 
  {0xbfd05261, 0x834c, 0x11d2, 
    [ 0x8e, 0xac, 0x00, 0x80, 0x5f, 0x29, 0xf3, 0x70 ]};

extern(Windows)
interface nsIRDFService : nsISupports {
  static const char[] IID_STR = NS_IRDFSERVICE_IID_STR;
  static const nsIID IID = NS_IRDFSERVICE_IID;

  /* nsIRDFResource GetResource (in AUTF8String aURI); */
  nsresult GetResource(nsACString * aURI, nsIRDFResource *_retval);

  /* nsIRDFResource GetUnicodeResource (in AString aURI); */
  nsresult GetUnicodeResource(nsAString * aURI, nsIRDFResource *_retval);

  /* nsIRDFResource GetAnonymousResource (); */
  nsresult GetAnonymousResource(nsIRDFResource *_retval);

  /* nsIRDFLiteral GetLiteral (in wstring aValue); */
  nsresult GetLiteral(PRUnichar *aValue, nsIRDFLiteral *_retval);

  /* nsIRDFDate GetDateLiteral (in long long aValue); */
  nsresult GetDateLiteral(PRInt64 aValue, nsIRDFDate *_retval);

  /* nsIRDFInt GetIntLiteral (in long aValue); */
  nsresult GetIntLiteral(PRInt32 aValue, nsIRDFInt *_retval);

  /* [noscript] nsIRDFBlob getBlobLiteral (in const_octet_ptr aValue, in long aLength); */
  nsresult GetBlobLiteral(PRUint8 * aValue, PRInt32 aLength, nsIRDFBlob *_retval);

  /* boolean IsAnonymousResource (in nsIRDFResource aResource); */
  nsresult IsAnonymousResource(nsIRDFResource aResource, PRBool *_retval);

  /* void RegisterResource (in nsIRDFResource aResource, in boolean aReplace); */
  nsresult RegisterResource(nsIRDFResource aResource, PRBool aReplace);

  /* void UnregisterResource (in nsIRDFResource aResource); */
  nsresult UnregisterResource(nsIRDFResource aResource);

  /* void RegisterDataSource (in nsIRDFDataSource aDataSource, in boolean aReplace); */
  nsresult RegisterDataSource(nsIRDFDataSource aDataSource, PRBool aReplace);

  /* void UnregisterDataSource (in nsIRDFDataSource aDataSource); */
  nsresult UnregisterDataSource(nsIRDFDataSource aDataSource);

  /* nsIRDFDataSource GetDataSource (in string aURI); */
  nsresult GetDataSource(char *aURI, nsIRDFDataSource *_retval);

  /* nsIRDFDataSource GetDataSourceBlocking (in string aURI); */
  nsresult GetDataSourceBlocking(char *aURI, nsIRDFDataSource *_retval);

}

