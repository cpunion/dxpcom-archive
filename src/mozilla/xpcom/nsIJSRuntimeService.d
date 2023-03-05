/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJSRuntimeService.idl
 */

module mozilla.xpcom.nsIJSRuntimeService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXPCScriptable; /* forward declaration */


/* starting interface:    nsIJSRuntimeService */
const char[] NS_IJSRUNTIMESERVICE_IID_STR = "e7d09265-4c23-4028-b1b0-c99e02aa78f8";

const nsIID NS_IJSRUNTIMESERVICE_IID= 
  {0xe7d09265, 0x4c23, 0x4028, 
    [ 0xb1, 0xb0, 0xc9, 0x9e, 0x02, 0xaa, 0x78, 0xf8 ]};

extern(Windows)
interface nsIJSRuntimeService : nsISupports {
  static const char[] IID_STR = NS_IJSRUNTIMESERVICE_IID_STR;
  static const nsIID IID = NS_IJSRUNTIMESERVICE_IID;

  /* readonly attribute JSRuntime runtime; */
  nsresult GetRuntime(JSRuntime * *aRuntime);

  /* readonly attribute nsIXPCScriptable backstagePass; */
  nsresult GetBackstagePass(nsIXPCScriptable  *aBackstagePass);

}

