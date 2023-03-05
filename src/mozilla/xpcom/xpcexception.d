/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM xpcexception.idl
 */

module mozilla.xpcom.xpcexception;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIException;


/* starting interface:    nsIXPCException */
const char[] NS_IXPCEXCEPTION_IID_STR = "b2a34010-3983-11d3-9888-006008962422";

const nsIID NS_IXPCEXCEPTION_IID= 
  {0xb2a34010, 0x3983, 0x11d3, 
    [ 0x98, 0x88, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

extern(Windows)
interface nsIXPCException : nsIException {
  static const char[] IID_STR = NS_IXPCEXCEPTION_IID_STR;
  static const nsIID IID = NS_IXPCEXCEPTION_IID;

  /* void initialize (in string aMessage, in nsresult aResult, in string aName, in nsIStackFrame aLocation, in nsISupports aData, in nsIException aInner); */
  nsresult Initialize(char *aMessage, nsresult aResult, char *aName, nsIStackFrame aLocation, nsISupports aData, nsIException aInner);

}

