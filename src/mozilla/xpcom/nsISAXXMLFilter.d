/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISAXXMLFilter.idl
 */

module mozilla.xpcom.nsISAXXMLFilter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISAXXMLReader;


/* starting interface:    nsISAXXMLFilter */
const char[] NS_ISAXXMLFILTER_IID_STR = "77a22cf0-6cdf-11da-be43-001422106990";

const nsIID NS_ISAXXMLFILTER_IID= 
  {0x77a22cf0, 0x6cdf, 0x11da, 
    [ 0xbe, 0x43, 0x00, 0x14, 0x22, 0x10, 0x69, 0x90 ]};

/**
 * Interface for an XML filter.
 *
 * An XML filter is like an XML reader, except that it obtains its
 * events from another XML reader rather than a primary source like an
 * XML document or database.  Filters can modify a stream of events as
 * they pass on to the final application.
 */
extern(Windows)
interface nsISAXXMLFilter : nsISAXXMLReader {
  static const char[] IID_STR = NS_ISAXXMLFILTER_IID_STR;
  static const nsIID IID = NS_ISAXXMLFILTER_IID;

  /**
   * The parent reader.
   *
   * Allows the application to query the parent reader (which may be
   * another filter).  It is generally a bad idea to perform any
   * operations on the parent reader directly: they should all pass
   * through this filter.
   */
  /* attribute nsISAXXMLReader parent; */
  nsresult GetParent(nsISAXXMLReader  *aParent);
  nsresult SetParent(nsISAXXMLReader  aParent);

}

