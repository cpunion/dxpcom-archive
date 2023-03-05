/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookie2.idl
 */

module mozilla.dxpcom.nsICookie2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICookie2;


public import mozilla.dxpcom.nsICookie2D;

public import mozilla.xpcom.nsICookie;
public import mozilla.dxpcom.nsICookieD;


/* starting wrapper class:    nsICookie2 */
/** 
 * Main cookie object interface for use by consumers:
 * extends nsICookie, a frozen interface for external
 * access of cookie objects
 */
class nsICookie2D : public nsICookieD {

  static const nsIID IID = NS_ICOOKIE2_IID;


  alias nsICookie2 InnerType;

  this(nsICookie2 intr){
    super(intr);
    this.inner = intr;
  }

  nsICookie2 opCast() {
    return inner;
  }

  void opAssign(nsICookie2 value) {
    inner = value;
  }

  /**
     * the host (possibly fully qualified) of the cookie,
     * without a leading dot to represent if it is a
     * domain cookie.
     */
  /* readonly attribute AUTF8String rawHost; */
  char[] RawHost(){
    scope auto value = new ACString();
    nsresult __result = inner.GetRawHost(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * true if the cookie is a session cookie
     * (note: if true, the expiry time is undefined).
     */
  /* readonly attribute boolean isSession; */
  PRBool IsSession(){
    PRBool value;
    nsresult __result = inner.GetIsSession(&value);
    CheckException(__result);
    return value;
  }

  /**
     * the actual expiry time of the cookie
     * (where 0 does not represent a session cookie).
     *
     * not to be confused with |expires|, an
     * attribute on nsICookie.
     */
  /* readonly attribute PRInt64 expiry; */
  PRInt64 Expiry(){
    PRInt64 value;
    nsresult __result = inner.GetExpiry(&value);
    CheckException(__result);
    return value;
  }

private:
  nsICookie2 inner;

}

