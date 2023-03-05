/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRollupListener.idl
 */

module mozilla.xpcom.nsIRollupListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIRollupListener */
const char[] NS_IROLLUPLISTENER_IID_STR = "23c2ba03-6c76-11d3-96ed-0060b0fb9956";

const nsIID NS_IROLLUPLISTENER_IID= 
  {0x23c2ba03, 0x6c76, 0x11d3, 
    [ 0x96, 0xed, 0x00, 0x60, 0xb0, 0xfb, 0x99, 0x56 ]};

extern(Windows)
interface nsIRollupListener : nsISupports {
  static const char[] IID_STR = NS_IROLLUPLISTENER_IID_STR;
  static const nsIID IID = NS_IROLLUPLISTENER_IID;

  /**
   * Notifies the object to rollup
   * @result NS_Ok if no errors
   */
  /* void Rollup (); */
  nsresult Rollup();

  /**
   * Asks the RollupListener if it should rollup on mousevents
   * @result NS_Ok if no errors
   */
  /* void ShouldRollupOnMouseWheelEvent (out PRBool aShould); */
  nsresult ShouldRollupOnMouseWheelEvent(PRBool *aShould);

  /**
   * Asks the RollupListener if it should rollup on mouse activate, eg. X-Mouse
   * @result NS_Ok if no errors
   */
  /* void ShouldRollupOnMouseActivate (out PRBool aShould); */
  nsresult ShouldRollupOnMouseActivate(PRBool *aShould);

}

