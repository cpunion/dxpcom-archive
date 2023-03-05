/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIPluginHost.idl
 */

module mozilla.dxpcom.nsPIPluginHostD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIPluginHost;


public import mozilla.dxpcom.nsPIPluginHostD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPluginInstance;
public import mozilla.dxpcom.nsIPluginInstanceD;


/* starting wrapper class:    nsPIPluginHost */
class nsPIPluginHostD : public nsISupportsD {

  static const nsIID IID = NS_PIPLUGINHOST_IID;


  alias nsPIPluginHost InnerType;

  this(nsPIPluginHost intr){
    super(intr);
    this.inner = intr;
  }

  nsPIPluginHost opCast() {
    return inner;
  }

  void opAssign(nsPIPluginHost value) {
    inner = value;
  }

  /**
  * To notify the plugin manager that the plugin created a script object 
  */
  /* void setIsScriptableInstance (in nsIPluginInstance aInstance, in boolean aScriptable); */
  void SetIsScriptableInstance(nsIPluginInstanceD aInstance, PRBool aScriptable){
    nsresult __result = inner.SetIsScriptableInstance(aInstance ? cast(nsIPluginInstance)aInstance : null, aScriptable);
    CheckException(__result);
  }

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
  void ParsePostBufferToFixHeaders(char*aInPostData, PRUint32 aInPostDataLen, out char*aOutPostData, out PRUint32 aOutPostDataLen){
    nsresult __result = inner.ParsePostBufferToFixHeaders(aInPostData, aInPostDataLen, &aOutPostData, &aOutPostDataLen);
    CheckException(__result);
  }

  /**
  * To create tmp file with Content len header in, it will use by http POST
  */
  /* void createTmpFileToPost (in string aPostDataURL, out string aTmpFileName); */
  void CreateTmpFileToPost(char*aPostDataURL, out char*aTmpFileName){
    nsresult __result = inner.CreateTmpFileToPost(aPostDataURL, &aTmpFileName);
    CheckException(__result);
  }

  /**
  *  Creates a new plugin native window object
  */
  /* void newPluginNativeWindow (out nsPluginNativeWindowPtr aPluginNativeWindow); */
  void NewPluginNativeWindow(out nsPluginNativeWindow * aPluginNativeWindow){
    nsresult __result = inner.NewPluginNativeWindow(&aPluginNativeWindow);
    CheckException(__result);
  }

  /**
  *  Deletes plugin native window object created by NewPluginNativeWindow
  */
  /* void deletePluginNativeWindow (in nsPluginNativeWindowPtr aPluginNativeWindow); */
  void DeletePluginNativeWindow(nsPluginNativeWindow * aPluginNativeWindow){
    nsresult __result = inner.DeletePluginNativeWindow(aPluginNativeWindow);
    CheckException(__result);
  }

private:
  nsPIPluginHost inner;

}

