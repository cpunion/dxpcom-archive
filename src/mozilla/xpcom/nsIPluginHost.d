/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginHost.idl
 */

module mozilla.xpcom.nsIPluginHost;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nspluginroot;
public import mozilla.xpcom.nsIFactory;
public import mozilla.xpcom.nsIPluginInstanceOwner;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.xpcom.nsIStringStream;

public import mozilla.xpcom.nsIPlugin; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIDOMPlugin; /* forward declaration */


/* starting interface:    nsIPluginHost */
const char[] NS_IPLUGINHOST_IID_STR = "e740d8c4-fd94-456a-9506-9e044c5da27a";

const nsIID NS_IPLUGINHOST_IID= 
  {0xe740d8c4, 0xfd94, 0x456a, 
    [ 0x95, 0x06, 0x9e, 0x04, 0x4c, 0x5d, 0xa2, 0x7a ]};

extern(Windows)
interface nsIPluginHost : nsIFactory {
  static const char[] IID_STR = NS_IPLUGINHOST_IID_STR;
  static const nsIID IID = NS_IPLUGINHOST_IID;

  /* void init (); */
  nsresult Init();

  /* void destroy (); */
  nsresult Destroy();

  /* void loadPlugins (); */
  nsresult LoadPlugins();

  /* void getPluginFactory (in string aMimeType, out nsIPlugin aPlugin); */
  nsresult GetPluginFactory(char *aMimeType, nsIPlugin *aPlugin);

  /* void instantiateEmbeddedPlugin (in string aMimeType, in nsIURI aURL, in nsIPluginInstanceOwner aOwner); */
  nsresult InstantiateEmbeddedPlugin(char *aMimeType, nsIURI aURL, nsIPluginInstanceOwner aOwner);

  /* void instantiateFullPagePlugin (in string aMimeType, in nsIURI aURI, in nsIStreamListenerRef aStreamListener, in nsIPluginInstanceOwner aOwner); */
  nsresult InstantiateFullPagePlugin(char *aMimeType, nsIURI aURI, nsIStreamListener * * aStreamListener, nsIPluginInstanceOwner aOwner);

  /* void setUpPluginInstance (in string aMimeType, in nsIURI aURL, in nsIPluginInstanceOwner aOwner); */
  nsresult SetUpPluginInstance(char *aMimeType, nsIURI aURL, nsIPluginInstanceOwner aOwner);

  /* void isPluginEnabledForType (in string aMimeType); */
  nsresult IsPluginEnabledForType(char *aMimeType);

  /* void isPluginEnabledForExtension (in string aExtension, in constCharStarRef aMimeType); */
  nsresult IsPluginEnabledForExtension(char *aExtension, char * * aMimeType);

  /* readonly attribute unsigned long pluginCount; */
  nsresult GetPluginCount(PRUint32 *aPluginCount);

  /* [noscript] void getPlugins (in unsigned long aPluginCount, out nsIDOMPlugin aPluginArray); */
  nsresult GetPlugins(PRUint32 aPluginCount, nsIDOMPlugin *aPluginArray);

  /* void stopPluginInstance (in nsIPluginInstance aInstance); */
  nsresult StopPluginInstance(nsIPluginInstance aInstance);

  /* void handleBadPlugin (in PRLibraryPtr aLibrary, in nsIPluginInstance instance); */
  nsresult HandleBadPlugin(PRLibrary * aLibrary, nsIPluginInstance instance);

}

