/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISpatialNavigation.idl
 */

module mozilla.xpcom.nsISpatialNavigation;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsISpatialNavigation */
const char[] NS_ISPATIALNAVIGATION_IID_STR = "ef7cb437-9eb3-47c7-9d89-71679bfefcc1";

const nsIID NS_ISPATIALNAVIGATION_IID= 
  {0xef7cb437, 0x9eb3, 0x47c7, 
    [ 0x9d, 0x89, 0x71, 0x67, 0x9b, 0xfe, 0xfc, 0xc1 ]};

extern(Windows)
interface nsISpatialNavigation : nsISupports {
  static const char[] IID_STR = NS_ISPATIALNAVIGATION_IID_STR;
  static const nsIID IID = NS_ISPATIALNAVIGATION_IID;

  /* void init (in nsIDOMWindow aWindow); */
  nsresult Init(nsIDOMWindow aWindow);

  /* void shutdown (); */
  nsresult Shutdown();

  /* void up (); */
  nsresult Up();

  /* void down (); */
  nsresult Down();

  /* void left (); */
  nsresult Left();

  /* void right (); */
  nsresult Right();

  /* readonly attribute nsIDOMWindow attachedWindow; */
  nsresult GetAttachedWindow(nsIDOMWindow  *aAttachedWindow);

}

