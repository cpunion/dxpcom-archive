/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedPerson.idl
 */

module mozilla.dxpcom.nsIFeedPersonD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedPerson;


public import mozilla.dxpcom.nsIFeedPersonD;

public import mozilla.xpcom.nsIFeedElementBase;
public import mozilla.dxpcom.nsIFeedElementBaseD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIFeedPerson */
/**
 *  An nsIFeedPerson represents an author or contributor of a feed.
 */
class nsIFeedPersonD : public nsIFeedElementBaseD {

  static const nsIID IID = NS_IFEEDPERSON_IID;


  alias nsIFeedPerson InnerType;

  this(nsIFeedPerson intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedPerson opCast() {
    return inner;
  }

  void opAssign(nsIFeedPerson value) {
    inner = value;
  }

  /**
   * The name of the person.
   */
  /* attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * An email address associated with the person.
   */
  /* attribute AString email; */
  wchar[] Email(){
    scope auto value = new AString();
    nsresult __result = inner.GetEmail(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Email(wchar[] aEmail){
    scope auto value = new AString(aEmail);
    nsresult __result = inner.SetEmail(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * A URI associated with the person (e.g. a homepage).
   */
  /* attribute nsIURI uri; */
  nsIURID  Uri(){
    nsIURI value;
    nsresult __result = inner.GetUri(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Uri(nsIURID  aUri){
    nsIURI value;
    nsresult __result = inner.SetUri(value);
    CheckException(__result);
  }

private:
  nsIFeedPerson inner;

}

