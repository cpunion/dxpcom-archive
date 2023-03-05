/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFContainer.idl
 */

module mozilla.xpcom.nsIRDFContainer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.xpcom.nsIRDFNode;
public import mozilla.xpcom.nsISimpleEnumerator;


/* starting interface:    nsIRDFContainer */
const char[] NS_IRDFCONTAINER_IID_STR = "d4214e90-fb94-11d2-bdd8-00104bde6048";

const nsIID NS_IRDFCONTAINER_IID= 
  {0xd4214e90, 0xfb94, 0x11d2, 
    [ 0xbd, 0xd8, 0x00, 0x10, 0x4b, 0xde, 0x60, 0x48 ]};

extern(Windows)
interface nsIRDFContainer : nsISupports {
  static const char[] IID_STR = NS_IRDFCONTAINER_IID_STR;
  static const nsIID IID = NS_IRDFCONTAINER_IID;

  /* readonly attribute nsIRDFDataSource DataSource; */
  nsresult GetDataSource(nsIRDFDataSource  *aDataSource);

  /* readonly attribute nsIRDFResource Resource; */
  nsresult GetResource(nsIRDFResource  *aResource);

  /**
     * Initialize the container wrapper to the specified resource
     * using the specified datasource for context.
     */
  /* void Init (in nsIRDFDataSource aDataSource, in nsIRDFResource aContainer); */
  nsresult Init(nsIRDFDataSource aDataSource, nsIRDFResource aContainer);

  /**
     * Return the number of elements in the container. Note that this
     * may not always be accurate due to aggregation.
     */
  /* long GetCount (); */
  nsresult GetCount(PRInt32 *_retval);

  /**
     * Return an enumerator that can be used to enumerate the contents
     * of the container in ascending order.
     */
  /* nsISimpleEnumerator GetElements (); */
  nsresult GetElements(nsISimpleEnumerator *_retval);

  /**
     * Append an element to the container, assigning it the next
     * available ordinal.
     */
  /* void AppendElement (in nsIRDFNode aElement); */
  nsresult AppendElement(nsIRDFNode aElement);

  /**
     * Remove the first occurence of the specified element from the
     * container. If aRenumber is 'true', then the underlying RDF graph
     * will be 're-numbered' to account for the removal.
     */
  /* void RemoveElement (in nsIRDFNode aElement, in boolean aRenumber); */
  nsresult RemoveElement(nsIRDFNode aElement, PRBool aRenumber);

  /**
     * Insert aElement at the specified index. If aRenumber is 'true', then
     * the underlying RDF graph will be 're-numbered' to accomodate the new
     * element.
     */
  /* void InsertElementAt (in nsIRDFNode aElement, in long aIndex, in boolean aRenumber); */
  nsresult InsertElementAt(nsIRDFNode aElement, PRInt32 aIndex, PRBool aRenumber);

  /**
     * Remove the element at the specified index. If aRenumber is 'true', then
     * the underlying RDF graph will be 're-numbered' to account for the
     * removal.
     *
     * @return the element that was removed.
     */
  /* nsIRDFNode RemoveElementAt (in long aIndex, in boolean aRenumber); */
  nsresult RemoveElementAt(PRInt32 aIndex, PRBool aRenumber, nsIRDFNode *_retval);

  /**
     * Determine the index of an element in the container.
     *
     * @return The index of the specified element in the container. If
     * the element is not contained in the container, this function
     * returns '-1'.
     */
  /* long IndexOf (in nsIRDFNode aElement); */
  nsresult IndexOf(nsIRDFNode aElement, PRInt32 *_retval);

}

