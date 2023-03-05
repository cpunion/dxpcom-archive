/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMComment.idl
 */

module mozilla.dxpcom.nsIDOMCommentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMComment;


public import mozilla.dxpcom.nsIDOMCommentD;

public import mozilla.xpcom.nsIDOMCharacterData;
public import mozilla.dxpcom.nsIDOMCharacterDataD;


/* starting wrapper class:    nsIDOMComment */
class nsIDOMCommentD : public nsIDOMCharacterDataD {

  static const nsIID IID = NS_IDOMCOMMENT_IID;


  alias nsIDOMComment InnerType;

  this(nsIDOMComment intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMComment opCast() {
    return inner;
  }

  void opAssign(nsIDOMComment value) {
    inner = value;
  }

private:
  nsIDOMComment inner;

}

