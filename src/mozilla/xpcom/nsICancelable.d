/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICancelable.idl
 */

module mozilla.xpcom.nsICancelable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICancelable */
const char[] NS_ICANCELABLE_IID_STR = "d94ac0a0-bb18-46b8-844e-84159064b0bd";

const nsIID NS_ICANCELABLE_IID= 
  {0xd94ac0a0, 0xbb18, 0x46b8, 
    [ 0x84, 0x4e, 0x84, 0x15, 0x90, 0x64, 0xb0, 0xbd ]};

/**
 * This interface provides a means to cancel an operation that is in progress.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsICancelable : nsISupports {
  static const char[] IID_STR = NS_ICANCELABLE_IID_STR;
  static const nsIID IID = NS_ICANCELABLE_IID;

  /**
   * Call this method to request that this object abort whatever operation it
   * may be performing.
   *
   * @param aReason
   *        Pass a failure code to indicate the reason why this operation is
   *        being canceled.  It is an error to pass a success code.
   */
  /* void cancel (in nsresult aReason); */
  nsresult Cancel(nsresult aReason);

}

