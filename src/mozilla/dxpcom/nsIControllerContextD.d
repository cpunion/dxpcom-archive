/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIControllerContext.idl
 */

module mozilla.dxpcom.nsIControllerContextD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIControllerContext;


public import mozilla.dxpcom.nsIControllerContextD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIControllerCommandTable;
public import mozilla.dxpcom.nsIControllerCommandTableD;


/* starting wrapper class:    nsIControllerContext */
class nsIControllerContextD : public nsISupportsD {

  static const nsIID IID = NS_ICONTROLLERCONTEXT_IID;


  alias nsIControllerContext InnerType;

  this(nsIControllerContext intr){
    super(intr);
    this.inner = intr;
  }

  nsIControllerContext opCast() {
    return inner;
  }

  void opAssign(nsIControllerContext value) {
    inner = value;
  }

  /**
   *  Init the controller, optionally passing a controller
   *  command table.
   *
   * @param aCommandTable  a command table, used internally
   *                       by this controller. May be null, in
   *                       which case the controller will create
   *                       a new, empty table.
   */
  /* void init (in nsIControllerCommandTable aCommandTable); */
  void Init(nsIControllerCommandTableD aCommandTable){
    nsresult __result = inner.Init(aCommandTable ? cast(nsIControllerCommandTable)aCommandTable : null);
    CheckException(__result);
  }

  /** 
   *  Set a context on this controller, which is passed
   *  to commands to give them some context when they execute.
   *
   * @param aCommandContext  the context passed to commands.
   *                        Note that this is *not* addreffed by the
   *                        controller, and so needs to outlive it,
   *                        or be nulled out.
   */
  /* void setCommandContext (in nsISupports aCommandContext); */
  void SetCommandContext(nsISupportsD aCommandContext){
    nsresult __result = inner.SetCommandContext(aCommandContext ? cast(nsISupports)aCommandContext : null);
    CheckException(__result);
  }

private:
  nsIControllerContext inner;

}

