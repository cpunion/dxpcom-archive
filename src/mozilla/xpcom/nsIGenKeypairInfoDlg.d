/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGenKeypairInfoDlg.idl
 */

module mozilla.xpcom.nsIGenKeypairInfoDlg;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInterfaceRequestor; /* forward declaration */

public import mozilla.xpcom.nsIKeygenThread; /* forward declaration */


/* starting interface:    nsIGeneratingKeypairInfoDialogs */
const char[] NS_IGENERATINGKEYPAIRINFODIALOGS_IID_STR = "11bf5cdc-1dd2-11b2-ba6a-c76afb326fa1";

const nsIID NS_IGENERATINGKEYPAIRINFODIALOGS_IID= 
  {0x11bf5cdc, 0x1dd2, 0x11b2, 
    [ 0xba, 0x6a, 0xc7, 0x6a, 0xfb, 0x32, 0x6f, 0xa1 ]};

/**
 * nsIGeneratingKeypairInfoDialogs
 *  This is the interface for giving feedback to the user
 *  while generating a key pair.
 */
extern(Windows)
interface nsIGeneratingKeypairInfoDialogs : nsISupports {
  static const char[] IID_STR = NS_IGENERATINGKEYPAIRINFODIALOGS_IID_STR;
  static const nsIID IID = NS_IGENERATINGKEYPAIRINFODIALOGS_IID;

  /* void displayGeneratingKeypairInfo (in nsIInterfaceRequestor ctx, in nsIKeygenThread runnable); */
  nsresult DisplayGeneratingKeypairInfo(nsIInterfaceRequestor ctx, nsIKeygenThread runnable);

}

