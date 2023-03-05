/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileStreams.idl
 */

module mozilla.xpcom.nsIFileStreams;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.xpcom.nsIOutputStream;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIFileInputStream */
const char[] NS_IFILEINPUTSTREAM_IID_STR = "e3d56a20-c7ec-11d3-8cda-0060b0fc14a3";

const nsIID NS_IFILEINPUTSTREAM_IID= 
  {0xe3d56a20, 0xc7ec, 0x11d3, 
    [ 0x8c, 0xda, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

/**
 * An input stream that allows you to read from a file.
 */
extern(Windows)
interface nsIFileInputStream : nsIInputStream {
  static const char[] IID_STR = NS_IFILEINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IFILEINPUTSTREAM_IID;

  /**
     * @param file          file to read from (must QI to nsILocalFile)
     * @param ioFlags       file open flags listed in prio.h
     * @param perm          file mode bits listed in prio.h
     * @param behaviorFlags flags specifying various behaviors of the class
     *        (see enumerations in the class)
     */
  /* void init (in nsIFile file, in long ioFlags, in long perm, in long behaviorFlags); */
  nsresult Init(nsIFile file, PRInt32 ioFlags, PRInt32 perm, PRInt32 behaviorFlags);

  /**
     * If this is set, the file will be deleted by the time the stream is
     * closed.  It may be removed before the stream is closed if it is possible
     * to delete it and still read from it.
     *
     * If OPEN_ON_READ is defined, and the file was recreated after the first
     * delete, the file will be deleted again when it is closed again.
     */
  enum { DELETE_ON_CLOSE = 2 };

  /**
     * If this is set, the file will close automatically when the end of the
     * file is reached.
     */
  enum { CLOSE_ON_EOF = 4 };

  /**
     * If this is set, the file will be reopened whenever Seek(0) occurs.  If
     * the file is already open and the seek occurs, it will happen naturally.
     * (The file will only be reopened if it is closed for some reason.)
     */
  enum { REOPEN_ON_REWIND = 8 };

}


/* starting interface:    nsIFileOutputStream */
const char[] NS_IFILEOUTPUTSTREAM_IID_STR = "e6f68040-c7ec-11d3-8cda-0060b0fc14a3";

const nsIID NS_IFILEOUTPUTSTREAM_IID= 
  {0xe6f68040, 0xc7ec, 0x11d3, 
    [ 0x8c, 0xda, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

/**
 * An output stream that lets you stream to a file.
 */
extern(Windows)
interface nsIFileOutputStream : nsIOutputStream {
  static const char[] IID_STR = NS_IFILEOUTPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IFILEOUTPUTSTREAM_IID;

  /**
     * @param file          - file to write to (must QI to nsILocalFile)
     * @param ioFlags       - file open flags listed in prio.h
     * @param perm          - file mode bits listed in prio.h
     * @param behaviorFlags flags specifying various behaviors of the class
     *        (currently none supported)
     */
  /* void init (in nsIFile file, in long ioFlags, in long perm, in long behaviorFlags); */
  nsresult Init(nsIFile file, PRInt32 ioFlags, PRInt32 perm, PRInt32 behaviorFlags);

}

