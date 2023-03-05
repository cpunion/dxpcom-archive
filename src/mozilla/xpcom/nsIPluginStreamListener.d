/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginStreamListener.idl
 */

module mozilla.xpcom.nsIPluginStreamListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;
public import mozilla.xpcom.nsIPluginStreamInfo;
public import mozilla.xpcom.nsIInputStream;


/* starting interface:    nsIPluginStreamListener */
const char[] NS_IPLUGINSTREAMLISTENER_IID_STR = "df055770-5448-11d2-8164-006008119d7a";

const nsIID NS_IPLUGINSTREAMLISTENER_IID= 
  {0xdf055770, 0x5448, 0x11d2, 
    [ 0x81, 0x64, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/**
 * The nsIPluginStreamListener interface defines the minimum set of functionality that
 * the browser will support if it allows plugins. Plugins can call QueryInterface
 * to determine if a plugin manager implements more specific APIs or other 
 * browser interfaces for the plugin to use (e.g. nsINetworkManager).
 */
extern(Windows)
interface nsIPluginStreamListener : nsISupports {
  static const char[] IID_STR = NS_IPLUGINSTREAMLISTENER_IID_STR;
  static const nsIID IID = NS_IPLUGINSTREAMLISTENER_IID;

  /**
     * Notify the observer that the URL has started to load.  This method is
     * called only once, at the beginning of a URL load.<BR><BR>
   *
   * @param aPluginInfo  - plugin stream info
   * @return             - the return value is currently ignored, in the future
   * it may be used to cancel the URL load..
     */
  /* void onStartBinding (in nsIPluginStreamInfo aPluginInfo); */
  nsresult OnStartBinding(nsIPluginStreamInfo aPluginInfo);

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
  nsresult OnDataAvailable(nsIPluginStreamInfo aPluginInfo, nsIInputStream aInputStream, PRUint32 aLength);

  /**
   * Notify the client that data is available in the file.
   * 
   * @param aPluginInfo - plugin stream info
   * @param aFileName   - the name of the file containing the data
   * @return            - the return value is currently ignored.
   */
  /* void onFileAvailable (in nsIPluginStreamInfo aPluginInfo, in string aFileName); */
  nsresult OnFileAvailable(nsIPluginStreamInfo aPluginInfo, char *aFileName);

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
  nsresult OnStopBinding(nsIPluginStreamInfo aPluginInfo, nsresult aStatus);

  /**
   * Gets the type of the stream
   *
   * @param aStreamType - the type of the stream
   */
  /* readonly attribute nsPluginStreamType streamType; */
  nsresult GetStreamType(nsPluginStreamType *aStreamType);

}

