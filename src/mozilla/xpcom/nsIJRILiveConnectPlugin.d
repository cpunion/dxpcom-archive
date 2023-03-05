/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJRILiveConnectPlugin.idl
 */

module mozilla.xpcom.nsIJRILiveConnectPlugin;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsIJRILiveConnectPlugin */
const char[] NS_IJRILIVECONNECTPLUGIN_IID_STR = "c94058e0-f772-11d1-815b-006008119d7a";

const nsIID NS_IJRILIVECONNECTPLUGIN_IID= 
  {0xc94058e0, 0xf772, 0x11d1, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/** 
 * The nsIJRILiveConnectPlugin interface defines additional entry points that a
 * plugin developer needs to implement in order for the plugin to support 
 * JRI-based LiveConnect, as opposed to the standard JNI-based LiveConnect
 * (which new in 5.0).
 *
 * Plugin developers requiring this capability should implement this interface
 * in addition to the basic nsIPlugin interface.
 */
extern(Windows)
interface nsIJRILiveConnectPlugin : nsISupports {
  static const char[] IID_STR = NS_IJRILIVECONNECTPLUGIN_IID_STR;
  static const nsIID IID = NS_IJRILIVECONNECTPLUGIN_IID;

  /**
     * Returns the class of the Java instance to be associated with the
     * plugin.
     *
   * (New JNI-based entry point, roughly corresponds to NPP_GetJavaClass.)
     *
   * @param aJavaClass - a resulting reference to the Java class
   * @result           - NS_OK if this operation was successful
     */
  /* void getJavaClass (in JRIEnvPtr aEnv, out jref aJavaClass); */
  nsresult GetJavaClass(JRIEnv * aEnv, jref *aJavaClass);

}

