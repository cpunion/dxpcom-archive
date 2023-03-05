/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecurityCheckedComponent.idl
 */

module mozilla.dxpcom.nsISecurityCheckedComponentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISecurityCheckedComponent;


public import mozilla.dxpcom.nsISecurityCheckedComponentD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISecurityCheckedComponent */
/**
 * Each method of this interface should return a string representing the
 * script capability needed to perform the operation on the target component.
 *
 * Return values of 'AllAccess' or 'NoAccess' unconditionally allow or deny
 * access to the operation.
 */
class nsISecurityCheckedComponentD : public nsISupportsD {

  static const nsIID IID = NS_ISECURITYCHECKEDCOMPONENT_IID;


  alias nsISecurityCheckedComponent InnerType;

  this(nsISecurityCheckedComponent intr){
    super(intr);
    this.inner = intr;
  }

  nsISecurityCheckedComponent opCast() {
    return inner;
  }

  void opAssign(nsISecurityCheckedComponent value) {
    inner = value;
  }

  /* string canCreateWrapper (in nsIIDPtr iid); */
  char* CanCreateWrapper(nsIID * iid){
    char* _retval;
    nsresult __result = inner.CanCreateWrapper(iid, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string canCallMethod (in nsIIDPtr iid, in wstring methodName); */
  char* CanCallMethod(nsIID * iid, PRUnichar*methodName){
    char* _retval;
    nsresult __result = inner.CanCallMethod(iid, methodName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string canGetProperty (in nsIIDPtr iid, in wstring propertyName); */
  char* CanGetProperty(nsIID * iid, PRUnichar*propertyName){
    char* _retval;
    nsresult __result = inner.CanGetProperty(iid, propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string canSetProperty (in nsIIDPtr iid, in wstring propertyName); */
  char* CanSetProperty(nsIID * iid, PRUnichar*propertyName){
    char* _retval;
    nsresult __result = inner.CanSetProperty(iid, propertyName, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISecurityCheckedComponent inner;

}

