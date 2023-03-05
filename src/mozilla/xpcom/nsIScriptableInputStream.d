/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableInputStream.idl
 */

module mozilla.xpcom.nsIScriptableInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIScriptableInputStream */
const char[] NS_ISCRIPTABLEINPUTSTREAM_IID_STR = "a2a32f90-9b90-11d3-a189-0050041caf44";

const nsIID NS_ISCRIPTABLEINPUTSTREAM_IID= 
  {0xa2a32f90, 0x9b90, 0x11d3, 
    [ 0xa1, 0x89, 0x00, 0x50, 0x04, 0x1c, 0xaf, 0x44 ]};

/**
 * nsIScriptableInputStream provides scriptable access to the nsIInputStream.  
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIScriptableInputStream : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEINPUTSTREAM_IID;

  /** 
     * Closes the stream. 
     */
  /* void close (); */
  nsresult Close();

  /** Wrap the given nsIInputStream with this nsIScriptableInputStream. 
     *  @param aInputStream [in] parameter providing the stream to wrap 
     */
  /* void init (in nsIInputStream aInputStream); */
  nsresult Init(nsIInputStream aInputStream);

  /** Return the number of bytes currently available in the stream 
     *  @param _retval [out] parameter to hold the number of bytes 
     *         if an error occurs, the parameter will be undefined 
     *  @return error status 
     */
  /* unsigned long available (); */
  nsresult Available(PRUint32 *_retval);

  /** Read data from the stream. 
     *  @param aCount [in] the maximum number of bytes to read 
     *  @param _retval [out] the data
     */
  /* string read (in unsigned long aCount); */
  nsresult Read(PRUint32 aCount, char **_retval);

}

