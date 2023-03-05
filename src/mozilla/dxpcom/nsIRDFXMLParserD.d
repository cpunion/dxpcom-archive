/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFXMLParser.idl
 */

module mozilla.dxpcom.nsIRDFXMLParserD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFXMLParser;


public import mozilla.dxpcom.nsIRDFXMLParserD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.dxpcom.nsIRDFDataSourceD;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;
public import mozilla.xpcom.nsIURI;
public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIRDFXMLParser */
class nsIRDFXMLParserD : public nsISupportsD {

  static const nsIID IID = NS_IRDFXMLPARSER_IID;


  alias nsIRDFXMLParser InnerType;

  this(nsIRDFXMLParser intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFXMLParser opCast() {
    return inner;
  }

  void opAssign(nsIRDFXMLParser value) {
    inner = value;
  }

  /**
     * Create a stream listener that can be used to asynchronously
     * parse RDF/XML.
     * @param aSink the RDF datasource the will receive the data
     * @param aBaseURI the base URI used to resolve relative
     *   references in the RDF/XML
     * @return an nsIStreamListener object to handle the data
     */
  /* nsIStreamListener parseAsync (in nsIRDFDataSource aSink, in nsIURI aBaseURI); */
  nsIStreamListenerD  ParseAsync(nsIRDFDataSourceD aSink, nsIURID aBaseURI){
    nsIStreamListener _retval;
    nsresult __result = inner.ParseAsync(aSink ? cast(nsIRDFDataSource)aSink : null, aBaseURI ? cast(nsIURI)aBaseURI : null, &_retval);
    CheckException(__result);
    return new nsIStreamListenerD(_retval);
  }

  /**
     * Parse a string of RDF/XML
     * @param aSink the RDF datasource that will receive the data
     * @param aBaseURI the base URI used to resolve relative
     *   references in the RDF/XML
     * @param aSource a UTF8 string containing RDF/XML data.
     */
  /* void parseString (in nsIRDFDataSource aSink, in nsIURI aBaseURI, in AUTF8String aSource); */
  void ParseString(nsIRDFDataSourceD aSink, nsIURID aBaseURI, char[] aSource){
    scope auto _aSource = new ACString(aSource);
    nsresult __result = inner.ParseString(aSink ? cast(nsIRDFDataSource)aSink : null, aBaseURI ? cast(nsIURI)aBaseURI : null, cast(nsACString*)_aSource);
    CheckException(__result);
  }

private:
  nsIRDFXMLParser inner;

}

