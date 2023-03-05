/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITooltipTextProvider.idl
 */

module mozilla.xpcom.nsITooltipTextProvider;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsITooltipTextProvider */
const char[] NS_ITOOLTIPTEXTPROVIDER_IID_STR = "b128a1e6-44f3-4331-8fbe-5af360ff21ee";

const nsIID NS_ITOOLTIPTEXTPROVIDER_IID= 
  {0xb128a1e6, 0x44f3, 0x4331, 
    [ 0x8f, 0xbe, 0x5a, 0xf3, 0x60, 0xff, 0x21, 0xee ]};

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
extern(Windows)
interface nsITooltipTextProvider : nsISupports {
  static const char[] IID_STR = NS_ITOOLTIPTEXTPROVIDER_IID_STR;
  static const nsIID IID = NS_ITOOLTIPTEXTPROVIDER_IID;

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
  nsresult GetNodeText(nsIDOMNode aNode, PRUnichar **aText, PRBool *_retval);

}

