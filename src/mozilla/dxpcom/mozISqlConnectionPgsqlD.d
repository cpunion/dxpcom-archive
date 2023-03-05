/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlConnectionPgsql.idl
 */

module mozilla.dxpcom.mozISqlConnectionPgsqlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlConnectionPgsql;


public import mozilla.dxpcom.mozISqlConnectionPgsqlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozISqlConnectionPgsql */
class mozISqlConnectionPgsqlD : public nsISupportsD {

  static const nsIID IID = MOZISQLCONNECTIONPGSQL_IID;


  alias mozISqlConnectionPgsql InnerType;

  this(mozISqlConnectionPgsql intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlConnectionPgsql opCast() {
    return inner;
  }

  void opAssign(mozISqlConnectionPgsql value) {
    inner = value;
  }

private:
  mozISqlConnectionPgsql inner;

}

