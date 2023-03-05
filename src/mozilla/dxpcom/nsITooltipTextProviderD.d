/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITooltipTextProvider.idl
 */

module mozilla.dxpcom.nsITooltipTextProviderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITooltipTextProvider;


public import mozilla.dxpcom.nsITooltipTextProviderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsITooltipTextProvider */
/**
 * An interface implemented by a tooltip text provider service. This
 * service is called to discover what tooltip text is associated
 * with the node that the pointer is positioned over.
 *
 * Embedders may implement and register their own tooltip text provider
 * service if they wish to provide different tooltip text. 
 *
 * The default service returns the text stored in the TITLE
 * attribute of the node or a containing parent.
 *
 * @note
 * The tooltip text provider service is registered with the contract
 * defined in NS_TOOLTIPTEXTPROVIDER_CONTRACTID.
 *
 * @see nsITooltipListener
 * @see nsIComponentManager
 * @see nsIDOMNode
 *
 * @status FROZEN
 */
class nsITooltipTextProviderD : public nsISupportsD {

  static const nsIID IID = NS_ITOOLTIPTEXTPROVIDER_IID;


  alias nsITooltipTextProvider InnerType;

  this(nsITooltipTextProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsITooltipTextProvider opCast() {
    return inner;
  }

  void opAssign(nsITooltipTextProvider value) {
    inner = value;
  }

  /**
     * Called to obtain the tooltip text for a node.
     *
     * @arg aNode The node to obtain the text from.
     * @arg aText The tooltip text.
     *
     * @return <CODE>PR_TRUE</CODE> if tooltip text is associated
     *         with the node and was returned in the aText argument;
     *         <CODE>PR_FALSE</CODE> otherwise.
     */
  /* boolean getNodeText (in nsIDOMNode aNode, out wstring aText); */
  PRBool GetNodeText(nsIDOMNodeD aNode, out PRUnichar*aText){
    PRBool _retval;
    nsresult __result = inner.GetNodeText(aNode ? cast(nsIDOMNode)aNode : null, &aText, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsITooltipTextProvider inner;

}

