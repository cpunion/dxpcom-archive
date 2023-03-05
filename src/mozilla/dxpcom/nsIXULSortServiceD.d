/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULSortService.idl
 */

module mozilla.dxpcom.nsIXULSortServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXULSortService;


public import mozilla.dxpcom.nsIXULSortServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFCompositeDataSource;
public import mozilla.dxpcom.nsIRDFCompositeDataSourceD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIXULSortService */
/**
 * A service used to sort the contents of a XUL widget.
 */
class nsIXULSortServiceD : public nsISupportsD {

  static const nsIID IID = NS_IXULSORTSERVICE_IID;


  alias nsIXULSortService InnerType;

  this(nsIXULSortService intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULSortService opCast() {
    return inner;
  }

  void opAssign(nsIXULSortService value) {
    inner = value;
  }

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
  void Sort(nsIDOMNodeD aNode, wchar[] aSortResource, wchar[] aSortDirection){
    scope auto _aSortResource = new AString(aSortResource);
    scope auto _aSortDirection = new AString(aSortDirection);
    nsresult __result = inner.Sort(aNode ? cast(nsIDOMNode)aNode : null, cast(nsAString*)_aSortResource, cast(nsAString*)_aSortDirection);
    CheckException(__result);
  }

  /**
     * Used internally for insertion sorting.
     */
  /* [noscript] void insertContainerNode (in nsIRDFCompositeDataSource db, in nsRDFSortState sortStatePtr, in nsIContent root, in nsIContent trueParent, in nsIContent container, in nsIContent node, in boolean aNotify); */
  void InsertContainerNode(nsIRDFCompositeDataSourceD db, nsRDFSortState * sortStatePtr, nsIContentD root, nsIContentD trueParent, nsIContentD container, nsIContentD node, PRBool aNotify){
    nsresult __result = inner.InsertContainerNode(db ? cast(nsIRDFCompositeDataSource)db : null, sortStatePtr, root ? cast(nsIContent)root : null, trueParent ? cast(nsIContent)trueParent : null, container ? cast(nsIContent)container : null, node ? cast(nsIContent)node : null, aNotify);
    CheckException(__result);
  }

private:
  nsIXULSortService inner;

}

