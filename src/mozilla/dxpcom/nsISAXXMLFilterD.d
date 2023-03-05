/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXXMLFilter.idl
 */

module mozilla.dxpcom.nsISAXXMLFilterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISAXXMLFilter;


public import mozilla.dxpcom.nsISAXXMLFilterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISAXXMLReader;
public import mozilla.dxpcom.nsISAXXMLReaderD;


/* starting wrapper class:    nsISAXXMLFilter */
/**
 * Interface for an XML filter.
 *
 * An XML filter is like an XML reader, except that it obtains its
 * events from another XML reader rather than a primary source like an
 * XML document or database.  Filters can modify a stream of events as
 * they pass on to the final application.
 */
class nsISAXXMLFilterD : public nsISAXXMLReaderD {

  static const nsIID IID = NS_ISAXXMLFILTER_IID;


  alias nsISAXXMLFilter InnerType;

  this(nsISAXXMLFilter intr){
    super(intr);
    this.inner = intr;
  }

  nsISAXXMLFilter opCast() {
    return inner;
  }

  void opAssign(nsISAXXMLFilter value) {
    inner = value;
  }

  /**
   * The parent reader.
   *
   * Allows the application to query the parent reader (which may be
   * another filter).  It is generally a bad idea to perform any
   * operations on the parent reader directly: they should all pass
   * through this filter.
   */
  /* attribute nsISAXXMLReader parent; */
  nsISAXXMLReaderD  Parent(){
    nsISAXXMLReader value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsISAXXMLReaderD(value);
  }
  void Parent(nsISAXXMLReaderD  aParent){
    nsISAXXMLReader value;
    nsresult __result = inner.SetParent(value);
    CheckException(__result);
  }

private:
  nsISAXXMLFilter inner;

}

