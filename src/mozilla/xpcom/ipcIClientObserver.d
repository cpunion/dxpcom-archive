/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcIClientObserver.idl
 */

module mozilla.xpcom.ipcIClientObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    ipcIClientObserver */
const char[] IPCICLIENTOBSERVER_IID_STR = "42283079-030c-4b13-b069-a08b7ad5eab2";

const nsIID IPCICLIENTOBSERVER_IID= 
  {0x42283079, 0x030c, 0x4b13, 
    [ 0xb0, 0x69, 0xa0, 0x8b, 0x7a, 0xd5, 0xea, 0xb2 ]};

/**
 * ipcIClientObserver
 */
extern(Windows)
interface ipcIClientObserver : nsISupports {
  static const char[] IID_STR = IPCICLIENTOBSERVER_IID_STR;
  static const nsIID IID = IPCICLIENTOBSERVER_IID;

  enum { CLIENT_UP = 1U };

  enum { CLIENT_DOWN = 2U };

  /* void onClientStateChange (in unsigned long aClientID, in unsigned long aClientState); */
  nsresult OnClientStateChange(PRUint32 aClientID, PRUint32 aClientState);

}

