/* Converted to D from nsIDirectoryServiceProvider.h by htod */
module mozilla.xpcom.nsIDirectoryServiceProvider;

import mozilla.xpcom.nscore;
import mozilla.xpcom.nsISupports;
import mozilla.xpcom.nsIFile;

/* starting interface:    nsIDirectoryServiceProvider */
const char[] NS_IDIRECTORYSERVICEPROVIDER_IID_STR = "bbf8cab0-d43a-11d3-8cc2-00609792278c";

const nsIID NS_IDIRECTORYSERVICEPROVIDER_IID =
  {0xbbf8cab0, 0xd43a, 0x11d3, 
    [ 0x8c, 0xc2, 0x00, 0x60, 0x97, 0x92, 0x27, 0x8c ]};

nsIID GetIID(T: nsIDirectoryServiceProvider)()
{
	return NS_IDIRECTORYSERVICEPROVIDER_IID;
}

/**
 * nsIDirectoryServiceProvider
 *
 * Used by Directory Service to get file locations.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDirectoryServiceProvider : nsISupports {

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

};
