/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileUnlocker.idl
 */

module mozilla.xpcom.nsIProfileUnlocker;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProfileUnlocker */
const char[] NS_IPROFILEUNLOCKER_IID_STR = "08923af1-e7a3-4fae-ba02-128502193994";

const nsIID NS_IPROFILEUNLOCKER_IID= 
  {0x08923af1, 0xe7a3, 0x4fae, 
    [ 0xba, 0x02, 0x12, 0x85, 0x02, 0x19, 0x39, 0x94 ]};

extern(Windows)
interface nsIProfileUnlocker : nsISupports {
  static const char[] IID_STR = NS_IPROFILEUNLOCKER_IID_STR;
  static const nsIID IID = NS_IPROFILEUNLOCKER_IID;

  enum { ATTEMPT_QUIT = 0U };

  enum { FORCE_QUIT = 1U };

  /**
   * Try to unlock the specified profile by attempting or forcing the
   * process that currently holds the lock to quit.
   *
   * @param aSeverity either ATTEMPT_QUIT or FORCE_QUIT
   * @throws NS_ERROR_FAILURE if unlocking failed.
   */
  /* void unlock (in unsigned long aSeverity); */
  nsresult Unlock(PRUint32 aSeverity);

}

