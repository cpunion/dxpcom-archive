/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandHandler.idl
 */

module mozilla.dxpcom.nsICommandHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICommandHandler;


public import mozilla.dxpcom.nsICommandHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsICommandHandlerInit */
class nsICommandHandlerInitD : public nsISupportsD {

  static const nsIID IID = NS_ICOMMANDHANDLERINIT_IID;


  alias nsICommandHandlerInit InnerType;

  this(nsICommandHandlerInit intr){
    super(intr);
    this.inner = intr;
  }

  nsICommandHandlerInit opCast() {
    return inner;
  }

  void opAssign(nsICommandHandlerInit value) {
    inner = value;
  }

  /* attribute nsIDOMWindow window; */
  nsIDOMWindowD  Window(){
    nsIDOMWindow value;
    nsresult __result = inner.GetWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }
  void Window(nsIDOMWindowD  aWindow){
    nsIDOMWindow value;
    nsresult __result = inner.SetWindow(value);
    CheckException(__result);
  }

private:
  nsICommandHandlerInit inner;

}


/* starting wrapper class:    nsICommandHandler */
class nsICommandHandlerD : public nsISupportsD {

  static const nsIID IID = NS_ICOMMANDHANDLER_IID;


  alias nsICommandHandler InnerType;

  this(nsICommandHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsICommandHandler opCast() {
    return inner;
  }

  void opAssign(nsICommandHandler value) {
    inner = value;
  }

  /* string exec (in string aCommand, in string aParameters); */
  char* Exec(char*aCommand, char*aParameters){
    char* _retval;
    nsresult __result = inner.Exec(aCommand, aParameters, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string query (in string aCommand, in string aParameters); */
  char* Query(char*aCommand, char*aParameters){
    char* _retval;
    nsresult __result = inner.Query(aCommand, aParameters, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICommandHandler inner;

}

