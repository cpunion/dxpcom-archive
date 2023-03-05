/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISessionRoaming.idl
 */

module mozilla.xpcom.nsISessionRoaming;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFile;


/* starting interface:    nsISessionRoaming */
const char[] NS_ISESSIONROAMING_IID_STR = "ab62465c-494c-446e-b671-930bb98a7bc4";

const nsIID NS_ISESSIONROAMING_IID= 
  {0xab62465c, 0x494c, 0x446e, 
    [ 0xb6, 0x71, 0x93, 0x0b, 0xb9, 0x8a, 0x7b, 0xc4 ]};

/**
 * nsISessionRoaming
 *
 * Implementation should be a service.
 *
 * see extensions/sraoming/README.txt
 * 
 * @status EXPERIMENTAL
 * @version 1.0
 */
extern(Windows)
interface nsISessionRoaming : nsISupports {
  static const char[] IID_STR = NS_ISESSIONROAMING_IID_STR;
  static const nsIID IID = NS_ISESSIONROAMING_IID;

  /* void BeginSession (); */
  nsresult BeginSession();

  /* void EndSession (); */
  nsresult EndSession();

  /* boolean isRoaming (); */
  nsresult IsRoaming(PRBool *_retval);

}

