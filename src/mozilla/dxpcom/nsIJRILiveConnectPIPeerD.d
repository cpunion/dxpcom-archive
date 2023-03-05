/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJRILiveConnectPIPeer.idl
 */

module mozilla.dxpcom.nsIJRILiveConnectPIPeerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJRILiveConnectPIPeer;


public import mozilla.dxpcom.nsIJRILiveConnectPIPeerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsIJRILiveConnectPluginInstancePeer */
/**
 * The nsIJRILiveConnectPluginInstancePeer interface is implemented by browsers
 * that support JRI-based LiveConnect. Note that for 5.0, LiveConnect support
 * has become JNI-based, so this interface is effectively deprecated.
 *
 * To obtain: QueryInterface on nsIPluginInstancePeer
 */
class nsIJRILiveConnectPluginInstancePeerD : public nsISupportsD {

  static const nsIID IID = NS_IJRILIVECONNECTPLUGININSTANCEPEER_IID;


  alias nsIJRILiveConnectPluginInstancePeer InnerType;

  this(nsIJRILiveConnectPluginInstancePeer intr){
    super(intr);
    this.inner = intr;
  }

  nsIJRILiveConnectPluginInstancePeer opCast() {
    return inner;
  }

  void opAssign(nsIJRILiveConnectPluginInstancePeer value) {
    inner = value;
  }

  /**
     * Returns a JRI env corresponding to the current Java thread of the
     * browser.
     *
     * (Corresponds to NPN_GetJavaEnv.)
	 */
  /* void getJavaEnv (out JRIEnvPtr aEnv); */
  void GetJavaEnv(out JRIEnv * aEnv){
    nsresult __result = inner.GetJavaEnv(&aEnv);
    CheckException(__result);
  }

  /**
     * Returns a JRI reference to the Java peer object associated with the
     * plugin instance. This object is an instance of the class specified
     * by nsIJRILiveConnectPlugin::GetJavaClass.
     *
     * (Corresponds to NPN_GetJavaPeer.)
     */
  /* void getJavaPeer (out jref aJavaPeer); */
  void GetJavaPeer(out jref aJavaPeer){
    nsresult __result = inner.GetJavaPeer(&aJavaPeer);
    CheckException(__result);
  }

private:
  nsIJRILiveConnectPluginInstancePeer inner;

}

