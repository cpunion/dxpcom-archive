/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDirectoryService.idl
 */

module mozilla.dxpcom.nsIDirectoryServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDirectoryService;


public import mozilla.dxpcom.nsIDirectoryServiceD;


public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIDirectoryServiceProvider */
/**
 * nsIDirectoryServiceProvider
 *
 * Used by Directory Service to get file locations.
 *
 * @status FROZEN
 */
class nsIDirectoryServiceProviderD : public nsISupportsD {

  static const nsIID IID = NS_IDIRECTORYSERVICEPROVIDER_IID;


  alias nsIDirectoryServiceProvider InnerType;

  this(nsIDirectoryServiceProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsIDirectoryServiceProvider opCast() {
    return inner;
  }

  void opAssign(nsIDirectoryServiceProvider value) {
    inner = value;
  }

  /**
  * getFile
  *
  * Directory Service calls this when it gets the first request for
  * a prop or on every request if the prop is not persistent.
  *
  * @param prop         The symbolic name of the file.
  * @param persistent   TRUE - The returned file will be cached by Directory
  *                     Service. Subsequent requests for this prop will
  *                     bypass the provider and use the cache.
  *                     FALSE - The provider will be asked for this prop
  *                     each time it is requested.
  *
  * @return             The file represented by the property.
  *
  */
  /* nsIFile getFile (in string prop, out PRBool persistent); */
  nsIFileD  GetFile(char*prop, out PRBool persistent){
    nsIFile _retval;
    nsresult __result = inner.GetFile(prop, &persistent, &_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

private:
  nsIDirectoryServiceProvider inner;

}


/* starting wrapper class:    nsIDirectoryServiceProvider2 */
/**
 * nsIDirectoryServiceProvider2
 *
 * An extension of nsIDirectoryServiceProvider which allows
 * multiple files to be returned for the given key.
 *
 * @status FROZEN
 */
class nsIDirectoryServiceProvider2D : public nsIDirectoryServiceProviderD {

  static const nsIID IID = NS_IDIRECTORYSERVICEPROVIDER2_IID;


  alias nsIDirectoryServiceProvider2 InnerType;

  this(nsIDirectoryServiceProvider2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIDirectoryServiceProvider2 opCast() {
    return inner;
  }

  void opAssign(nsIDirectoryServiceProvider2 value) {
    inner = value;
  }

  /**
  * getFiles
  *
  * Directory Service calls this when it gets a request for
  * a prop and the requested type is nsISimpleEnumerator.
  *
  * @param prop         The symbolic name of the file list.
  *
  * @return             An enumerator for a list of file locations.
  *                     The elements in the enumeration are nsIFile
  * @returnCode         NS_SUCCESS_AGGREGATE_RESULT if this result should be
  *                     aggregated with other "lower" providers.
  */
  /* nsISimpleEnumerator getFiles (in string prop); */
  nsISimpleEnumeratorD  GetFiles(char*prop){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetFiles(prop, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIDirectoryServiceProvider2 inner;

}


/* starting wrapper class:    nsIDirectoryService */
/**
 * nsIDirectoryService
 *
 * @status FROZEN
 */
class nsIDirectoryServiceD : public nsISupportsD {

  static const nsIID IID = NS_IDIRECTORYSERVICE_IID;


  alias nsIDirectoryService InnerType;

  this(nsIDirectoryService intr){
    super(intr);
    this.inner = intr;
  }

  nsIDirectoryService opCast() {
    return inner;
  }

  void opAssign(nsIDirectoryService value) {
    inner = value;
  }

  /**
  * init
  *
  * Must be called. Used internally by XPCOM initialization.
  *
  */
  /* void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

  /**
  * registerProvider
  *
  * Register a provider with the service.
  *
  * @param prov            The service will keep a strong reference
  *                        to this object. It will be released when
  *                        the service is released.
  *
  */
  /* void registerProvider (in nsIDirectoryServiceProvider prov); */
  void RegisterProvider(nsIDirectoryServiceProviderD prov){
    nsresult __result = inner.RegisterProvider(prov ? cast(nsIDirectoryServiceProvider)prov : null);
    CheckException(__result);
  }

  /**
  * unregisterProvider
  *
  * Unregister a provider with the service.
  *
  * @param prov            
  *
  */
  /* void unregisterProvider (in nsIDirectoryServiceProvider prov); */
  void UnregisterProvider(nsIDirectoryServiceProviderD prov){
    nsresult __result = inner.UnregisterProvider(prov ? cast(nsIDirectoryServiceProvider)prov : null);
    CheckException(__result);
  }

private:
  nsIDirectoryService inner;

}

