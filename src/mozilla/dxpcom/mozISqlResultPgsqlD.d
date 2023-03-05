/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlResultPgsql.idl
 */

module mozilla.dxpcom.mozISqlResultPgsqlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlResultPgsql;


public import mozilla.dxpcom.mozISqlResultPgsqlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozISqlResultPgsql */
class mozISqlResultPgsqlD : public nsISupportsD {

  static const nsIID IID = MOZISQLRESULTPGSQL_IID;


  alias mozISqlResultPgsql InnerType;

  this(mozISqlResultPgsql intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlResultPgsql opCast() {
    return inner;
  }

  void opAssign(mozISqlResultPgsql value) {
    inner = value;
  }

private:
  mozISqlResultPgsql inner;

}

