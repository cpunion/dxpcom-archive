/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIKeygenThread.idl
 */

module mozilla.xpcom.nsIKeygenThread;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIObserver; /* forward declaration */


/* starting interface:    nsIKeygenThread */
const char[] NS_IKEYGENTHREAD_IID_STR = "8712a243-5539-447c-9f47-8653f40c3a09";

const nsIID NS_IKEYGENTHREAD_IID= 
  {0x8712a243, 0x5539, 0x447c, 
    [ 0x9f, 0x47, 0x86, 0x53, 0xf4, 0x0c, 0x3a, 0x09 ]};

/**
 * nsIKeygenThread
 *  This is used to communicate with the thread generating a key pair,
 *  to be used by the dialog displaying status information.
 */
extern(Windows)
interface nsIKeygenThread : nsISupports {
  static const char[] IID_STR = NS_IKEYGENTHREAD_IID_STR;
  static const nsIID IID = NS_IKEYGENTHREAD_IID;

  /**
   * startKeyGeneration - run the thread
   *   A user interface using this interface needs to
   *   call this method as soon as the status information
   *   is displaying. This will trigger key generation.
   *   To allow the closure of the status information,
   *   the thread needs a handle to an observer.
   *
   *   observer will be called on the UI thread.
   *   When the key generation is done, the observe method will
   *   be called with a topic of "keygen-finished" and null data
   *   and subject.
   */
  /* void startKeyGeneration (in nsIObserver observer); */
  nsresult StartKeyGeneration(nsIObserver observer);

  /**
   * userCanceled - notify the thread
   *   If the user canceled, the thread is no longer allowed to
   *   close the dialog. However, if the thread already closed
   *   it, we are not allowed to close it.
   */
  /* void userCanceled (out boolean threadAlreadyClosedDialog); */
  nsresult UserCanceled(PRBool *threadAlreadyClosedDialog);

}

