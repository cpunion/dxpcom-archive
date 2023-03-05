/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULSortService.idl
 */

module mozilla.xpcom.nsIXULSortService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFCompositeDataSource;
public import mozilla.xpcom.nsIRDFResource;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsIXULSortService */
const char[] NS_IXULSORTSERVICE_IID_STR = "bfd05261-834c-11d2-8eac-00805f29f371";

const nsIID NS_IXULSORTSERVICE_IID= 
  {0xbfd05261, 0x834c, 0x11d2, 
    [ 0x8e, 0xac, 0x00, 0x80, 0x5f, 0x29, 0xf3, 0x71 ]};

/**
 * A service used to sort the contents of a XUL widget.
 */
extern(Windows)
interface nsIXULSortService : nsISupports {
  static const char[] IID_STR = NS_IXULSORTSERVICE_IID_STR;
  static const nsIID IID = NS_IXULSORTSERVICE_IID;

  /**
     *
     * Sort the contents of the widget containing <code>aNode</code>
     * using <code>aSortResource</code> as the comparison key, and
     * <code>aSortDirection</code> as the direction.
     *
     * @param aNode A node in the XUL widget whose children are to be
     * sorted. <code>sort</code> will traverse upwards to find the
     * root node at which to begin the actualy sorting. For optimal
     * results, pass in the root of the widget.
     *
     * @param aSortResource The RDF resource to be used as
     * the comparison key.
     *
     * @param aSortDirection May be either <b>natural</b> to return
     * the contents to their natural (unsorted) order,
     * <b>ascending</b> to sort the contents in ascending order, or
     * <b>descending</b> to sort the contents in descending order.
     */
  /* void sort (in nsIDOMNode aNode, in AString aSortResource, in AString aSortDirection); */
  nsresult Sort(nsIDOMNode aNode, nsAString * aSortResource, nsAString * aSortDirection);

  /**
     * Used internally for insertion sorting.
     */
  /* [noscript] void insertContainerNode (in nsIRDFCompositeDataSource db, in nsRDFSortState sortStatePtr, in nsIContent root, in nsIContent trueParent, in nsIContent container, in nsIContent node, in boolean aNotify); */
  nsresult InsertContainerNode(nsIRDFCompositeDataSource db, nsRDFSortState * sortStatePtr, nsIContent root, nsIContent trueParent, nsIContent container, nsIContent node, PRBool aNotify);

}

