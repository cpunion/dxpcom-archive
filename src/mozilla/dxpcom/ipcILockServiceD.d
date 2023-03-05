/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcILockService.idl
 */

module mozilla.dxpcom.ipcILockServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.ipcILockService;


public import mozilla.dxpcom.ipcILockServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    ipcILockService */
/**
 * This service provides named interprocess locking.
 */
class ipcILockServiceD : public nsISupportsD {

  static const nsIID IID = IPCILOCKSERVICE_IID;


  alias ipcILockService InnerType;

  this(ipcILockService intr){
    super(intr);
    this.inner = intr;
  }

  ipcILockService opCast() {
    return inner;
  }

  void opAssign(ipcILockService value) {
    inner = value;
  }

  /**
     * Call this method to acquire a named interprocess lock.
     *
     * @param aLockName
     *        specifies the name of the lock
     * @param aWaitIfBusy
     *        wait for the lock to become available; otherwise, fail if lock
     *        is already held by some other process.
     */
  /* void acquireLock (in string aLockName, in boolean aWaitIfBusy); */
  void AcquireLock(char*aLockName, PRBool aWaitIfBusy){
    nsresult __result = inner.AcquireLock(aLockName, aWaitIfBusy);
    CheckException(__result);
  }

  /**
     * Call this method to release a named lock.
     *
     * @param aLockName
     *        specifies the name of the lock
     */
  /* void releaseLock (in string aLockName); */
  void ReleaseLock(char*aLockName){
    nsresult __result = inner.ReleaseLock(aLockName);
    CheckException(__result);
  }

private:
  ipcILockService inner;

}

