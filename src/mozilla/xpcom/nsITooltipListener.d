/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITooltipListener.idl
 */

module mozilla.xpcom.nsITooltipListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITooltipListener */
const char[] NS_ITOOLTIPLISTENER_IID_STR = "44b78386-1dd2-11b2-9ad2-e4eee2ca1916";

const nsIID NS_ITOOLTIPLISTENER_IID= 
  {0x44b78386, 0x1dd2, 0x11b2, 
    [ 0x9a, 0xd2, 0xe4, 0xee, 0xe2, 0xca, 0x19, 0x16 ]};

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
extern(Windows)
interface nsITooltipListener : nsISupports {
  static const char[] IID_STR = NS_ITOOLTIPLISTENER_IID_STR;
  static const nsIID IID = NS_ITOOLTIPLISTENER_IID;

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
  nsresult OnShowTooltip(PRInt32 aXCoords, PRInt32 aYCoords, PRUnichar *aTipText);

  /**
     * Called when the tooltip should be hidden, either because the pointer
     * has moved or the tooltip has timed out.
     */
  /* void onHideTooltip (); */
  nsresult OnHideTooltip();

}

