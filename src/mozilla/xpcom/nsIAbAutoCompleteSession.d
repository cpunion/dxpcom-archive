/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbAutoCompleteSession.idl
 */

module mozilla.xpcom.nsIAbAutoCompleteSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAutoCompleteSession;
public import mozilla.xpcom.nsIMsgIdentity;


/* starting interface:    nsIAbAutoCompleteSession */
const char[] NS_IABAUTOCOMPLETESESSION_IID_STR = "ca2a6b07-3625-11d3-988e-001083010e9b";

const nsIID NS_IABAUTOCOMPLETESESSION_IID= 
  {0xca2a6b07, 0x3625, 0x11d3, 
    [ 0x98, 0x8e, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIAbAutoCompleteSession : nsIAutoCompleteSession {
  static const char[] IID_STR = NS_IABAUTOCOMPLETESESSION_IID_STR;
  static const nsIID IID = NS_IABAUTOCOMPLETESESSION_IID;

  /* attribute wstring defaultDomain; */
  nsresult GetDefaultDomain(PRUnichar * *aDefaultDomain);
  nsresult SetDefaultDomain(PRUnichar * aDefaultDomain);

}

