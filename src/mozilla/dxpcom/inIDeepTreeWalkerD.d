/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIDeepTreeWalker.idl
 */

module mozilla.dxpcom.inIDeepTreeWalkerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.inIDeepTreeWalker;


public import mozilla.dxpcom.inIDeepTreeWalkerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIDOMTreeWalker;
public import mozilla.dxpcom.nsIDOMTreeWalkerD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    inIDeepTreeWalker */
class inIDeepTreeWalkerD : public nsIDOMTreeWalkerD {

  static const nsIID IID = INIDEEPTREEWALKER_IID;


  alias inIDeepTreeWalker InnerType;

  this(inIDeepTreeWalker intr){
    super(intr);
    this.inner = intr;
  }

  inIDeepTreeWalker opCast() {
    return inner;
  }

  void opAssign(inIDeepTreeWalker value) {
    inner = value;
  }

  /* attribute boolean showAnonymousContent; */
  PRBool ShowAnonymousContent(){
    PRBool value;
    nsresult __result = inner.GetShowAnonymousContent(&value);
    CheckException(__result);
    return value;
  }
  void ShowAnonymousContent(PRBool aShowAnonymousContent){
    nsresult __result = inner.SetShowAnonymousContent(aShowAnonymousContent);
    CheckException(__result);
  }

  /* attribute boolean showSubDocuments; */
  PRBool ShowSubDocuments(){
    PRBool value;
    nsresult __result = inner.GetShowSubDocuments(&value);
    CheckException(__result);
    return value;
  }
  void ShowSubDocuments(PRBool aShowSubDocuments){
    nsresult __result = inner.SetShowSubDocuments(aShowSubDocuments);
    CheckException(__result);
  }

  /* void init (in nsIDOMNode aRoot, in unsigned long aWhatToShow); */
  void Init(nsIDOMNodeD aRoot, PRUint32 aWhatToShow){
    nsresult __result = inner.Init(aRoot ? cast(nsIDOMNode)aRoot : null, aWhatToShow);
    CheckException(__result);
  }

private:
  inIDeepTreeWalker inner;

}

