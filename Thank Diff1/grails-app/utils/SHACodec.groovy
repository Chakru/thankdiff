/**
 * Created by inabengre on 5/12/2016.
 */
import java.security.MessageDigest
class SHACodec{
    static encode = {target->
        MessageDigest md = MessageDigest.getInstance('SHA')
        md.update(target.getBytes('UTF-8'))
        return new String(md.digest()).encodeAsBase64()
    }
}