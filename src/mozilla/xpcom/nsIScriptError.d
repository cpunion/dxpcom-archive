/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptError.idl
 */

module mozilla.xpcom.nsIScriptError;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIConsoleMessage;


/* starting interface:    nsIScriptError */
const char[] NS_ISCRIPTERROR_IID_STR = "b0196fc7-1913-441a-882a-453c0d8b89b8";

const nsIID NS_ISCRIPTERROR_IID= 
  {0xb0196fc7, 0x1913, 0x441a, 
    [ 0x88, 0x2a, 0x45, 0x3c, 0x0d, 0x8b, 0x89, 0xb8 ]};

extern(Windows)
interface nsIScriptError : nsIConsoleMessage {
  static const char[] IID_STR = NS_ISCRIPTERROR_IID_STR;
  static const nsIID IID = NS_ISCRIPTERROR_IID;

  /** pseudo-flag for default case */
  enum { errorFlag = 0U };

  /** message is warning */
  enum { warningFlag = 1U };

  /** exception was thrown for this case - exception-aware hosts can ignore */
  enum { exceptionFlag = 2U };

  /** error or warning is due to strict option */
  enum { strictFlag = 4U };

  /**
     * The error message without any context/line number information.
     *
     * @note nsIConsoleMessage.message will return the error formatted
     *       with file/line information.
     */
  /* readonly attribute AString errorMessage; */
  nsresult GetErrorMessage(nsAString * aErrorMessage);

  /* readonly attribute AString sourceName; */
  nsresult GetSourceName(nsAString * aSourceName);

  /* readonly attribute AString sourceLine; */
  nsresult GetSourceLine(nsAString * aSourceLine);

  /* readonly attribute PRUint32 lineNumber; */
  nsresult GetLineNumber(PRUint32 *aLineNumber);

  /* readonly attribute PRUint32 columnNumber; */
  nsresult GetColumnNumber(PRUint32 *aColumnNumber);

  /* readonly attribute PRUint32 flags; */
  nsresult GetFlags(PRUint32 *aFlags);

  /**
     * Categories I know about -
     * XUL javascript
     * content javascript (both of these from nsDocShell, currently)
     * component javascript (errors in JS components)
     */
  /* readonly attribute string category; */
  nsresult GetCategory(char * *aCategory);

  /* void init (in wstring message, in wstring sourceName, in wstring sourceLine, in PRUint32 lineNumber, in PRUint32 columnNumber, in PRUint32 flags, in string category); */
  nsresult Init(PRUnichar *message, PRUnichar *sourceName, PRUnichar *sourceLine, PRUint32 lineNumber, PRUint32 columnNumber, PRUint32 flags, char *category);

  /* AUTF8String toString (); */
  nsresult ToString(nsACString * _retval);

}

