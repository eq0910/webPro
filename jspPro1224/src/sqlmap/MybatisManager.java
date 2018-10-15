package sqlmap;

import org.apache.ibatis.io.*;
import org.apache.ibatis.session.*;
import java.io.*;

public class MybatisManager
{
    private static SqlSessionFactory instance;
    
    public static SqlSessionFactory getInstance() {
        Reader reader = null;
        try {
            reader = Resources.getResourceAsReader("sqlmap/sqlMapConfig.xml");
            MybatisManager.instance = new SqlSessionFactoryBuilder().build(reader);
        }
        catch (Exception e) {
            e.printStackTrace();
            try {
                if (reader != null) {
                    reader.close();
                }
            }
            catch (IOException e2) {
                e2.printStackTrace();
            }
            return MybatisManager.instance;
        }
        finally {
            try {
                if (reader != null) {
                    reader.close();
                }
            }
            catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        try {
            if (reader != null) {
                reader.close();
            }
        }
        catch (IOException e2) {
            e2.printStackTrace();
        }
        return MybatisManager.instance;
    }
}
