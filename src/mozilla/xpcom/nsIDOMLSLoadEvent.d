/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSLoadEvent.idl
 */

module mozilla.xpcom.nsIDOMLSLoadEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMLSInput; /* forward declaration */


/* starting interface:    nsIDOMLSLoadEvent */
const char[] NS_IDOMLSLOADEVENT_IID_STR = "6c16a810-a37d-4859-b557-337341631aee";

const nsIID NS_IDOMLSLOADEVENT_IID= 
  {0x6c16a810, 0xa37d, 0x4859, 
    [ 0xb5, 0x57, 0x33, 0x73, 0x41, 0x63, 0x1a, 0xee ]};

extern(Windows)
interface nsIDOMLSLoadEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMLSLOADEVENT_IID_STR;
  static const nsIID IID = NS_IDOMLSLOADEVENT_IID;

  /* readonly attribute nsIDOMDocument newDocument; */
  nsresult GetNewDocument(nsIDOMDocument  *aNewDocument);

  /* readonly attribute nsIDOMLSInput input; */
  nsresult GetInput(nsIDOMLSInput  *aInput);

}

