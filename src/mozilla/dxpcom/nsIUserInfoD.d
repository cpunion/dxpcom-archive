/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUserInfo.idl
 */

module mozilla.dxpcom.nsIUserInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUserInfo;


public import mozilla.dxpcom.nsIUserInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUserInfo */
class nsIUserInfoD : public nsISupportsD {

  static const nsIID IID = NS_IUSERINFO_IID;


  alias nsIUserInfo InnerType;

  this(nsIUserInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIUserInfo opCast() {
    return inner;
  }

  void opAssign(nsIUserInfo value) {
    inner = value;
  }

  /* readonly attribute wstring fullname; */
  PRUnichar* Fullname(){
    PRUnichar* value;
    nsresult __result = inner.GetFullname(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string emailAddress; */
  char* EmailAddress(){
    char* value;
    nsresult __result = inner.GetEmailAddress(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string username; */
  char* Username(){
    char* value;
    nsresult __result = inner.GetUsername(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string domain; */
  char* Domain(){
    char* value;
    nsresult __result = inner.GetDomain(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIUserInfo inner;

}

