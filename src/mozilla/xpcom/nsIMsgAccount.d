/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgAccount.idl
 */

module mozilla.xpcom.nsIMsgAccount;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgIncomingServer;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.xpcom.nsISupportsArray;


/* starting interface:    nsIMsgAccount */
const char[] NS_IMSGACCOUNT_IID_STR = "da368bd0-e624-11d2-b7fc-00805f05ffa5";

const nsIID NS_IMSGACCOUNT_IID= 
  {0xda368bd0, 0xe624, 0x11d2, 
    [ 0xb7, 0xfc, 0x00, 0x80, 0x5f, 0x05, 0xff, 0xa5 ]};

extern(Windows)
interface nsIMsgAccount : nsISupports {
  static const char[] IID_STR = NS_IMSGACCOUNT_IID_STR;
  static const nsIID IID = NS_IMSGACCOUNT_IID;

  /* void init (); */
  nsresult Init();

  /* attribute string key; */
  nsresult GetKey(char * *aKey);
  nsresult SetKey(char * aKey);

  /* attribute nsIMsgIncomingServer incomingServer; */
  nsresult GetIncomingServer(nsIMsgIncomingServer  *aIncomingServer);
  nsresult SetIncomingServer(nsIMsgIncomingServer  aIncomingServer);

  /* readonly attribute nsISupportsArray identities; */
  nsresult GetIdentities(nsISupportsArray  *aIdentities);

  /* attribute nsIMsgIdentity defaultIdentity; */
  nsresult GetDefaultIdentity(nsIMsgIdentity  *aDefaultIdentity);
  nsresult SetDefaultIdentity(nsIMsgIdentity  aDefaultIdentity);

  /* void addIdentity (in nsIMsgIdentity identity); */
  nsresult AddIdentity(nsIMsgIdentity identity);

  /* void removeIdentity (in nsIMsgIdentity identity); */
  nsresult RemoveIdentity(nsIMsgIdentity identity);

  /* void clearAllValues (); */
  nsresult ClearAllValues();

  /* wstring toString (); */
  nsresult ToString(PRUnichar **_retval);

}

