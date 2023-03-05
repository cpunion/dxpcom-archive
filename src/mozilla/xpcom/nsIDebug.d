/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDebug.idl
 */

module mozilla.xpcom.nsIDebug;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDebug */
const char[] NS_IDEBUG_IID_STR = "3bf0c3d7-3bd9-4cf2-a971-33572c503e1e";

const nsIID NS_IDEBUG_IID= 
  {0x3bf0c3d7, 0x3bd9, 0x4cf2, 
    [ 0xa9, 0x71, 0x33, 0x57, 0x2c, 0x50, 0x3e, 0x1e ]};

/**
 * nsIDebug is an interface between XPCOM Glue and XPCOM.  Users should access
 * the nsIDebug interface through the static class nsDebug.
 * @see nsDebug.h
 *    
 * @status UNDER_REVIEW
 *
 */
extern(Windows)
interface nsIDebug : nsISupports {
  static const char[] IID_STR = NS_IDEBUG_IID_STR;
  static const nsIID IID = NS_IDEBUG_IID;

  /* void assertion (in string aStr, in string aExpr, in string aFile, in long aLine); */
  nsresult Assertion(char *aStr, char *aExpr, char *aFile, PRInt32 aLine);

  /* void warning (in string aStr, in string aFile, in long aLine); */
  nsresult Warning(char *aStr, char *aFile, PRInt32 aLine);

  /* void break (in string aFile, in long aLine); */
  nsresult Break(char *aFile, PRInt32 aLine);

  /* void abort (in string aFile, in long aLine); */
  nsresult Abort(char *aFile, PRInt32 aLine);

}

