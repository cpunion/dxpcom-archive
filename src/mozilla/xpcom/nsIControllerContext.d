/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIControllerContext.idl
 */

module mozilla.xpcom.nsIControllerContext;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIControllerCommandTable;


/* starting interface:    nsIControllerContext */
const char[] NS_ICONTROLLERCONTEXT_IID_STR = "47b82b60-a36f-4167-8072-6f421151ed50";

const nsIID NS_ICONTROLLERCONTEXT_IID= 
  {0x47b82b60, 0xa36f, 0x4167, 
    [ 0x80, 0x72, 0x6f, 0x42, 0x11, 0x51, 0xed, 0x50 ]};

extern(Windows)
interface nsIControllerContext : nsISupports {
  static const char[] IID_STR = NS_ICONTROLLERCONTEXT_IID_STR;
  static const nsIID IID = NS_ICONTROLLERCONTEXT_IID;

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
  nsresult Init(nsIControllerCommandTable aCommandTable);

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
  nsresult SetCommandContext(nsISupports aCommandContext);

}

