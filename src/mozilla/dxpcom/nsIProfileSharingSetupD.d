/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileSharingSetup.idl
 */

module mozilla.dxpcom.nsIProfileSharingSetupD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProfileSharingSetup;


public import mozilla.dxpcom.nsIProfileSharingSetupD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProfileSharingSetup */
class nsIProfileSharingSetupD : public nsISupportsD {

  static const nsIID IID = NS_IPROFILESHARINGSETUP_IID;


  alias nsIProfileSharingSetup InnerType;

  this(nsIProfileSharingSetup intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfileSharingSetup opCast() {
    return inner;
  }

  void opAssign(nsIProfileSharingSetup value) {
    inner = value;
  }

  /**
   * enableSharing must be called by the application in order to use
   * profile sharing. It should be called as early as possible in the
   * startup sequence - before any use of profile data. If enabled,
   * sharing is enabled for all modules that support it.
   * 
   * @param aClientName   A non-versioned identifier of the current
   *                      application within the suite of applications
   *                      which share this profile. It is used to separate
   *                      the client's non-shared data from shared data
   *                      within the profile directory. Example: "browser"
   *                      or "mail" - not "ProductX 1.3b5"
   */
  /* void enableSharing (in AString aClientName); */
  void EnableSharing(wchar[] aClientName){
    scope auto _aClientName = new AString(aClientName);
    nsresult __result = inner.EnableSharing(cast(nsAString*)_aClientName);
    CheckException(__result);
  }

  /**
   * sharingEnabled and clientName
   *
   * Attributes to be used by sharing-enabled components
   */
  /* readonly attribute boolean isSharingEnabled; */
  PRBool IsSharingEnabled(){
    PRBool value;
    nsresult __result = inner.GetIsSharingEnabled(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString clientName; */
  wchar[] ClientName(){
    scope auto value = new AString();
    nsresult __result = inner.GetClientName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIProfileSharingSetup inner;

}

