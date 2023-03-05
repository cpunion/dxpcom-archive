/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inISearchProcess.idl
 */

module mozilla.xpcom.inISearchProcess;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.inISearchObserver; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */


/* starting interface:    inISearchProcess */
const char[] INISEARCHPROCESS_IID_STR = "d5fa765b-2448-4686-b7c1-5ff13acb0fc9";

const nsIID INISEARCHPROCESS_IID= 
  {0xd5fa765b, 0x2448, 0x4686, 
    [ 0xb7, 0xc1, 0x5f, 0xf1, 0x3a, 0xcb, 0x0f, 0xc9 ]};

extern(Windows)
interface inISearchProcess : nsISupports {
  static const char[] IID_STR = INISEARCHPROCESS_IID_STR;
  static const nsIID IID = INISEARCHPROCESS_IID;

  /* readonly attribute boolean isActive; */
  nsresult GetIsActive(PRBool *aIsActive);

  /* readonly attribute long resultCount; */
  nsresult GetResultCount(PRInt32 *aResultCount);

  /* attribute boolean holdResults; */
  nsresult GetHoldResults(PRBool *aHoldResults);
  nsresult SetHoldResults(PRBool aHoldResults);

  /* void searchSync (); */
  nsresult SearchSync();

  /* void searchAsync (in inISearchObserver aObserver); */
  nsresult SearchAsync(inISearchObserver aObserver);

  /* void searchStop (); */
  nsresult SearchStop();

  /* boolean searchStep (); */
  nsresult SearchStep(PRBool *_retval);

  /* AString getStringResultAt (in long aIndex); */
  nsresult GetStringResultAt(PRInt32 aIndex, nsAString * _retval);

  /* long getIntResultAt (in long aIndex); */
  nsresult GetIntResultAt(PRInt32 aIndex, PRInt32 *_retval);

  /* unsigned long getUIntResultAt (in long aIndex); */
  nsresult GetUIntResultAt(PRInt32 aIndex, PRUint32 *_retval);

}

