/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSSerializerFilter.idl
 */

module mozilla.xpcom.nsIDOMLSSerializerFilter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNodeFilter;


/* starting interface:    nsIDOMLSSerializerFilter */
const char[] NS_IDOMLSSERIALIZERFILTER_IID_STR = "b9b6ec85-f69f-4a5a-a96a-8a7a8f07e2b4";

const nsIID NS_IDOMLSSERIALIZERFILTER_IID= 
  {0xb9b6ec85, 0xf69f, 0x4a5a, 
    [ 0xa9, 0x6a, 0x8a, 0x7a, 0x8f, 0x07, 0xe2, 0xb4 ]};

extern(Windows)
interface nsIDOMLSSerializerFilter : nsIDOMNodeFilter {
  static const char[] IID_STR = NS_IDOMLSSERIALIZERFILTER_IID_STR;
  static const nsIID IID = NS_IDOMLSSERIALIZERFILTER_IID;

  /* readonly attribute unsigned long whatToShow; */
  nsresult GetWhatToShow(PRUint32 *aWhatToShow);

}

