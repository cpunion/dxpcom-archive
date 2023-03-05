/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileStreams.idl
 */

module mozilla.dxpcom.nsIFileStreamsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFileStreams;


public import mozilla.dxpcom.nsIFileStreamsD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;
public import mozilla.xpcom.nsIOutputStream;
public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIFileInputStream */
/**
 * An input stream that allows you to read from a file.
 */
class nsIFileInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_IFILEINPUTSTREAM_IID;


  alias nsIFileInputStream InnerType;

  this(nsIFileInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIFileInputStream opCast() {
    return inner;
  }

  void opAssign(nsIFileInputStream value) {
    inner = value;
  }

  /**
     * @param file          file to read from (must QI to nsILocalFile)
     * @param ioFlags       file open flags listed in prio.h
     * @param perm          file mode bits listed in prio.h
     * @param behaviorFlags flags specifying various behaviors of the class
     *        (see enumerations in the class)
     */
  /* void init (in nsIFile file, in long ioFlags, in long perm, in long behaviorFlags); */
  void Init(nsIFileD file, PRInt32 ioFlags, PRInt32 perm, PRInt32 behaviorFlags){
    nsresult __result = inner.Init(file ? cast(nsIFile)file : null, ioFlags, perm, behaviorFlags);
    CheckException(__result);
  }

  /**
     * If this is set, the file will be deleted by the time the stream is
     * closed.  It may be removed before the stream is closed if it is possible
     * to delete it and still read from it.
     *
     * If OPEN_ON_READ is defined, and the file was recreated after the first
     * delete, the file will be deleted again when it is closed again.
     */
  enum { DELETE_ON_CLOSE = 2 }

  /**
     * If this is set, the file will close automatically when the end of the
     * file is reached.
     */
  enum { CLOSE_ON_EOF = 4 }

  /**
     * If this is set, the file will be reopened whenever Seek(0) occurs.  If
     * the file is already open and the seek occurs, it will happen naturally.
     * (The file will only be reopened if it is closed for some reason.)
     */
  enum { REOPEN_ON_REWIND = 8 }

private:
  nsIFileInputStream inner;

}


/* starting wrapper class:    nsIFileOutputStream */
/**
 * An output stream that lets you stream to a file.
 */
class nsIFileOutputStreamD : public nsIOutputStreamD {

  static const nsIID IID = NS_IFILEOUTPUTSTREAM_IID;


  alias nsIFileOutputStream InnerType;

  this(nsIFileOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIFileOutputStream opCast() {
    return inner;
  }

  void opAssign(nsIFileOutputStream value) {
    inner = value;
  }

  /**
     * @param file          - file to write to (must QI to nsILocalFile)
     * @param ioFlags       - file open flags listed in prio.h
     * @param perm          - file mode bits listed in prio.h
     * @param behaviorFlags flags specifying various behaviors of the class
     *        (currently none supported)
     */
  /* void init (in nsIFile file, in long ioFlags, in long perm, in long behaviorFlags); */
  void Init(nsIFileD file, PRInt32 ioFlags, PRInt32 perm, PRInt32 behaviorFlags){
    nsresult __result = inner.Init(file ? cast(nsIFile)file : null, ioFlags, perm, behaviorFlags);
    CheckException(__result);
  }

private:
  nsIFileOutputStream inner;

}

