/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWeakReference.idl
 */

module mozilla.xpcom.nsIWeakReference;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIWeakReference */
const char[] NS_IWEAKREFERENCE_IID_STR = "9188bc85-f92e-11d2-81ef-0060083a0bcf";

const nsIID NS_IWEAKREFERENCE_IID= 
  {0x9188bc85, 0xf92e, 0x11d2, 
    [ 0x81, 0xef, 0x00, 0x60, 0x08, 0x3a, 0x0b, 0xcf ]};

/**
 * An instance of |nsIWeakReference| is a proxy object that cooperates with
 * its referent to give clients a non-owning, non-dangling reference.  Clients
 * own the proxy, and should generally manage it with an |nsCOMPtr| (see the
 * type |nsWeakPtr| for a |typedef| name that stands out) as they would any
 * other XPCOM object.  The |QueryReferent| member function provides a
 * (hopefully short-lived) owning reference on demand, through which clients
 * can get useful access to the referent, while it still exists.
 *
 * @status FROZEN
 * @version 1.0
 * @see nsISupportsWeakReference
 * @see nsWeakReference
 * @see nsWeakPtr
 */
extern(Windows)
interface nsIWeakReference : nsISupports {
  static const char[] IID_STR = NS_IWEAKREFERENCE_IID_STR;
  static const nsIID IID = NS_IWEAKREFERENCE_IID;

  /**
     * |QueryReferent| queries the referent, if it exists, and like |QueryInterface|, produces
     * an owning reference to the desired interface.  It is designed to look and act exactly
     * like (a proxied) |QueryInterface|.  Don't hold on to the produced interface permanently;
     * that would defeat the purpose of using a non-owning |nsIWeakReference| in the first place.
     */
  /* void QueryReferent (in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  nsresult QueryReferent(nsIID * uuid, void * *result);

}


/* starting interface:    nsISupportsWeakReference */
const char[] NS_ISUPPORTSWEAKREFERENCE_IID_STR = "9188bc86-f92e-11d2-81ef-0060083a0bcf";

const nsIID NS_ISUPPORTSWEAKREFERENCE_IID= 
  {0x9188bc86, 0xf92e, 0x11d2, 
    [ 0x81, 0xef, 0x00, 0x60, 0x08, 0x3a, 0x0b, 0xcf ]};

/**
 * |nsISupportsWeakReference| is a factory interface which produces appropriate
 * instances of |nsIWeakReference|.  Weak references in this scheme can only be
 * produced for objects that implement this interface.
 *
 * @status FROZEN
 * @version 1.0
 * @see nsIWeakReference
 * @see nsSupportsWeakReference
 */
extern(Windows)
interface nsISupportsWeakReference : nsISupports {
  static const char[] IID_STR = NS_ISUPPORTSWEAKREFERENCE_IID_STR;
  static const nsIID IID = NS_ISUPPORTSWEAKREFERENCE_IID;

  /**
     * |GetWeakReference| produces an appropriate instance of |nsIWeakReference|.
     * As with all good XPCOM `getters', you own the resulting interface and should
     * manage it with an |nsCOMPtr|.
     *
     * @see nsIWeakReference
     * @see nsWeakPtr
     * @see nsCOMPtr
     */
  /* nsIWeakReference GetWeakReference (); */
  nsresult GetWeakReference(nsIWeakReference *_retval);

}

