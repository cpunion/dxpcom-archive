/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedGenerator.idl
 */

module mozilla.dxpcom.nsIFeedGeneratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedGenerator;


public import mozilla.dxpcom.nsIFeedGeneratorD;

public import mozilla.xpcom.nsIFeedElementBase;
public import mozilla.dxpcom.nsIFeedElementBaseD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIFeedGenerator */
/**
 *  An nsIFeedGenerator represents the software used to create a feed.
 */
class nsIFeedGeneratorD : public nsIFeedElementBaseD {

  static const nsIID IID = NS_IFEEDGENERATOR_IID;


  alias nsIFeedGenerator InnerType;

  this(nsIFeedGenerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedGenerator opCast() {
    return inner;
  }

  void opAssign(nsIFeedGenerator value) {
    inner = value;
  }

  /**
   * The name of the software.
   */
  /* attribute AString agent; */
  wchar[] Agent(){
    scope auto value = new AString();
    nsresult __result = inner.GetAgent(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Agent(wchar[] aAgent){
    scope auto value = new AString(aAgent);
    nsresult __result = inner.SetAgent(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * The version of the software.
   */
  /* attribute AString version; */
  wchar[] Version(){
    scope auto value = new AString();
    nsresult __result = inner.GetVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Version(wchar[] aVersion){
    scope auto value = new AString(aVersion);
    nsresult __result = inner.SetVersion(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * A URI associated with the software.
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
  nsIFeedGenerator inner;

}

