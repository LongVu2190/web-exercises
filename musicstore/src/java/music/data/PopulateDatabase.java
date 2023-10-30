/* If the Products table in the music_jpa database doesn't contain any records,
 * you can use this class to populate the Product table.
 *
 * To do this in NetBeans, press SHIFT+F6
 * while in this window, or right click and select Run File. It is normal for
 * it to take a few minutes to run.
 *
 * After you have done this, you will want to change the
 * javax.persistence.schema-generation.database.action value in the
 * persistence.xml file to "none". Otherwise, the application will pause for
 * two or three minutes each time you start it when it first makes a database
 * call.
*/

package music.data;

import java.util.HashMap;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.spi.PersistenceUnitTransactionType;
import music.business.product;
import static org.eclipse.persistence.config.EntityManagerProperties.JDBC_DRIVER;
import static org.eclipse.persistence.config.EntityManagerProperties.JDBC_PASSWORD;
import static org.eclipse.persistence.config.EntityManagerProperties.JDBC_URL;
import static org.eclipse.persistence.config.EntityManagerProperties.JDBC_USER;
import static org.eclipse.persistence.config.PersistenceUnitProperties.TRANSACTION_TYPE;

public class PopulateDatabase {
    private static EntityManagerFactory emf;
    
    public static void insertProduct(product product) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(product);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
    }
    
    public static void main(String[] args) {
        Map props = new HashMap();
        props.put(TRANSACTION_TYPE, PersistenceUnitTransactionType.RESOURCE_LOCAL.name());
        props.put(JDBC_DRIVER, "org.postgresql.Driver");
        props.put(JDBC_URL, "jdbc:postgresql://localhost/donhang");
        props.put(JDBC_USER, "postgres");
        props.put(JDBC_PASSWORD, "123abc*");
        props.put("eclipselink.target-database", "PostgreSQL");
        props.put("eclipselink.ddl-generation", "drop-and-create-tables");
        props.put("eclipselink.ddl-generation.output-mode", "database");
        
        emf = Persistence.createEntityManagerFactory("musicStorePU", props);
        
        
        product product1 = new product();
        product1.setCode("8601");
        product1.setDescription("86 (the band) - True Life Songs and Pictures");
        product1.setPrice(14.95);
        insertProduct(product1);
        
        product product2 = new product();
        product2.setCode("pf01");
        product2.setDescription("Paddlefoot - The first CD");
        product2.setPrice(12.95);
        insertProduct(product2);
        
        product product3 = new product();
        product3.setCode("pf02");
        product3.setDescription("Paddlefoot - The second CD");
        product3.setPrice(14.95);
        insertProduct(product3);
        
        product product4 = new product();
        product4.setCode("jr01");
        product4.setDescription("Joe Rut - Genuine Wood Grained Finish");
        product4.setPrice(14.95);
        insertProduct(product4);
    }
}