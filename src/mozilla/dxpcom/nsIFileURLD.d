/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileURL.idl
 */

module mozilla.dxpcom.nsIFileURLD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFileURL;


public import mozilla.dxpcom.nsIFileURLD;

public import mozilla.xpcom.nsIURL;
public import mozilla.dxpcom.nsIURLD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIFileURL */
/**
 * nsIFileURL provides access to the underlying nsIFile object corresponding to
 * an URL.  The URL scheme need not be file:, since other local protocols may
 * map URLs to files (e.g., resource:).
 *
 * @status FROZEN
 */
class nsIFileURLD : public nsIURLD {

  static const nsIID IID = NS_IFILEURL_IID;


  alias nsIFileURL InnerType;

  this(nsIFileURL intr){
    super(intr);
    this.inner = intr;
  }

  nsIFileURL opCast() {
    return inner;
  }

  void opAssign(nsIFileURL value) {
    inner = value;
  }

  /**
     * Get/Set nsIFile corresponding to this URL.
     *
     *  - Getter returns a reference to an immutable object.  Callers must clone
     *    before attempting to modify the returned nsIFile object.  NOTE: this
     *    constraint might not be enforced at runtime, so beware!!
     *
     *  - Setter clones the nsIFile object (allowing the caller to safely modify
     *    the nsIFile object after setting it on this interface).
     */
  /* attribute nsIFile file; */
  nsIFileD  File(){
    nsIFile value;
    nsresult __result = inner.GetFile(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }
  void File(nsIFileD  aFile){
    nsIFile value;
    nsresult __result = inner.SetFile(value);
    CheckException(__result);
  }

private:
  nsIFileURL inner;

}

