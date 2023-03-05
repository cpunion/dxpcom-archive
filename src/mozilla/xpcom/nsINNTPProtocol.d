/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINNTPProtocol.idl
 */

module mozilla.xpcom.nsINNTPProtocol;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIUrlListener; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsINntpUrl; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsINNTPProtocol */
const char[] NS_INNTPPROTOCOL_IID_STR = "30106238-0991-11d4-a565-0060b0fc04b7";

const nsIID NS_INNTPPROTOCOL_IID= 
  {0x30106238, 0x0991, 0x11d4, 
    [ 0xa5, 0x65, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsINNTPProtocol : nsISupports {
  static const char[] IID_STR = NS_INNTPPROTOCOL_IID_STR;
  static const nsIID IID = NS_INNTPPROTOCOL_IID;

  /* attribute boolean isBusy; */
  nsresult GetIsBusy(PRBool *aIsBusy);
  nsresult SetIsBusy(PRBool aIsBusy);

  /* void LoadNewsUrl (in nsIURI aUri, in nsISupports aConsumer); */
  nsresult LoadNewsUrl(nsIURI aUri, nsISupports aConsumer);

  /* void Initialize (in nsIURI aURL, in nsIMsgWindow aMsgWindow); */
  nsresult Initialize(nsIURI aURL, nsIMsgWindow aMsgWindow);

  /* void GetLastActiveTimeStamp (out PRTime aTimeStamp); */
  nsresult GetLastActiveTimeStamp(PRTime *aTimeStamp);

  /* attribute boolean isCachedConnection; */
  nsresult GetIsCachedConnection(PRBool *aIsCachedConnection);
  nsresult SetIsCachedConnection(PRBool aIsCachedConnection);

  /* readonly attribute nsIMsgFolder currentFolder; */
  nsresult GetCurrentFolder(nsIMsgFolder  *aCurrentFolder);

  /* void CloseConnection (); */
  nsresult CloseConnection();

}

