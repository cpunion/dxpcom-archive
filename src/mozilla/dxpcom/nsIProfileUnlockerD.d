/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileUnlocker.idl
 */

module mozilla.dxpcom.nsIProfileUnlockerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProfileUnlocker;


public import mozilla.dxpcom.nsIProfileUnlockerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProfileUnlocker */
class nsIProfileUnlockerD : public nsISupportsD {

  static const nsIID IID = NS_IPROFILEUNLOCKER_IID;


  alias nsIProfileUnlocker InnerType;

  this(nsIProfileUnlocker intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfileUnlocker opCast() {
    return inner;
  }

  void opAssign(nsIProfileUnlocker value) {
    inner = value;
  }

  enum { ATTEMPT_QUIT = 0U }

  enum { FORCE_QUIT = 1U }

  /**
   * Try to unlock the specified profile by attempting or forcing the
   * process that currently holds the lock to quit.
   *
   * @param aSeverity either ATTEMPT_QUIT or FORCE_QUIT
   * @throws NS_ERROR_FAILURE if unlocking failed.
   */
  /* void unlock (in unsigned long aSeverity); */
  void Unlock(PRUint32 aSeverity){
    nsresult __result = inner.Unlock(aSeverity);
    CheckException(__result);
  }

private:
  nsIProfileUnlocker inner;

}

