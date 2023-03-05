/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptError.idl
 */

module mozilla.dxpcom.nsIScriptErrorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptError;


public import mozilla.dxpcom.nsIScriptErrorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIConsoleMessage;
public import mozilla.dxpcom.nsIConsoleMessageD;


/* starting wrapper class:    nsIScriptError */
class nsIScriptErrorD : public nsIConsoleMessageD {

  static const nsIID IID = NS_ISCRIPTERROR_IID;


  alias nsIScriptError InnerType;

  this(nsIScriptError intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptError opCast() {
    return inner;
  }

  void opAssign(nsIScriptError value) {
    inner = value;
  }

  /** pseudo-flag for default case */
  enum { errorFlag = 0U }

  /** message is warning */
  enum { warningFlag = 1U }

  /** exception was thrown for this case - exception-aware hosts can ignore */
  enum { exceptionFlag = 2U }

  /** error or warning is due to strict option */
  enum { strictFlag = 4U }

  /**
     * The error message without any context/line number information.
     *
     * @note nsIConsoleMessage.message will return the error formatted
     *       with file/line information.
     */
  /* readonly attribute AString errorMessage; */
  wchar[] ErrorMessage(){
    scope auto value = new AString();
    nsresult __result = inner.GetErrorMessage(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString sourceName; */
  wchar[] SourceName(){
    scope auto value = new AString();
    nsresult __result = inner.GetSourceName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString sourceLine; */
  wchar[] SourceLine(){
    scope auto value = new AString();
    nsresult __result = inner.GetSourceLine(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute PRUint32 lineNumber; */
  PRUint32 LineNumber(){
    PRUint32 value;
    nsresult __result = inner.GetLineNumber(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 columnNumber; */
  PRUint32 ColumnNumber(){
    PRUint32 value;
    nsresult __result = inner.GetColumnNumber(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Categories I know about -
     * XUL javascript
     * content javascript (both of these from nsDocShell, currently)
     * component javascript (errors in JS components)
     */
  /* readonly attribute string category; */
  char* Category(){
    char* value;
    nsresult __result = inner.GetCategory(&value);
    CheckException(__result);
    return value;
  }

  /* void init (in wstring message, in wstring sourceName, in wstring sourceLine, in PRUint32 lineNumber, in PRUint32 columnNumber, in PRUint32 flags, in string category); */
  void Init(PRUnichar*message, PRUnichar*sourceName, PRUnichar*sourceLine, PRUint32 lineNumber, PRUint32 columnNumber, PRUint32 flags, char*category){
    nsresult __result = inner.Init(message, sourceName, sourceLine, lineNumber, columnNumber, flags, category);
    CheckException(__result);
  }

  /* AUTF8String toString (); */
  char[] ToString(){
    scope auto _retval = new ACString;
    nsresult __result = inner.ToString(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIScriptError inner;

}

