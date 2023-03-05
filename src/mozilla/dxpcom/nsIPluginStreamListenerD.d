/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginStreamListener.idl
 */

module mozilla.dxpcom.nsIPluginStreamListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginStreamListener;


public import mozilla.dxpcom.nsIPluginStreamListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;
public import mozilla.xpcom.nsIPluginStreamInfo;
public import mozilla.dxpcom.nsIPluginStreamInfoD;
public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIPluginStreamListener */
/**
 * The nsIPluginStreamListener interface defines the minimum set of functionality that
 * the browser will support if it allows plugins. Plugins can call QueryInterface
 * to determine if a plugin manager implements more specific APIs or other 
 * browser interfaces for the plugin to use (e.g. nsINetworkManager).
 */
class nsIPluginStreamListenerD : public nsISupportsD {

  static const nsIID IID = NS_IPLUGINSTREAMLISTENER_IID;


  alias nsIPluginStreamListener InnerType;

  this(nsIPluginStreamListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginStreamListener opCast() {
    return inner;
  }

  void opAssign(nsIPluginStreamListener value) {
    inner = value;
  }

  /**
     * Notify the observer that the URL has started to load.  This method is
     * called only once, at the beginning of a URL load.<BR><BR>
   *
   * @param aPluginInfo  - plugin stream info
   * @return             - the return value is currently ignored, in the future
   * it may be used to cancel the URL load..
     */
  /* void onStartBinding (in nsIPluginStreamInfo aPluginInfo); */
  void OnStartBinding(nsIPluginStreamInfoD aPluginInfo){
    nsresult __result = inner.OnStartBinding(aPluginInfo ? cast(nsIPluginStreamInfo)aPluginInfo : null);
    CheckException(__result);
  }

  /**
     * Notify the client that data is available in the input stream.  This
     * method is called whenver data is written into the input stream by the
     * networking library...<BR><BR>
     * 
   * @param aPluginInfo  - plugin stream info
   * @param aInputStream - the input stream containing the data. This stream can
     * be either a blocking or non-blocking stream.
   * @param aLength      - the amount of data that was just pushed into the stream.
   * @return             - the return value is currently ignored.
     */
  /* void onDataAvailable (in nsIPluginStreamInfo aPluginInfo, in nsIInputStream aInputStream, in unsigned long aLength); */
  void OnDataAvailable(nsIPluginStreamInfoD aPluginInfo, nsIInputStreamD aInputStream, PRUint32 aLength){
    nsresult __result = inner.OnDataAvailable(aPluginInfo ? cast(nsIPluginStreamInfo)aPluginInfo : null, aInputStream ? cast(nsIInputStream)aInputStream : null, aLength);
    CheckException(__result);
  }

  /**
   * Notify the client that data is available in the file.
   * 
   * @param aPluginInfo - plugin stream info
   * @param aFileName   - the name of the file containing the data
   * @return            - the return value is currently ignored.
   */
  /* void onFileAvailable (in nsIPluginStreamInfo aPluginInfo, in string aFileName); */
  void OnFileAvailable(nsIPluginStreamInfoD aPluginInfo, char*aFileName){
    nsresult __result = inner.OnFileAvailable(aPluginInfo ? cast(nsIPluginStreamInfo)aPluginInfo : null, aFileName);
    CheckException(__result);
  }

  /**
     * Notify the observer that the URL has finished loading.  This method is 
     * called once when the networking library has finished processing the 
   * URL transaction initiatied via the nsINetService::Open(...) call.<BR><BR>
     * 
     * This method is called regardless of whether the URL loaded successfully.<BR><BR>
     * 
   * @param aPluginInfo - plugin stream info
   * @param aStatus     - reason why the stream has been terminated
   * @return            - the return value is currently ignored.
     */
  /* void onStopBinding (in nsIPluginStreamInfo aPluginInfo, in nsresult aStatus); */
  void OnStopBinding(nsIPluginStreamInfoD aPluginInfo, nsresult aStatus){
    nsresult __result = inner.OnStopBinding(aPluginInfo ? cast(nsIPluginStreamInfo)aPluginInfo : null, aStatus);
    CheckException(__result);
  }

  /**
   * Gets the type of the stream
   *
   * @param aStreamType - the type of the stream
   */
  /* readonly attribute nsPluginStreamType streamType; */
  nsPluginStreamType StreamType(){
    nsPluginStreamType value;
    nsresult __result = inner.GetStreamType(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIPluginStreamListener inner;

}

