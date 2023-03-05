/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMapiRegistry.idl
 */

module mozilla.xpcom.nsIMapiRegistry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIMapiRegistry */
const char[] NS_IMAPIREGISTRY_IID_STR = "b0342ca7-cb85-4d13-ad18-bd431f2086ea";

const nsIID NS_IMAPIREGISTRY_IID= 
  {0xb0342ca7, 0xcb85, 0x4d13, 
    [ 0xad, 0x18, 0xbd, 0x43, 0x1f, 0x20, 0x86, 0xea ]};

/**
 * This interface provides support for registering Mozilla as the default
 * Mail Client. This interface can also be used to get/set the user preference
 * for the default Mail Client.
 * 
 */
extern(Windows)
interface nsIMapiRegistry : nsISupports {
  static const char[] IID_STR = NS_IMAPIREGISTRY_IID_STR;
  static const nsIID IID = NS_IMAPIREGISTRY_IID;

  /** This is set to TRUE if Mozilla is the default mail application
    */
  /* attribute boolean isDefaultMailClient; */
  nsresult GetIsDefaultMailClient(PRBool *aIsDefaultMailClient);
  nsresult SetIsDefaultMailClient(PRBool aIsDefaultMailClient);

  /* attribute boolean isDefaultNewsClient; */
  nsresult GetIsDefaultNewsClient(PRBool *aIsDefaultNewsClient);
  nsresult SetIsDefaultNewsClient(PRBool aIsDefaultNewsClient);

  /* attribute boolean isDefaultFeedClient; */
  nsresult GetIsDefaultFeedClient(PRBool *aIsDefaultFeedClient);
  nsresult SetIsDefaultFeedClient(PRBool aIsDefaultFeedClient);

  /** This is set TRUE only once per session.
    */
  /* readonly attribute boolean showDialog; */
  nsresult GetShowDialog(PRBool *aShowDialog);

  /** This will bring the dialog asking the user if he/she wants to set
    * Mozilla as default Mail Client.
    * Call this only if Mozilla is not the default Mail client
    */
  /* void showMailIntegrationDialog (in nsIDOMWindow parentWindow); */
  nsresult ShowMailIntegrationDialog(nsIDOMWindow parentWindow);

  /* void registerMailAndNewsClient (); */
  nsresult RegisterMailAndNewsClient();

}

