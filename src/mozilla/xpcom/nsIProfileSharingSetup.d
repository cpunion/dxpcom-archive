/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileSharingSetup.idl
 */

module mozilla.xpcom.nsIProfileSharingSetup;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProfileSharingSetup */
const char[] NS_IPROFILESHARINGSETUP_IID_STR = "2f977d57-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_IPROFILESHARINGSETUP_IID= 
  {0x2f977d57, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

extern(Windows)
interface nsIProfileSharingSetup : nsISupports {
  static const char[] IID_STR = NS_IPROFILESHARINGSETUP_IID_STR;
  static const nsIID IID = NS_IPROFILESHARINGSETUP_IID;

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
  nsresult EnableSharing(nsAString * aClientName);

  /**
   * sharingEnabled and clientName
   *
   * Attributes to be used by sharing-enabled components
   */
  /* readonly attribute boolean isSharingEnabled; */
  nsresult GetIsSharingEnabled(PRBool *aIsSharingEnabled);

  /* readonly attribute AString clientName; */
  nsresult GetClientName(nsAString * aClientName);

}

