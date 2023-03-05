/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDirectoryService.idl
 */

module mozilla.xpcom.nsIDirectoryService;


public import mozilla.xpcom.nsrootidl;


public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFile;


/* starting interface:    nsIDirectoryServiceProvider */
const char[] NS_IDIRECTORYSERVICEPROVIDER_IID_STR = "bbf8cab0-d43a-11d3-8cc2-00609792278c";

const nsIID NS_IDIRECTORYSERVICEPROVIDER_IID= 
  {0xbbf8cab0, 0xd43a, 0x11d3, 
    [ 0x8c, 0xc2, 0x00, 0x60, 0x97, 0x92, 0x27, 0x8c ]};

/**
 * nsIDirectoryServiceProvider
 *
 * Used by Directory Service to get file locations.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDirectoryServiceProvider : nsISupports {
  static const char[] IID_STR = NS_IDIRECTORYSERVICEPROVIDER_IID_STR;
  static const nsIID IID = NS_IDIRECTORYSERVICEPROVIDER_IID;

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
  nsresult GetFile(char *prop, PRBool *persistent, nsIFile *_retval);

}


/* starting interface:    nsIDirectoryServiceProvider2 */
const char[] NS_IDIRECTORYSERVICEPROVIDER2_IID_STR = "2f977d4b-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_IDIRECTORYSERVICEPROVIDER2_IID= 
  {0x2f977d4b, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

/**
 * nsIDirectoryServiceProvider2
 *
 * An extension of nsIDirectoryServiceProvider which allows
 * multiple files to be returned for the given key.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDirectoryServiceProvider2 : nsIDirectoryServiceProvider {
  static const char[] IID_STR = NS_IDIRECTORYSERVICEPROVIDER2_IID_STR;
  static const nsIID IID = NS_IDIRECTORYSERVICEPROVIDER2_IID;

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
  nsresult GetFiles(char *prop, nsISimpleEnumerator *_retval);

}


/* starting interface:    nsIDirectoryService */
const char[] NS_IDIRECTORYSERVICE_IID_STR = "57a66a60-d43a-11d3-8cc2-00609792278c";

const nsIID NS_IDIRECTORYSERVICE_IID= 
  {0x57a66a60, 0xd43a, 0x11d3, 
    [ 0x8c, 0xc2, 0x00, 0x60, 0x97, 0x92, 0x27, 0x8c ]};

/**
 * nsIDirectoryService
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDirectoryService : nsISupports {
  static const char[] IID_STR = NS_IDIRECTORYSERVICE_IID_STR;
  static const nsIID IID = NS_IDIRECTORYSERVICE_IID;

  /**
  * init
  *
  * Must be called. Used internally by XPCOM initialization.
  *
  */
  /* void init (); */
  nsresult Init();

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
  nsresult RegisterProvider(nsIDirectoryServiceProvider prov);

  /**
  * unregisterProvider
  *
  * Unregister a provider with the service.
  *
  * @param prov            
  *
  */
  /* void unregisterProvider (in nsIDirectoryServiceProvider prov); */
  nsresult UnregisterProvider(nsIDirectoryServiceProvider prov);

}

