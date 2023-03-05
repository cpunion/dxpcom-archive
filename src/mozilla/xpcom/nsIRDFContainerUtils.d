/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFContainerUtils.idl
 */

module mozilla.xpcom.nsIRDFContainerUtils;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFContainer;
public import mozilla.xpcom.nsIRDFResource;


/* starting interface:    nsIRDFContainerUtils */
const char[] NS_IRDFCONTAINERUTILS_IID_STR = "d4214e91-fb94-11d2-bdd8-00104bde6048";

const nsIID NS_IRDFCONTAINERUTILS_IID= 
  {0xd4214e91, 0xfb94, 0x11d2, 
    [ 0xbd, 0xd8, 0x00, 0x10, 0x4b, 0xde, 0x60, 0x48 ]};

extern(Windows)
interface nsIRDFContainerUtils : nsISupports {
  static const char[] IID_STR = NS_IRDFCONTAINERUTILS_IID_STR;
  static const nsIID IID = NS_IRDFCONTAINERUTILS_IID;

  /**
     * Returns 'true' if the property is an RDF ordinal property.
     */
  /* boolean IsOrdinalProperty (in nsIRDFResource aProperty); */
  nsresult IsOrdinalProperty(nsIRDFResource aProperty, PRBool *_retval);

  /**
     * Convert the specified index to an ordinal property.
     */
  /* nsIRDFResource IndexToOrdinalResource (in long aIndex); */
  nsresult IndexToOrdinalResource(PRInt32 aIndex, nsIRDFResource *_retval);

  /**
     * Convert the specified ordinal property into an index
     */
  /* long OrdinalResourceToIndex (in nsIRDFResource aOrdinal); */
  nsresult OrdinalResourceToIndex(nsIRDFResource aOrdinal, PRInt32 *_retval);

  /**
     * Return 'true' if the specified resource is a container
     */
  /* boolean IsContainer (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsresult IsContainer(nsIRDFDataSource aDataSource, nsIRDFResource aResource, PRBool *_retval);

  /**
     * Return 'true' if the specified resource is a container and it is empty
     */
  /* boolean IsEmpty (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsresult IsEmpty(nsIRDFDataSource aDataSource, nsIRDFResource aResource, PRBool *_retval);

  /**
     * Return 'true' if the specified resource is a bag
     */
  /* boolean IsBag (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsresult IsBag(nsIRDFDataSource aDataSource, nsIRDFResource aResource, PRBool *_retval);

  /**
     * Return 'true' if the specified resource is a sequence
     */
  /* boolean IsSeq (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsresult IsSeq(nsIRDFDataSource aDataSource, nsIRDFResource aResource, PRBool *_retval);

  /**
     * Return 'true' if the specified resource is an alternation
     */
  /* boolean IsAlt (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsresult IsAlt(nsIRDFDataSource aDataSource, nsIRDFResource aResource, PRBool *_retval);

  /**
     * Decorates the specified resource appropriately to make it
     * usable as an empty bag in the specified data source.
     */
  /* nsIRDFContainer MakeBag (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsresult MakeBag(nsIRDFDataSource aDataSource, nsIRDFResource aResource, nsIRDFContainer *_retval);

  /**
     * Decorates the specified resource appropriately to make it
     * usable as an empty sequence in the specified data source.
     */
  /* nsIRDFContainer MakeSeq (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsresult MakeSeq(nsIRDFDataSource aDataSource, nsIRDFResource aResource, nsIRDFContainer *_retval);

  /**
     * Decorates the specified resource appropriately to make it
     * usable as an empty alternation in the specified data source.
     */
  /* nsIRDFContainer MakeAlt (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsresult MakeAlt(nsIRDFDataSource aDataSource, nsIRDFResource aResource, nsIRDFContainer *_retval);

  /**
     * Retrieve the index of element in the container. Returns -1 if
     * the element is not in the container.
     */
  /* long indexOf (in nsIRDFDataSource aDataSource, in nsIRDFResource aContainer, in nsIRDFNode aElement); */
  nsresult IndexOf(nsIRDFDataSource aDataSource, nsIRDFResource aContainer, nsIRDFNode aElement, PRInt32 *_retval);

}

