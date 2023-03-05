/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintSession.idl
 */

module mozilla.dxpcom.nsIPrintSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrintSession;


public import mozilla.dxpcom.nsIPrintSessionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPrintSession */
/**
 * nsIPrintSession
 *
 * Stores data pertaining only to a single print job. This
 * differs from nsIPrintSettings, which stores data which may
 * be valid across a number of jobs.
 *
 * This interface is currently empty since, at this point, only
 * platform-specific derived interfaces offer any functionality.
 * It is here as a placeholder for when the printing session has
 * XP functionality.
 *
 * The creation of a component which implements this interface
 * will begin the session. Likewise, destruction of that object
 * will end the session.
 * 
 * @status
 */
class nsIPrintSessionD : public nsISupportsD {

  static const nsIID IID = NS_IPRINTSESSION_IID;


  alias nsIPrintSession InnerType;

  this(nsIPrintSession intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrintSession opCast() {
    return inner;
  }

  void opAssign(nsIPrintSession value) {
    inner = value;
  }

private:
  nsIPrintSession inner;

}

