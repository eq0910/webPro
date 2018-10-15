package crypt;

public class SHA256_INFO
{
    public int[] uChainVar;
    public int uHighLength;
    public int uLowLength;
    public byte[] szBuffer;
    
    public SHA256_INFO() {
        this.uChainVar = new int[8];
        this.szBuffer = new byte[64];
    }
}
