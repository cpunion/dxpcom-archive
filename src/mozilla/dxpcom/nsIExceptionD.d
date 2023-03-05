/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIException.idl
 */

module mozilla.dxpcom.nsIExceptionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIException;


public import mozilla.dxpcom.nsIExceptionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIProgrammingLanguage;
public import mozilla.dxpcom.nsIProgrammingLanguageD;


/* starting wrapper class:    nsIStackFrame */
class nsIStackFrameD : public nsISupportsD {

  static const nsIID IID = NS_ISTACKFRAME_IID;


  alias nsIStackFrame InnerType;

  this(nsIStackFrame intr){
    super(intr);
    this.inner = intr;
  }

  nsIStackFrame opCast() {
    return inner;
  }

  void opAssign(nsIStackFrame value) {
    inner = value;
  }

  /* readonly attribute PRUint32 language; */
  PRUint32 Language(){
    PRUint32 value;
    nsresult __result = inner.GetLanguage(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string languageName; */
  char* LanguageName(){
    char* value;
    nsresult __result = inner.GetLanguageName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string filename; */
  char* Filename(){
    char* value;
    nsresult __result = inner.GetFilename(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRInt32 lineNumber; */
  PRInt32 LineNumber(){
    PRInt32 value;
    nsresult __result = inner.GetLineNumber(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string sourceLine; */
  char* SourceLine(){
    char* value;
    nsresult __result = inner.GetSourceLine(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIStackFrame caller; */
  nsIStackFrameD  Caller(){
    nsIStackFrame value;
    nsresult __result = inner.GetCaller(&value);
    CheckException(__result);
    return new nsIStackFrameD(value);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIStackFrame inner;

}


/* starting wrapper class:    nsIException */
class nsIExceptionD : public nsISupportsD {

  static const nsIID IID = NS_IEXCEPTION_IID;


  alias nsIException InnerType;

  this(nsIException intr){
    super(intr);
    this.inner = intr;
  }

  nsIException opCast() {
    return inner;
  }

  void opAssign(nsIException value) {
    inner = value;
  }

  /* readonly attribute string message; */
  char* Message(){
    char* value;
    nsresult __result = inner.GetMessage(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsresult result; */
  nsresult Result(){
    nsresult value;
    nsresult __result = inner.GetResult(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string filename; */
  char* Filename(){
    char* value;
    nsresult __result = inner.GetFilename(&value);
    CheckException(__result);
    return value;
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

  /* readonly attribute nsIStackFrame location; */
  nsIStackFrameD  Location(){
    nsIStackFrame value;
    nsresult __result = inner.GetLocation(&value);
    CheckException(__result);
    return new nsIStackFrameD(value);
  }

  /* readonly attribute nsIException inner; */
  nsIExceptionD  Inner(){
    nsIException value;
    nsresult __result = inner.GetInner(&value);
    CheckException(__result);
    return new nsIExceptionD(value);
  }

  /* readonly attribute nsISupports data; */
  nsISupportsD  Data(){
    nsISupports value;
    nsresult __result = inner.GetData(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /* string toString (); */
  char* ToString(){
    char* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIException inner;

}

