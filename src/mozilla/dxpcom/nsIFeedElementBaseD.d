/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedElementBase.idl
 */

module mozilla.dxpcom.nsIFeedElementBaseD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedElementBase;


public import mozilla.dxpcom.nsIFeedElementBaseD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISAXAttributes;

public import mozilla.dxpcom.nsISAXAttributesD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIFeedElementBase */
/**
 *  An nsIFeedGenerator represents the software used to create a feed.
 */
class nsIFeedElementBaseD : public nsISupportsD {

  static const nsIID IID = NS_IFEEDELEMENTBASE_IID;


  alias nsIFeedElementBase InnerType;

  this(nsIFeedElementBase intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedElementBase opCast() {
    return inner;
  }

  void opAssign(nsIFeedElementBase value) {
    inner = value;
  }

  /**
   * The attributes found on the element. Most interfaces provide convenience
   * accessors for their standard fields, so this useful only when looking for
   * an extension.
   */
  /* attribute nsISAXAttributes attributes; */
  nsISAXAttributesD  Attributes(){
    nsISAXAttributes value;
    nsresult __result = inner.GetAttributes(&value);
    CheckException(__result);
    return new nsISAXAttributesD(value);
  }
  void Attributes(nsISAXAttributesD  aAttributes){
    nsISAXAttributes value;
    nsresult __result = inner.SetAttributes(value);
    CheckException(__result);
  }

  /**
   * The baseURI for the Entry or Feed.
   */
  /* attribute nsIURI baseURI; */
  nsIURID  BaseURI(){
    nsIURI value;
    nsresult __result = inner.GetBaseURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void BaseURI(nsIURID  aBaseURI){
    nsIURI value;
    nsresult __result = inner.SetBaseURI(value);
    CheckException(__result);
  }

private:
  nsIFeedElementBase inner;

}

