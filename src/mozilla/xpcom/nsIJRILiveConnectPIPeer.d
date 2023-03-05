/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJRILiveConnectPIPeer.idl
 */

module mozilla.xpcom.nsIJRILiveConnectPIPeer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsIJRILiveConnectPluginInstancePeer */
const char[] NS_IJRILIVECONNECTPLUGININSTANCEPEER_IID_STR = "25b63f40-f773-11d1-815b-006008119d7a";

const nsIID NS_IJRILIVECONNECTPLUGININSTANCEPEER_IID= 
  {0x25b63f40, 0xf773, 0x11d1, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/**
 * The nsIJRILiveConnectPluginInstancePeer interface is implemented by browsers
 * that support JRI-based LiveConnect. Note that for 5.0, LiveConnect support
 * has become JNI-based, so this interface is effectively deprecated.
 *
 * To obtain: QueryInterface on nsIPluginInstancePeer
 */
extern(Windows)
interface nsIJRILiveConnectPluginInstancePeer : nsISupports {
  static const char[] IID_STR = NS_IJRILIVECONNECTPLUGININSTANCEPEER_IID_STR;
  static const nsIID IID = NS_IJRILIVECONNECTPLUGININSTANCEPEER_IID;

  /**
     * Returns a JRI env corresponding to the current Java thread of the
     * browser.
     *
     * (Corresponds to NPN_GetJavaEnv.)
	 */
  /* void getJavaEnv (out JRIEnvPtr aEnv); */
  nsresult GetJavaEnv(JRIEnv * *aEnv);

  /**
     * Returns a JRI reference to the Java peer object associated with the
     * plugin instance. This object is an instance of the class specified
     * by nsIJRILiveConnectPlugin::GetJavaClass.
     *
     * (Corresponds to NPN_GetJavaPeer.)
     */
  /* void getJavaPeer (out jref aJavaPeer); */
  nsresult GetJavaPeer(jref *aJavaPeer);

}

