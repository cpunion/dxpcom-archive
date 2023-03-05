/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITooltipListener.idl
 */

module mozilla.dxpcom.nsITooltipListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITooltipListener;


public import mozilla.dxpcom.nsITooltipListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITooltipListener */
/**
 * An optional interface for embedding clients wishing to receive
 * notifications for when a tooltip should be displayed or removed.
 * The embedder implements this interface on the web browser chrome
 * object associated with the window that notifications are required
 * for.
 *
 * @see nsITooltipTextProvider
 *
 * @status FROZEN
 */
class nsITooltipListenerD : public nsISupportsD {

  static const nsIID IID = NS_ITOOLTIPLISTENER_IID;


  alias nsITooltipListener InnerType;

  this(nsITooltipListener intr){
    super(intr);
    this.inner = intr;
  }

  nsITooltipListener opCast() {
    return inner;
  }

  void opAssign(nsITooltipListener value) {
    inner = value;
  }

  /**
     * Called when a tooltip should be displayed.
     *
     * @param aXCoords The tooltip left edge X coordinate.
     * @param aYCoords The tooltip top edge Y coordinate.
     * @param aTipText The text to display in the tooltip, typically obtained
     *        from the TITLE attribute of the node (or containing parent)
     *        over which the pointer has been positioned.
     *
     * @note
     * Coordinates are specified in pixels, relative to the top-left
     * corner of the browser area.
     *
     * @return <code>NS_OK</code> if the tooltip was displayed.
     */
  /* void onShowTooltip (in long aXCoords, in long aYCoords, in wstring aTipText); */
  void OnShowTooltip(PRInt32 aXCoords, PRInt32 aYCoords, PRUnichar*aTipText){
    nsresult __result = inner.OnShowTooltip(aXCoords, aYCoords, aTipText);
    CheckException(__result);
  }

  /**
     * Called when the tooltip should be hidden, either because the pointer
     * has moved or the tooltip has timed out.
     */
  /* void onHideTooltip (); */
  void OnHideTooltip(){
    nsresult __result = inner.OnHideTooltip();
    CheckException(__result);
  }

private:
  nsITooltipListener inner;

}

