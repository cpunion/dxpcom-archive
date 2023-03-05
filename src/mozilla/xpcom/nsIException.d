/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIException.idl
 */

module mozilla.xpcom.nsIException;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIProgrammingLanguage;


/* starting interface:    nsIStackFrame */
const char[] NS_ISTACKFRAME_IID_STR = "91d82105-7c62-4f8b-9779-154277c0ee90";

const nsIID NS_ISTACKFRAME_IID= 
  {0x91d82105, 0x7c62, 0x4f8b, 
    [ 0x97, 0x79, 0x15, 0x42, 0x77, 0xc0, 0xee, 0x90 ]};

extern(Windows)
interface nsIStackFrame : nsISupports {
  static const char[] IID_STR = NS_ISTACKFRAME_IID_STR;
  static const nsIID IID = NS_ISTACKFRAME_IID;

  /* readonly attribute PRUint32 language; */
  nsresult GetLanguage(PRUint32 *aLanguage);

  /* readonly attribute string languageName; */
  nsresult GetLanguageName(char * *aLanguageName);

  /* readonly attribute string filename; */
  nsresult GetFilename(char * *aFilename);

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* readonly attribute PRInt32 lineNumber; */
  nsresult GetLineNumber(PRInt32 *aLineNumber);

  /* readonly attribute string sourceLine; */
  nsresult GetSourceLine(char * *aSourceLine);

  /* readonly attribute nsIStackFrame caller; */
  nsresult GetCaller(nsIStackFrame  *aCaller);

  /* string toString (); */
  nsresult ToString(char **_retval);

}


/* starting interface:    nsIException */
const char[] NS_IEXCEPTION_IID_STR = "f3a8d3b4-c424-4edc-8bf6-8974c983ba78";

const nsIID NS_IEXCEPTION_IID= 
  {0xf3a8d3b4, 0xc424, 0x4edc, 
    [ 0x8b, 0xf6, 0x89, 0x74, 0xc9, 0x83, 0xba, 0x78 ]};

extern(Windows)
interface nsIException : nsISupports {
  static const char[] IID_STR = NS_IEXCEPTION_IID_STR;
  static const nsIID IID = NS_IEXCEPTION_IID;

  /* readonly attribute string message; */
  nsresult GetMessage(char * *aMessage);

  /* readonly attribute nsresult result; */
  nsresult GetResult(nsresult *aResult);

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* readonly attribute string filename; */
  nsresult GetFilename(char * *aFilename);

  /* readonly attribute PRUint32 lineNumber; */
  nsresult GetLineNumber(PRUint32 *aLineNumber);

  /* readonly attribute PRUint32 columnNumber; */
  nsresult GetColumnNumber(PRUint32 *aColumnNumber);

  /* readonly attribute nsIStackFrame location; */
  nsresult GetLocation(nsIStackFrame  *aLocation);

  /* readonly attribute nsIException inner; */
  nsresult GetInner(nsIException  *aInner);

  /* readonly attribute nsISupports data; */
  nsresult GetData(nsISupports  *aData);

  /* string toString (); */
  nsresult ToString(char **_retval);

}

