/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSendLater.idl
 */

module mozilla.xpcom.nsIMsgSendLater;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsrootidl;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.xpcom.nsIMsgCompFields;
public import mozilla.xpcom.nsIMsgSendListener;
public import mozilla.xpcom.nsIMsgSendLaterListener;
public import mozilla.xpcom.nsIStreamListener;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */


/* starting interface:    nsIMsgSendLater */
const char[] NS_IMSGSENDLATER_IID_STR = "e15c83e8-1cf4-11d3-8ef0-00a024a7d144";

const nsIID NS_IMSGSENDLATER_IID= 
  {0xe15c83e8, 0x1cf4, 0x11d3, 
    [ 0x8e, 0xf0, 0x00, 0xa0, 0x24, 0xa7, 0xd1, 0x44 ]};

extern(Windows)
interface nsIMsgSendLater : nsIStreamListener {
  static const char[] IID_STR = NS_IMSGSENDLATER_IID_STR;
  static const nsIID IID = NS_IMSGSENDLATER_IID;

  /* void SendUnsentMessages (in nsIMsgIdentity identity); */
  nsresult SendUnsentMessages(nsIMsgIdentity identity);

  /* attribute nsIMsgWindow msgWindow; */
  nsresult GetMsgWindow(nsIMsgWindow  *aMsgWindow);
  nsresult SetMsgWindow(nsIMsgWindow  aMsgWindow);

  /* void RemoveListener (in nsIMsgSendLaterListener aListener); */
  nsresult RemoveListener(nsIMsgSendLaterListener aListener);

  /* void AddListener (in nsIMsgSendLaterListener aListener); */
  nsresult AddListener(nsIMsgSendLaterListener aListener);

  /* nsIMsgFolder getUnsentMessagesFolder (in nsIMsgIdentity userIdentity); */
  nsresult GetUnsentMessagesFolder(nsIMsgIdentity userIdentity, nsIMsgFolder *_retval);

}

