/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITraceRefcnt.idl
 */

module mozilla.xpcom.nsITraceRefcnt;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITraceRefcnt */
const char[] NS_ITRACEREFCNT_IID_STR = "273dc92f-0fe6-4545-96a9-21be77828039";

const nsIID NS_ITRACEREFCNT_IID= 
  {0x273dc92f, 0x0fe6, 0x4545, 
    [ 0x96, 0xa9, 0x21, 0xbe, 0x77, 0x82, 0x80, 0x39 ]};

/**  
 * nsITraceRefcnt is an interface between XPCOM Glue and XPCOM.  Users should
 * access the nsITraceRefcnt interface through the static class nsTraceRefcnt.
 * @see nsTraceRefcnt.h
 *    
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsITraceRefcnt : nsISupports {
  static const char[] IID_STR = NS_ITRACEREFCNT_IID_STR;
  static const nsIID IID = NS_ITRACEREFCNT_IID;

  /* void logAddRef (in voidPtr aPtr, in nsrefcnt aNewRefcnt, in string aTypeName, in unsigned long aInstanceSize); */
  nsresult LogAddRef(void * aPtr, nsrefcnt aNewRefcnt, char *aTypeName, PRUint32 aInstanceSize);

  /* void logRelease (in voidPtr aPtr, in nsrefcnt aNewRefcnt, in string aTypeName); */
  nsresult LogRelease(void * aPtr, nsrefcnt aNewRefcnt, char *aTypeName);

  /* void logCtor (in voidPtr aPtr, in string aTypeName, in unsigned long aInstanceSize); */
  nsresult LogCtor(void * aPtr, char *aTypeName, PRUint32 aInstanceSize);

  /* void logDtor (in voidPtr aPtr, in string aTypeName, in unsigned long aInstanceSize); */
  nsresult LogDtor(void * aPtr, char *aTypeName, PRUint32 aInstanceSize);

  /* void logAddCOMPtr (in voidPtr aPtr, in nsISupports aObject); */
  nsresult LogAddCOMPtr(void * aPtr, nsISupports aObject);

  /* void logReleaseCOMPtr (in voidPtr aPtr, in nsISupports aObject); */
  nsresult LogReleaseCOMPtr(void * aPtr, nsISupports aObject);

}

