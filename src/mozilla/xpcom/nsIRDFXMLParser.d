/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFXMLParser.idl
 */

module mozilla.xpcom.nsIRDFXMLParser;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.xpcom.nsIURI;


/* starting interface:    nsIRDFXMLParser */
const char[] NS_IRDFXMLPARSER_IID_STR = "1831dd2e-1dd2-11b2-bdb3-86b7b50b70b5";

const nsIID NS_IRDFXMLPARSER_IID= 
  {0x1831dd2e, 0x1dd2, 0x11b2, 
    [ 0xbd, 0xb3, 0x86, 0xb7, 0xb5, 0x0b, 0x70, 0xb5 ]};

extern(Windows)
interface nsIRDFXMLParser : nsISupports {
  static const char[] IID_STR = NS_IRDFXMLPARSER_IID_STR;
  static const nsIID IID = NS_IRDFXMLPARSER_IID;

  /**
     * Create a stream listener that can be used to asynchronously
     * parse RDF/XML.
     * @param aSink the RDF datasource the will receive the data
     * @param aBaseURI the base URI used to resolve relative
     *   references in the RDF/XML
     * @return an nsIStreamListener object to handle the data
     */
  /* nsIStreamListener parseAsync (in nsIRDFDataSource aSink, in nsIURI aBaseURI); */
  nsresult ParseAsync(nsIRDFDataSource aSink, nsIURI aBaseURI, nsIStreamListener *_retval);

  /**
     * Parse a string of RDF/XML
     * @param aSink the RDF datasource that will receive the data
     * @param aBaseURI the base URI used to resolve relative
     *   references in the RDF/XML
     * @param aSource a UTF8 string containing RDF/XML data.
     */
  /* void parseString (in nsIRDFDataSource aSink, in nsIURI aBaseURI, in AUTF8String aSource); */
  nsresult ParseString(nsIRDFDataSource aSink, nsIURI aBaseURI, nsACString * aSource);

}

