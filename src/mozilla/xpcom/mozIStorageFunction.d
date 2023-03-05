/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageFunction.idl
 */

module mozilla.xpcom.mozIStorageFunction;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.mozIStorageConnection; /* forward declaration */

public import mozilla.xpcom.mozIStorageValueArray; /* forward declaration */

public import mozilla.xpcom.nsIArray; /* forward declaration */


/* starting interface:    mozIStorageFunction */
const char[] MOZISTORAGEFUNCTION_IID_STR = "898d4189-7012-4ae9-a2af-435491cfa114";

const nsIID MOZISTORAGEFUNCTION_IID= 
  {0x898d4189, 0x7012, 0x4ae9, 
    [ 0xa2, 0xaf, 0x43, 0x54, 0x91, 0xcf, 0xa1, 0x14 ]};

/**
 * mozIStorageFunction is to be implemented by storage consumers that
 * wish to define custom storage functions, through
 * mozIStorageConnection's createFunction method.
 */
extern(Windows)
interface mozIStorageFunction : nsISupports {
  static const char[] IID_STR = MOZISTORAGEFUNCTION_IID_STR;
  static const nsIID IID = MOZISTORAGEFUNCTION_IID;

  /**
   * onFunctionCall is called when execution of a custom
   * function should occur.  There are no return values.
   * 
   * @param aNumArguments         The number of arguments
   * @param aFunctionArguments    The arguments passed in to the function
   */
  /* void onFunctionCall (in mozIStorageValueArray aFunctionArguments); */
  nsresult OnFunctionCall(mozIStorageValueArray aFunctionArguments);

}

