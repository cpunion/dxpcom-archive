/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInputStreamTee.idl
 */

module mozilla.dxpcom.nsIInputStreamTeeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInputStreamTee;


public import mozilla.dxpcom.nsIInputStreamTeeD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIInputStreamTee */
/**
 * A nsIInputStreamTee is a wrapper for an input stream, that when read
 * reads the specified amount of data from its |source| and copies that
 * data to its |sink|.  |sink| must be a blocking output stream.
 */
class nsIInputStreamTeeD : public nsIInputStreamD {

  static const nsIID IID = NS_IINPUTSTREAMTEE_IID;


  alias nsIInputStreamTee InnerType;

  this(nsIInputStreamTee intr){
    super(intr);
    this.inner = intr;
  }

  nsIInputStreamTee opCast() {
    return inner;
  }

  void opAssign(nsIInputStreamTee value) {
    inner = value;
  }

  /* attribute nsIInputStream source; */
  nsIInputStreamD  Source(){
    nsIInputStream value;
    nsresult __result = inner.GetSource(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }
  void Source(nsIInputStreamD  aSource){
    nsIInputStream value;
    nsresult __result = inner.SetSource(value);
    CheckException(__result);
  }

  /* attribute nsIOutputStream sink; */
  nsIOutputStreamD  Sink(){
    nsIOutputStream value;
    nsresult __result = inner.GetSink(&value);
    CheckException(__result);
    return new nsIOutputStreamD(value);
  }
  void Sink(nsIOutputStreamD  aSink){
    nsIOutputStream value;
    nsresult __result = inner.SetSink(value);
    CheckException(__result);
  }

private:
  nsIInputStreamTee inner;

}

