/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMapiRegistry.idl
 */

module mozilla.dxpcom.nsIMapiRegistryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMapiRegistry;


public import mozilla.dxpcom.nsIMapiRegistryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIMapiRegistry */
/**
 * This interface provides support for registering Mozilla as the default
 * Mail Client. This interface can also be used to get/set the user preference
 * for the default Mail Client.
 * 
 */
class nsIMapiRegistryD : public nsISupportsD {

  static const nsIID IID = NS_IMAPIREGISTRY_IID;


  alias nsIMapiRegistry InnerType;

  this(nsIMapiRegistry intr){
    super(intr);
    this.inner = intr;
  }

  nsIMapiRegistry opCast() {
    return inner;
  }

  void opAssign(nsIMapiRegistry value) {
    inner = value;
  }

  /** This is set to TRUE if Mozilla is the default mail application
    */
  /* attribute boolean isDefaultMailClient; */
  PRBool IsDefaultMailClient(){
    PRBool value;
    nsresult __result = inner.GetIsDefaultMailClient(&value);
    CheckException(__result);
    return value;
  }
  void IsDefaultMailClient(PRBool aIsDefaultMailClient){
    nsresult __result = inner.SetIsDefaultMailClient(aIsDefaultMailClient);
    CheckException(__result);
  }

  /* attribute boolean isDefaultNewsClient; */
  PRBool IsDefaultNewsClient(){
    PRBool value;
    nsresult __result = inner.GetIsDefaultNewsClient(&value);
    CheckException(__result);
    return value;
  }
  void IsDefaultNewsClient(PRBool aIsDefaultNewsClient){
    nsresult __result = inner.SetIsDefaultNewsClient(aIsDefaultNewsClient);
    CheckException(__result);
  }

  /* attribute boolean isDefaultFeedClient; */
  PRBool IsDefaultFeedClient(){
    PRBool value;
    nsresult __result = inner.GetIsDefaultFeedClient(&value);
    CheckException(__result);
    return value;
  }
  void IsDefaultFeedClient(PRBool aIsDefaultFeedClient){
    nsresult __result = inner.SetIsDefaultFeedClient(aIsDefaultFeedClient);
    CheckException(__result);
  }

  /** This is set TRUE only once per session.
    */
  /* readonly attribute boolean showDialog; */
  PRBool ShowDialog(){
    PRBool value;
    nsresult __result = inner.GetShowDialog(&value);
    CheckException(__result);
    return value;
  }

  /** This will bring the dialog asking the user if he/she wants to set
    * Mozilla as default Mail Client.
    * Call this only if Mozilla is not the default Mail client
    */
  /* void showMailIntegrationDialog (in nsIDOMWindow parentWindow); */
  void ShowMailIntegrationDialog(nsIDOMWindowD parentWindow){
    nsresult __result = inner.ShowMailIntegrationDialog(parentWindow ? cast(nsIDOMWindow)parentWindow : null);
    CheckException(__result);
  }

  /* void registerMailAndNewsClient (); */
  void RegisterMailAndNewsClient(){
    nsresult __result = inner.RegisterMailAndNewsClient();
    CheckException(__result);
  }

private:
  nsIMapiRegistry inner;

}

