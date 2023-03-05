/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInstanceOwner.idl
 */

module mozilla.xpcom.nsIPluginInstanceOwner;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;

public import mozilla.xpcom.nsIPluginInstance; /* forward declaration */


/* starting interface:    nsIPluginInstanceOwner */
const char[] NS_IPLUGININSTANCEOWNER_IID_STR = "18270870-32f1-11d2-a830-0040959a28c9";

const nsIID NS_IPLUGININSTANCEOWNER_IID= 
  {0x18270870, 0x32f1, 0x11d2, 
    [ 0xa8, 0x30, 0x00, 0x40, 0x95, 0x9a, 0x28, 0xc9 ]};

extern(Windows)
interface nsIPluginInstanceOwner : nsISupports {
  static const char[] IID_STR = NS_IPLUGININSTANCEOWNER_IID_STR;
  static const nsIID IID = NS_IPLUGININSTANCEOWNER_IID;

  /**
   * Let the owner know that an instance has been created
   */
  /* void setInstance (in nsIPluginInstance aInstance); */
  nsresult SetInstance(nsIPluginInstance aInstance);

  /**
   * Get the instance associated with this owner.
   */
  /* void getInstance (in nsIPluginInstanceRef aInstance); */
  nsresult GetInstance(nsIPluginInstance * * aInstance);

  /**
   * Get a handle to the window structure of the owner.
   * This pointer cannot be made persistant by the caller.
   */
  /* void getWindow (in nsPluginWindowStarRef aWindow); */
  nsresult GetWindow(nsPluginWindow * * aWindow);

  /**
   * Get the display mode for the plugin instance.
   */
  /* readonly attribute nsPluginMode mode; */
  nsresult GetMode(nsPluginMode *aMode);

  /**
   * Create a place for the plugin to live in the owner's
   * environment. this may or may not create a window
   * depending on the windowless state of the plugin instance.
   */
  /* void createWidget (); */
  nsresult CreateWidget();

  /**
   * Show a status message in the host environment.
   */
  /* void showStatus (in string aStatusMsg); */
  nsresult ShowStatus(char *aStatusMsg);

  /**
   * Get the associated document.
   */
  /* readonly attribute nsIDocument document; */
  nsresult GetDocument(nsIDocument  *aDocument);

  /**
   * Invalidate the rectangle
   */
  /* void invalidateRect (in nsPluginRectPtr aRect); */
  nsresult InvalidateRect(nsPluginRect * aRect);

  /**
   * Invalidate the region
   */
  /* void invalidateRegion (in nsPluginRegion aRegion); */
  nsresult InvalidateRegion(nsPluginRegion aRegion);

  /**
   * Force a redraw
   */
  /* void forceRedraw (); */
  nsresult ForceRedraw();

  /**
   * Get the specified variable
   */
  /* void getValue (in nsPluginInstancePeerVariable aVariable, in voidPtr aValue); */
  nsresult GetValue(nsPluginInstancePeerVariable aVariable, void * aValue);

  /**
   * Inform the owner that no plugin for the given mime type was found.
   */
  /* void pluginNotAvailable (in string aMimeType); */
  nsresult PluginNotAvailable(char *aMimeType);

}

