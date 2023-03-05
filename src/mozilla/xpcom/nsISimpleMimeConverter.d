/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISimpleMimeConverter.idl
 */

module mozilla.xpcom.nsISimpleMimeConverter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsISimpleMimeConverter */
const char[] NS_ISIMPLEMIMECONVERTER_IID_STR = "fc6e8234-bbf3-44a1-9802-5f023a929173";

const nsIID NS_ISIMPLEMIMECONVERTER_IID= 
  {0xfc6e8234, 0xbbf3, 0x44a1, 
    [ 0x98, 0x02, 0x5f, 0x02, 0x3a, 0x92, 0x91, 0x73 ]};

extern(Windows)
interface nsISimpleMimeConverter : nsISupports {
  static const char[] IID_STR = NS_ISIMPLEMIMECONVERTER_IID_STR;
  static const nsIID IID = NS_ISIMPLEMIMECONVERTER_IID;

  /* attribute nsIURI uri; */
  nsresult GetUri(nsIURI  *aUri);
  nsresult SetUri(nsIURI  aUri);

  /* AUTF8String convertToHTML (in ACString contentType, in AUTF8String data); */
  nsresult ConvertToHTML(nsACString * contentType, nsACString * data, nsACString * _retval);

}

