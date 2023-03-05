/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIThread.idl
 */

module mozilla.xpcom.nsIThread;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint32 PRThreadPriority;

alias PRUint32 PRThreadScope;

alias PRUint32 PRThreadState;

public import mozilla.xpcom.nsIRunnable; /* forward declaration */


/* starting interface:    nsIThread */
const char[] NS_ITHREAD_IID_STR = "6be5e380-6886-11d3-9382-00104ba0fd40";

const nsIID NS_ITHREAD_IID= 
  {0x6be5e380, 0x6886, 0x11d3, 
    [ 0x93, 0x82, 0x00, 0x10, 0x4b, 0xa0, 0xfd, 0x40 ]};

extern(Windows)
interface nsIThread : nsISupports {
  static const char[] IID_STR = NS_ITHREAD_IID_STR;
  static const nsIID IID = NS_ITHREAD_IID;

  enum { PRIORITY_LOW = 0U };

  enum { PRIORITY_NORMAL = 1U };

  enum { PRIORITY_HIGH = 2U };

  enum { PRIORITY_URGENT = 3U };

  enum { SCOPE_LOCAL = 0U };

  enum { SCOPE_GLOBAL = 1U };

  enum { SCOPE_BOUND = 2U };

  enum { STATE_JOINABLE = 0U };

  enum { STATE_UNJOINABLE = 1U };

  /* void join (); */
  nsresult Join();

  /* void interrupt (); */
  nsresult Interrupt();

  /* attribute PRThreadPriority priority; */
  nsresult GetPriority(PRThreadPriority *aPriority);
  nsresult SetPriority(PRThreadPriority aPriority);

  /* readonly attribute PRThreadScope scope; */
  nsresult GetScope(PRThreadScope *aScope);

  /* readonly attribute PRThreadState state; */
  nsresult GetState(PRThreadState *aState);

  /* [noscript] PRThread GetPRThread (); */
  nsresult GetPRThread(PRThread * *_retval);

  /* void init (in nsIRunnable aRunnable, in PRUint32 aStackSize, in PRThreadPriority aPriority, in PRThreadScope aScope, in PRThreadState aState); */
  nsresult Init(nsIRunnable aRunnable, PRUint32 aStackSize, PRThreadPriority aPriority, PRThreadScope aScope, PRThreadState aState);

  /* readonly attribute nsIThread currentThread; */
  nsresult GetCurrentThread(nsIThread  *aCurrentThread);

  /* void sleep (in PRUint32 msec); */
  nsresult Sleep(PRUint32 msec);

}

