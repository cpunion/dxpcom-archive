/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecurityCheckedComponent.idl
 */

module mozilla.xpcom.nsISecurityCheckedComponent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISecurityCheckedComponent */
const char[] NS_ISECURITYCHECKEDCOMPONENT_IID_STR = "0dad9e8c-a12d-4dcb-9a6f-7d09839356e1";

const nsIID NS_ISECURITYCHECKEDCOMPONENT_IID= 
  {0x0dad9e8c, 0xa12d, 0x4dcb, 
    [ 0x9a, 0x6f, 0x7d, 0x09, 0x83, 0x93, 0x56, 0xe1 ]};

/**
 * Each method of this interface should return a string representing the
 * script capability needed to perform the operation on the target component.
 *
 * Return values of 'AllAccess' or 'NoAccess' unconditionally allow or deny
 * access to the operation.
 */
extern(Windows)
interface nsISecurityCheckedComponent : nsISupports {
  static const char[] IID_STR = NS_ISECURITYCHECKEDCOMPONENT_IID_STR;
  static const nsIID IID = NS_ISECURITYCHECKEDCOMPONENT_IID;

  /* string canCreateWrapper (in nsIIDPtr iid); */
  nsresult CanCreateWrapper(nsIID * iid, char **_retval);

  /* string canCallMethod (in nsIIDPtr iid, in wstring methodName); */
  nsresult CanCallMethod(nsIID * iid, PRUnichar *methodName, char **_retval);

  /* string canGetProperty (in nsIIDPtr iid, in wstring propertyName); */
  nsresult CanGetProperty(nsIID * iid, PRUnichar *propertyName, char **_retval);

  /* string canSetProperty (in nsIIDPtr iid, in wstring propertyName); */
  nsresult CanSetProperty(nsIID * iid, PRUnichar *propertyName, char **_retval);

}

