/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDOMError.idl
 */

module mozilla.xpcom.nsIDOMDOMError;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIDOMDOMLocator;


/* starting interface:    nsIDOMDOMError */
const char[] NS_IDOMDOMERROR_IID_STR = "475790ce-d8fa-4e02-a167-e6308ba9b120";

const nsIID NS_IDOMDOMERROR_IID= 
  {0x475790ce, 0xd8fa, 0x4e02, 
    [ 0xa1, 0x67, 0xe6, 0x30, 0x8b, 0xa9, 0xb1, 0x20 ]};

/**
 * The nsIDOMDOMError interface is "An non-zero implementation
 * dependent error code describing the error, or 0 if there is no
 * error." [sic]
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/2002/WD-DOM-Level-3-Core-20020409/core.html
 */
extern(Windows)
interface nsIDOMDOMError : nsISupports {
  static const char[] IID_STR = NS_IDOMDOMERROR_IID_STR;
  static const nsIID IID = NS_IDOMDOMERROR_IID;

  enum { SEVERITY_WARNING = 0U };

  enum { SEVERITY_ERROR = 1U };

  enum { SEVERITY_FATAL_ERROR = 2U };

  /* readonly attribute unsigned short severity; */
  nsresult GetSeverity(PRUint16 *aSeverity);

  /* readonly attribute DOMString message; */
  nsresult GetMessage(nsAString * aMessage);

  /* readonly attribute nsISupports relatedException; */
  nsresult GetRelatedException(nsISupports  *aRelatedException);

  /* readonly attribute nsIDOMDOMLocator location; */
  nsresult GetLocation(nsIDOMDOMLocator  *aLocation);

}

