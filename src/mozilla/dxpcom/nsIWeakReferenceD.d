/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWeakReference.idl
 */

module mozilla.dxpcom.nsIWeakReferenceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWeakReference;


public import mozilla.dxpcom.nsIWeakReferenceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIWeakReference */
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
class nsIWeakReferenceD : public nsISupportsD {

  static const nsIID IID = NS_IWEAKREFERENCE_IID;


  alias nsIWeakReference InnerType;

  this(nsIWeakReference intr){
    super(intr);
    this.inner = intr;
  }

  nsIWeakReference opCast() {
    return inner;
  }

  void opAssign(nsIWeakReference value) {
    inner = value;
  }

  /**
     * |QueryReferent| queries the referent, if it exists, and like |QueryInterface|, produces
     * an owning reference to the desired interface.  It is designed to look and act exactly
     * like (a proxied) |QueryInterface|.  Don't hold on to the produced interface permanently;
     * that would defeat the purpose of using a non-owning |nsIWeakReference| in the first place.
     */
  /* void QueryReferent (in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  void QueryReferent(nsIID * uuid, out void * result){
    nsresult __result = inner.QueryReferent(uuid, &result);
    CheckException(__result);
  }

private:
  nsIWeakReference inner;

}


/* starting wrapper class:    nsISupportsWeakReference */
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
class nsISupportsWeakReferenceD : public nsISupportsD {

  static const nsIID IID = NS_ISUPPORTSWEAKREFERENCE_IID;


  alias nsISupportsWeakReference InnerType;

  this(nsISupportsWeakReference intr){
    super(intr);
    this.inner = intr;
  }

  nsISupportsWeakReference opCast() {
    return inner;
  }

  void opAssign(nsISupportsWeakReference value) {
    inner = value;
  }

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
  nsIWeakReferenceD  GetWeakReference(){
    nsIWeakReference _retval;
    nsresult __result = inner.GetWeakReference(&_retval);
    CheckException(__result);
    return new nsIWeakReferenceD(_retval);
  }

private:
  nsISupportsWeakReference inner;

}

