/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIPluginHost.idl
 */

module mozilla.xpcom.nsPIPluginHost;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPluginInstance;


/* starting interface:    nsPIPluginHost */
const char[] NS_PIPLUGINHOST_IID_STR = "8e3d71e6-2319-11d5-9cf8-0060b0fbd8ac";

const nsIID NS_PIPLUGINHOST_IID= 
  {0x8e3d71e6, 0x2319, 0x11d5, 
    [ 0x9c, 0xf8, 0x00, 0x60, 0xb0, 0xfb, 0xd8, 0xac ]};

extern(Windows)
interface nsPIPluginHost : nsISupports {
  static const char[] IID_STR = NS_PIPLUGINHOST_IID_STR;
  static const nsIID IID = NS_PIPLUGINHOST_IID;

  /**
  * To notify the plugin manager that the plugin created a script object 
  */
  /* void setIsScriptableInstance (in nsIPluginInstance aInstance, in boolean aScriptable); */
  nsresult SetIsScriptableInstance(nsIPluginInstance aInstance, PRBool aScriptable);

  /**
  * This method parses post buffer to find out case insensitive "Content-length" string
  * and CR or LF some where after that, then it assumes there is http headers in
  * the input buffer and continue to search for end of headers (CRLFCRLF or LFLF).
  * It will *always malloc()* output buffer (caller is responsible to free it) 
  * if input buffer starts with LF, which comes from 4.x spec 
  * http://developer.netscape.com/docs/manuals/communicator/plugin/pgfn2.htm#1007754
  * "If no custom headers are required, simply add a blank
  * line ('\n') to the beginning of the file or buffer.",
  * it skips that '\n' and considers rest of the input buffer as data.
  * If "Content-length" string and end of headers is found 
  *   it substitutes single LF with CRLF in the headers, so the end of headers
  *   always will be CRLFCRLF (single CR in headers, if any, remain untouched)
  * else
  *   it puts "Content-length: "+size_of_data+CRLFCRLF at the beginning of the output buffer
  * and memcpy data to the output buffer 
  *
  * On failure outPostData and outPostDataLen will be set in 0.  
  * @param aInPostData      - the post data
  * @param aInPostDataLen   - the length aInPostData
  * @param aOutPostData     - the buffer
  * @param aOutPostDataLen  - the length of aOutPostData
  **/
  /* void parsePostBufferToFixHeaders (in string aInPostData, in unsigned long aInPostDataLen, out string aOutPostData, out unsigned long aOutPostDataLen); */
  nsresult ParsePostBufferToFixHeaders(char *aInPostData, PRUint32 aInPostDataLen, char **aOutPostData, PRUint32 *aOutPostDataLen);

  /**
  * To create tmp file with Content len header in, it will use by http POST
  */
  /* void createTmpFileToPost (in string aPostDataURL, out string aTmpFileName); */
  nsresult CreateTmpFileToPost(char *aPostDataURL, char **aTmpFileName);

  /**
  *  Creates a new plugin native window object
  */
  /* void newPluginNativeWindow (out nsPluginNativeWindowPtr aPluginNativeWindow); */
  nsresult NewPluginNativeWindow(nsPluginNativeWindow * *aPluginNativeWindow);

  /**
  *  Deletes plugin native window object created by NewPluginNativeWindow
  */
  /* void deletePluginNativeWindow (in nsPluginNativeWindowPtr aPluginNativeWindow); */
  nsresult DeletePluginNativeWindow(nsPluginNativeWindow * aPluginNativeWindow);

}

