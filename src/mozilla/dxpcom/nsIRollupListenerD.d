/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRollupListener.idl
 */

module mozilla.dxpcom.nsIRollupListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRollupListener;


public import mozilla.dxpcom.nsIRollupListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIRollupListener */
class nsIRollupListenerD : public nsISupportsD {

  static const nsIID IID = NS_IROLLUPLISTENER_IID;


  alias nsIRollupListener InnerType;

  this(nsIRollupListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIRollupListener opCast() {
    return inner;
  }

  void opAssign(nsIRollupListener value) {
    inner = value;
  }

  /**
   * Notifies the object to rollup
   * @result NS_Ok if no errors
   */
  /* void Rollup (); */
  void Rollup(){
    nsresult __result = inner.Rollup();
    CheckException(__result);
  }

  /**
   * Asks the RollupListener if it should rollup on mousevents
   * @result NS_Ok if no errors
   */
  /* void ShouldRollupOnMouseWheelEvent (out PRBool aShould); */
  void ShouldRollupOnMouseWheelEvent(out PRBool aShould){
    nsresult __result = inner.ShouldRollupOnMouseWheelEvent(&aShould);
    CheckException(__result);
  }

  /**
   * Asks the RollupListener if it should rollup on mouse activate, eg. X-Mouse
   * @result NS_Ok if no errors
   */
  /* void ShouldRollupOnMouseActivate (out PRBool aShould); */
  void ShouldRollupOnMouseActivate(out PRBool aShould){
    nsresult __result = inner.ShouldRollupOnMouseActivate(&aShould);
    CheckException(__result);
  }

private:
  nsIRollupListener inner;

}

