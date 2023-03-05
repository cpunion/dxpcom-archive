/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJVMPluginInstance.idl
 */

module mozilla.xpcom.nsIJVMPluginInstance;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIJVMPluginInstance */
const char[] NS_IJVMPLUGININSTANCE_IID_STR = "a0c057d0-01c1-11d2-815b-006008119d7a";

const nsIID NS_IJVMPLUGININSTANCE_IID= 
  {0xa0c057d0, 0x01c1, 0x11d2, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

extern(Windows)
interface nsIJVMPluginInstance : nsISupports {
  static const char[] IID_STR = NS_IJVMPLUGININSTANCE_IID_STR;
  static const nsIID IID = NS_IJVMPLUGININSTANCE_IID;

  /* [noscript] void GetJavaObject (out jobject result); */
  nsresult GetJavaObject(jobject *result);

  /* [noscript] void GetText (in nChar result); */
  nsresult GetText(char ** result);

}

