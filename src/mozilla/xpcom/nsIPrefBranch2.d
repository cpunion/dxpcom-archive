/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefBranch2.idl
 */

module mozilla.xpcom.nsIPrefBranch2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPrefBranch;

public import mozilla.xpcom.nsIObserver; /* forward declaration */


/* starting interface:    nsIPrefBranch2 */
const char[] NS_IPREFBRANCH2_IID_STR = "74567534-eb94-4b1c-8f45-389643bfc555";

const nsIID NS_IPREFBRANCH2_IID= 
  {0x74567534, 0xeb94, 0x4b1c, 
    [ 0x8f, 0x45, 0x38, 0x96, 0x43, 0xbf, 0xc5, 0x55 ]};

/**
 * nsIPrefBranch2 allows clients to observe changes to pref values.
 *
 * @status FROZEN
 * @see nsIPrefBranch
 */
extern(Windows)
interface nsIPrefBranch2 : nsIPrefBranch {
  static const char[] IID_STR = NS_IPREFBRANCH2_IID_STR;
  static const nsIID IID = NS_IPREFBRANCH2_IID;

  /**
   * Add a preference change observer. On preference changes, the following
   * arguments will be passed to the nsIObserver.observe() method:
   *   aSubject - The nsIPrefBranch object (this)
   *   aTopic   - The string defined by NS_PREFBRANCH_PREFCHANGE_TOPIC_ID
   *   aData    - The preference which has changed
   *
   * @param aDomain   The preference on which to listen for changes. This can
   *                  be the name of an entire branch to observe.
   *                  e.g. Holding the "root" prefbranch and calling
   *                  addObserver("foo.bar.", ...) will observe changes to
   *                  foo.bar.baz and foo.bar.bzip
   * @param aObserver The object to be notified if the preference changes.
   * @param aHoldWeak true  Hold a weak reference to |aObserver|. The object
   *                        must implement the nsISupportsWeakReference
   *                        interface or this will fail.
   *                  false Hold a strong reference to |aObserver|.
   *
   * @note
   * Registering as a preference observer can open an object to potential
   * cyclical references which will cause memory leaks. These cycles generally
   * occur because an object both registers itself as an observer (causing the
   * branch to hold a reference to the observer) and holds a reference to the
   * branch object for the purpose of getting/setting preference values. There
   * are 3 approaches which have been implemented in an attempt to avoid these
   * situations.
   * 1) The nsPrefBranch object supports nsISupportsWeakReference. Any consumer
   *    may hold a weak reference to it instead of a strong one.
   * 2) The nsPrefBranch object listens for xpcom-shutdown and frees all of the
   *    objects currently in its observer list. This insures that long lived
   *    objects (services for example) will be freed correctly.
   * 3) The observer can request to be held as a weak reference when it is
   *    registered. This insures that shorter lived objects (say one tied to an
   *    open window) will not fall into the cyclical reference trap.
   *
   * @see nsIObserver
   * @see removeObserver
   */
  /* void addObserver (in string aDomain, in nsIObserver aObserver, in boolean aHoldWeak); */
  nsresult AddObserver(char *aDomain, nsIObserver aObserver, PRBool aHoldWeak);

  /**
   * Remove a preference change observer.
   *
   * @param aDomain   The preference which is being observed for changes.
   * @param aObserver An observer previously registered with addObserver().
   *
   * @see nsIObserver
   * @see addObserver
   */
  /* void removeObserver (in string aDomain, in nsIObserver aObserver); */
  nsresult RemoveObserver(char *aDomain, nsIObserver aObserver);

}

