/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFRemoteDataSource.idl
 */

module mozilla.dxpcom.nsIRDFRemoteDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFRemoteDataSource;


public import mozilla.dxpcom.nsIRDFRemoteDataSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIRDFRemoteDataSource */
/**
 * A datasource that may load asynchronously
 */
class nsIRDFRemoteDataSourceD : public nsISupportsD {

  static const nsIID IID = NS_IRDFREMOTEDATASOURCE_IID;


  alias nsIRDFRemoteDataSource InnerType;

  this(nsIRDFRemoteDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFRemoteDataSource opCast() {
    return inner;
  }

  void opAssign(nsIRDFRemoteDataSource value) {
    inner = value;
  }

  /**
     * This value is <code>true</code> when the datasource has
     * fully loaded itself.
     */
  /* readonly attribute boolean loaded; */
  PRBool Loaded(){
    PRBool value;
    nsresult __result = inner.GetLoaded(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Specify the URI for the data source: this is the prefix
     * that will be used to register the data source in the
     * data source registry.
     * @param aURI the URI to load
     */
  /* void Init (in string aURI); */
  void Init(char*aURI){
    nsresult __result = inner.Init(aURI);
    CheckException(__result);
  }

  /**
     * Refresh the remote datasource, re-loading its contents
     * from the URI.
     *
     * @param aBlocking If <code>true</code>, the call will block
     * until the datasource has completely reloaded.
     */
  /* void Refresh (in boolean aBlocking); */
  void Refresh(PRBool aBlocking){
    nsresult __result = inner.Refresh(aBlocking);
    CheckException(__result);
  }

  /**
     * Request that a data source write it's contents out to 
     * permanent storage, if applicable.
     */
  /* void Flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

  /* void FlushTo (in string aURI); */
  void FlushTo(char*aURI){
    nsresult __result = inner.FlushTo(aURI);
    CheckException(__result);
  }

private:
  nsIRDFRemoteDataSource inner;

}

