/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJRILiveConnectPlugin.idl
 */

module mozilla.dxpcom.nsIJRILiveConnectPluginD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJRILiveConnectPlugin;


public import mozilla.dxpcom.nsIJRILiveConnectPluginD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsIJRILiveConnectPlugin */
/** 
 * The nsIJRILiveConnectPlugin interface defines additional entry points that a
 * plugin developer needs to implement in order for the plugin to support 
 * JRI-based LiveConnect, as opposed to the standard JNI-based LiveConnect
 * (which new in 5.0).
 *
 * Plugin developers requiring this capability should implement this interface
 * in addition to the basic nsIPlugin interface.
 */
class nsIJRILiveConnectPluginD : public nsISupportsD {

  static const nsIID IID = NS_IJRILIVECONNECTPLUGIN_IID;


  alias nsIJRILiveConnectPlugin InnerType;

  this(nsIJRILiveConnectPlugin intr){
    super(intr);
    this.inner = intr;
  }

  nsIJRILiveConnectPlugin opCast() {
    return inner;
  }

  void opAssign(nsIJRILiveConnectPlugin value) {
    inner = value;
  }

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
  void GetJavaClass(JRIEnv * aEnv, out jref aJavaClass){
    nsresult __result = inner.GetJavaClass(aEnv, &aJavaClass);
    CheckException(__result);
  }

private:
  nsIJRILiveConnectPlugin inner;

}

