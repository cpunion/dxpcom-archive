/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebDAVResource.idl
 */

module mozilla.dxpcom.nsIWebDAVResourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebDAVResource;


public import mozilla.dxpcom.nsIWebDAVResourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURL;

public import mozilla.dxpcom.nsIURLD;


/* starting wrapper class:    nsIWebDAVResource */
class nsIWebDAVResourceD : public nsISupportsD {

  static const nsIID IID = NS_IWEBDAVRESOURCE_IID;


  alias nsIWebDAVResource InnerType;

  this(nsIWebDAVResource intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebDAVResource opCast() {
    return inner;
  }

  void opAssign(nsIWebDAVResource value) {
    inner = value;
  }

  /* readonly attribute nsIURL resourceURL; */
  nsIURLD  ResourceURL(){
    nsIURL value;
    nsresult __result = inner.GetResourceURL(&value);
    CheckException(__result);
    return new nsIURLD(value);
  }

private:
  nsIWebDAVResource inner;

}


/* starting wrapper class:    nsIWebDAVResourceWithLock */
class nsIWebDAVResourceWithLockD : public nsIWebDAVResourceD {

  static const nsIID IID = NS_IWEBDAVRESOURCEWITHLOCK_IID;


  alias nsIWebDAVResourceWithLock InnerType;

  this(nsIWebDAVResourceWithLock intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebDAVResourceWithLock opCast() {
    return inner;
  }

  void opAssign(nsIWebDAVResourceWithLock value) {
    inner = value;
  }

  /* readonly attribute AUTF8String lockToken; */
  char[] LockToken(){
    scope auto value = new ACString();
    nsresult __result = inner.GetLockToken(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIWebDAVResourceWithLock inner;

}

