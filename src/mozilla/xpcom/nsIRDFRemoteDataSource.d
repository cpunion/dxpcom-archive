/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFRemoteDataSource.idl
 */

module mozilla.xpcom.nsIRDFRemoteDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIRDFRemoteDataSource */
const char[] NS_IRDFREMOTEDATASOURCE_IID_STR = "1d297320-27f7-11d3-be01-000064657374";

const nsIID NS_IRDFREMOTEDATASOURCE_IID= 
  {0x1d297320, 0x27f7, 0x11d3, 
    [ 0xbe, 0x01, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * A datasource that may load asynchronously
 */
extern(Windows)
interface nsIRDFRemoteDataSource : nsISupports {
  static const char[] IID_STR = NS_IRDFREMOTEDATASOURCE_IID_STR;
  static const nsIID IID = NS_IRDFREMOTEDATASOURCE_IID;

  /**
     * This value is <code>true</code> when the datasource has
     * fully loaded itself.
     */
  /* readonly attribute boolean loaded; */
  nsresult GetLoaded(PRBool *aLoaded);

  /**
     * Specify the URI for the data source: this is the prefix
     * that will be used to register the data source in the
     * data source registry.
     * @param aURI the URI to load
     */
  /* void Init (in string aURI); */
  nsresult Init(char *aURI);

  /**
     * Refresh the remote datasource, re-loading its contents
     * from the URI.
     *
     * @param aBlocking If <code>true</code>, the call will block
     * until the datasource has completely reloaded.
     */
  /* void Refresh (in boolean aBlocking); */
  nsresult Refresh(PRBool aBlocking);

  /**
     * Request that a data source write it's contents out to 
     * permanent storage, if applicable.
     */
  /* void Flush (); */
  nsresult Flush();

  /* void FlushTo (in string aURI); */
  nsresult FlushTo(char *aURI);

}

