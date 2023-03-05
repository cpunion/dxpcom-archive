/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcILockService.idl
 */

module mozilla.xpcom.ipcILockService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    ipcILockService */
const char[] IPCILOCKSERVICE_IID_STR = "9f6dbe15-d851-4b00-912a-5ac0be88a409";

const nsIID IPCILOCKSERVICE_IID= 
  {0x9f6dbe15, 0xd851, 0x4b00, 
    [ 0x91, 0x2a, 0x5a, 0xc0, 0xbe, 0x88, 0xa4, 0x09 ]};

/**
 * This service provides named interprocess locking.
 */
extern(Windows)
interface ipcILockService : nsISupports {
  static const char[] IID_STR = IPCILOCKSERVICE_IID_STR;
  static const nsIID IID = IPCILOCKSERVICE_IID;

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
  nsresult AcquireLock(char *aLockName, PRBool aWaitIfBusy);

  /**
     * Call this method to release a named lock.
     *
     * @param aLockName
     *        specifies the name of the lock
     */
  /* void releaseLock (in string aLockName); */
  nsresult ReleaseLock(char *aLockName);

}

