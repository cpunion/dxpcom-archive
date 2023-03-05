/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInputStreamTee.idl
 */

module mozilla.xpcom.nsIInputStreamTee;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsIInputStreamTee */
const char[] NS_IINPUTSTREAMTEE_IID_STR = "44e8b2c8-1ecb-4a63-8b23-3e3500c34f32";

const nsIID NS_IINPUTSTREAMTEE_IID= 
  {0x44e8b2c8, 0x1ecb, 0x4a63, 
    [ 0x8b, 0x23, 0x3e, 0x35, 0x00, 0xc3, 0x4f, 0x32 ]};

/**
 * A nsIInputStreamTee is a wrapper for an input stream, that when read
 * reads the specified amount of data from its |source| and copies that
 * data to its |sink|.  |sink| must be a blocking output stream.
 */
extern(Windows)
interface nsIInputStreamTee : nsIInputStream {
  static const char[] IID_STR = NS_IINPUTSTREAMTEE_IID_STR;
  static const nsIID IID = NS_IINPUTSTREAMTEE_IID;

  /* attribute nsIInputStream source; */
  nsresult GetSource(nsIInputStream  *aSource);
  nsresult SetSource(nsIInputStream  aSource);

  /* attribute nsIOutputStream sink; */
  nsresult GetSink(nsIOutputStream  *aSink);
  nsresult SetSink(nsIOutputStream  aSink);

}

