/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMultiplexInputStream.idl
 */

module mozilla.dxpcom.nsIMultiplexInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMultiplexInputStream;


public import mozilla.dxpcom.nsIMultiplexInputStreamD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIMultiplexInputStream */
/**
 * The multiplex stream concatinates a list of input streams into a single
 * stream.
 */
class nsIMultiplexInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_IMULTIPLEXINPUTSTREAM_IID;


  alias nsIMultiplexInputStream InnerType;

  this(nsIMultiplexInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIMultiplexInputStream opCast() {
    return inner;
  }

  void opAssign(nsIMultiplexInputStream value) {
    inner = value;
  }

  /**
     * Number of streams in this multiplex-stream
     */
  /* readonly attribute unsigned long count; */
  PRUint32 Count(){
    PRUint32 value;
    nsresult __result = inner.GetCount(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Appends a stream to the end of the streams. The cursor of the stream
     * should be located at the beginning of the stream if the implementation
     * of this nsIMultiplexInputStream also is used as an nsISeekableStream.
     * @param stream  stream to append
     */
  /* void appendStream (in nsIInputStream stream); */
  void AppendStream(nsIInputStreamD stream){
    nsresult __result = inner.AppendStream(stream ? cast(nsIInputStream)stream : null);
    CheckException(__result);
  }

  /**
     * Insert a stream at specified index.  If the cursor of this stream is at
     * the beginning of the stream at index, the cursor will be placed at the
     * beginning of the inserted stream instead.
     * The cursor of the new stream should be located at the beginning of the
     * stream if the implementation of this nsIMultiplexInputStream also is
     * used as an nsISeekableStream.
     * @param stream  stream to insert
     * @param index   index to insert stream at, must be <= count
     */
  /* void insertStream (in nsIInputStream stream, in unsigned long index); */
  void InsertStream(nsIInputStreamD stream, PRUint32 index){
    nsresult __result = inner.InsertStream(stream ? cast(nsIInputStream)stream : null, index);
    CheckException(__result);
  }

  /**
     * Remove stream at specified index. If this stream is the one currently
     * being read the readcursor is moved to the beginning of the next
     * stream
     * @param index   remove stream at this index, must be < count
     */
  /* void removeStream (in unsigned long index); */
  void RemoveStream(PRUint32 index){
    nsresult __result = inner.RemoveStream(index);
    CheckException(__result);
  }

  /**
     * Get stream at specified index.
     * @param index   return stream at this index, must be < count
     * @return        stream at specified index
     */
  /* nsIInputStream getStream (in unsigned long index); */
  nsIInputStreamD  GetStream(PRUint32 index){
    nsIInputStream _retval;
    nsresult __result = inner.GetStream(index, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

private:
  nsIMultiplexInputStream inner;

}

