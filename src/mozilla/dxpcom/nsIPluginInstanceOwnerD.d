/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInstanceOwner.idl
 */

module mozilla.dxpcom.nsIPluginInstanceOwnerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginInstanceOwner;


public import mozilla.dxpcom.nsIPluginInstanceOwnerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;

public import mozilla.xpcom.nsIPluginInstance;

public import mozilla.dxpcom.nsIPluginInstanceD;


/* starting wrapper class:    nsIPluginInstanceOwner */
class nsIPluginInstanceOwnerD : public nsISupportsD {

  static const nsIID IID = NS_IPLUGININSTANCEOWNER_IID;


  alias nsIPluginInstanceOwner InnerType;

  this(nsIPluginInstanceOwner intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginInstanceOwner opCast() {
    return inner;
  }

  void opAssign(nsIPluginInstanceOwner value) {
    inner = value;
  }

  /**
   * Let the owner know that an instance has been created
   */
  /* void setInstance (in nsIPluginInstance aInstance); */
  void SetInstance(nsIPluginInstanceD aInstance){
    nsresult __result = inner.SetInstance(aInstance ? cast(nsIPluginInstance)aInstance : null);
    CheckException(__result);
  }

  /**
   * Get the instance associated with this owner.
   */
  /* void getInstance (in nsIPluginInstanceRef aInstance); */
  void GetInstance(nsIPluginInstance * * aInstance){
    nsresult __result = inner.GetInstance(aInstance);
    CheckException(__result);
  }

  /**
   * Get a handle to the window structure of the owner.
   * This pointer cannot be made persistant by the caller.
   */
  /* void getWindow (in nsPluginWindowStarRef aWindow); */
  void GetWindow(nsPluginWindow * * aWindow){
    nsresult __result = inner.GetWindow(aWindow);
    CheckException(__result);
  }

  /**
   * Get the display mode for the plugin instance.
   */
  /* readonly attribute nsPluginMode mode; */
  nsPluginMode Mode(){
    nsPluginMode value;
    nsresult __result = inner.GetMode(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Create a place for the plugin to live in the owner's
   * environment. this may or may not create a window
   * depending on the windowless state of the plugin instance.
   */
  /* void createWidget (); */
  void CreateWidget(){
    nsresult __result = inner.CreateWidget();
    CheckException(__result);
  }

  /**
   * Show a status message in the host environment.
   */
  /* void showStatus (in string aStatusMsg); */
  void ShowStatus(char*aStatusMsg){
    nsresult __result = inner.ShowStatus(aStatusMsg);
    CheckException(__result);
  }

  /**
   * Get the associated document.
   */
  /* readonly attribute nsIDocument document; */
  nsIDocumentD  Document(){
    nsIDocument value;
    nsresult __result = inner.GetDocument(&value);
    CheckException(__result);
    return new nsIDocumentD(value);
  }

  /**
   * Invalidate the rectangle
   */
  /* void invalidateRect (in nsPluginRectPtr aRect); */
  void InvalidateRect(nsPluginRect * aRect){
    nsresult __result = inner.InvalidateRect(aRect);
    CheckException(__result);
  }

  /**
   * Invalidate the region
   */
  /* void invalidateRegion (in nsPluginRegion aRegion); */
  void InvalidateRegion(nsPluginRegion aRegion){
    nsresult __result = inner.InvalidateRegion(aRegion);
    CheckException(__result);
  }

  /**
   * Force a redraw
   */
  /* void forceRedraw (); */
  void ForceRedraw(){
    nsresult __result = inner.ForceRedraw();
    CheckException(__result);
  }

  /**
   * Get the specified variable
   */
  /* void getValue (in nsPluginInstancePeerVariable aVariable, in voidPtr aValue); */
  void GetValue(nsPluginInstancePeerVariable aVariable, void * aValue){
    nsresult __result = inner.GetValue(aVariable, aValue);
    CheckException(__result);
  }

  /**
   * Inform the owner that no plugin for the given mime type was found.
   */
  /* void pluginNotAvailable (in string aMimeType); */
  void PluginNotAvailable(char*aMimeType){
    nsresult __result = inner.PluginNotAvailable(aMimeType);
    CheckException(__result);
  }

private:
  nsIPluginInstanceOwner inner;

}

