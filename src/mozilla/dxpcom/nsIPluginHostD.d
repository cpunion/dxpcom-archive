/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginHost.idl
 */

module mozilla.dxpcom.nsIPluginHostD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginHost;


public import mozilla.dxpcom.nsIPluginHostD;

public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;
public import mozilla.xpcom.nsIFactory;
public import mozilla.dxpcom.nsIFactoryD;
public import mozilla.xpcom.nsIPluginInstanceOwner;
public import mozilla.dxpcom.nsIPluginInstanceOwnerD;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;
public import mozilla.xpcom.nsIStringStream;
public import mozilla.dxpcom.nsIStringStreamD;

public import mozilla.xpcom.nsIPlugin;

public import mozilla.dxpcom.nsIPluginD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIDOMPlugin;

public import mozilla.dxpcom.nsIDOMPluginD;


/* starting wrapper class:    nsIPluginHost */
class nsIPluginHostD : public nsIFactoryD {

  static const nsIID IID = NS_IPLUGINHOST_IID;


  alias nsIPluginHost InnerType;

  this(nsIPluginHost intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginHost opCast() {
    return inner;
  }

  void opAssign(nsIPluginHost value) {
    inner = value;
  }

  /* void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

  /* void destroy (); */
  void Destroy(){
    nsresult __result = inner.Destroy();
    CheckException(__result);
  }

  /* void loadPlugins (); */
  void LoadPlugins(){
    nsresult __result = inner.LoadPlugins();
    CheckException(__result);
  }

  /* void getPluginFactory (in string aMimeType, out nsIPlugin aPlugin); */
  void GetPluginFactory(char*aMimeType, out nsIPluginD aPlugin){
    nsIPlugin _aPlugin;
    nsresult __result = inner.GetPluginFactory(aMimeType, &_aPlugin);
    CheckException(__result);
    aPlugin = _aPlugin ? new nsIPluginD(_aPlugin) : null;
  }

  /* void instantiateEmbeddedPlugin (in string aMimeType, in nsIURI aURL, in nsIPluginInstanceOwner aOwner); */
  void InstantiateEmbeddedPlugin(char*aMimeType, nsIURID aURL, nsIPluginInstanceOwnerD aOwner){
    nsresult __result = inner.InstantiateEmbeddedPlugin(aMimeType, aURL ? cast(nsIURI)aURL : null, aOwner ? cast(nsIPluginInstanceOwner)aOwner : null);
    CheckException(__result);
  }

  /* void instantiateFullPagePlugin (in string aMimeType, in nsIURI aURI, in nsIStreamListenerRef aStreamListener, in nsIPluginInstanceOwner aOwner); */
  void InstantiateFullPagePlugin(char*aMimeType, nsIURID aURI, nsIStreamListener * * aStreamListener, nsIPluginInstanceOwnerD aOwner){
    nsresult __result = inner.InstantiateFullPagePlugin(aMimeType, aURI ? cast(nsIURI)aURI : null, aStreamListener, aOwner ? cast(nsIPluginInstanceOwner)aOwner : null);
    CheckException(__result);
  }

  /* void setUpPluginInstance (in string aMimeType, in nsIURI aURL, in nsIPluginInstanceOwner aOwner); */
  void SetUpPluginInstance(char*aMimeType, nsIURID aURL, nsIPluginInstanceOwnerD aOwner){
    nsresult __result = inner.SetUpPluginInstance(aMimeType, aURL ? cast(nsIURI)aURL : null, aOwner ? cast(nsIPluginInstanceOwner)aOwner : null);
    CheckException(__result);
  }

  /* void isPluginEnabledForType (in string aMimeType); */
  void IsPluginEnabledForType(char*aMimeType){
    nsresult __result = inner.IsPluginEnabledForType(aMimeType);
    CheckException(__result);
  }

  /* void isPluginEnabledForExtension (in string aExtension, in constCharStarRef aMimeType); */
  void IsPluginEnabledForExtension(char*aExtension, char * * aMimeType){
    nsresult __result = inner.IsPluginEnabledForExtension(aExtension, aMimeType);
    CheckException(__result);
  }

  /* readonly attribute unsigned long pluginCount; */
  PRUint32 PluginCount(){
    PRUint32 value;
    nsresult __result = inner.GetPluginCount(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] void getPlugins (in unsigned long aPluginCount, out nsIDOMPlugin aPluginArray); */
  void GetPlugins(PRUint32 aPluginCount, out nsIDOMPluginD aPluginArray){
    nsIDOMPlugin _aPluginArray;
    nsresult __result = inner.GetPlugins(aPluginCount, &_aPluginArray);
    CheckException(__result);
    aPluginArray = _aPluginArray ? new nsIDOMPluginD(_aPluginArray) : null;
  }

  /* void stopPluginInstance (in nsIPluginInstance aInstance); */
  void StopPluginInstance(nsIPluginInstanceD aInstance){
    nsresult __result = inner.StopPluginInstance(aInstance ? cast(nsIPluginInstance)aInstance : null);
    CheckException(__result);
  }

  /* void handleBadPlugin (in PRLibraryPtr aLibrary, in nsIPluginInstance instance); */
  void HandleBadPlugin(PRLibrary * aLibrary, nsIPluginInstanceD instance){
    nsresult __result = inner.HandleBadPlugin(aLibrary, instance ? cast(nsIPluginInstance)instance : null);
    CheckException(__result);
  }

private:
  nsIPluginHost inner;

}

