package ConnectionMongoDB;


import Model.MongoDB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoSecurityException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;


public class ConnectionMongoDB {       
        MongoDB mongoDB = new MongoDB();
        public static MongoDatabase database;     
        
    public MongoDatabase connection (){
        String URI = "mongodb+srv://DevSolutionsT3:ESPE2022@devsolutionst3.c6g92lf.mongodb.net/?retryWrites=true&w=majority";
        
        try {
            mongoDB.setUri(new MongoClientURI(URI));
            mongoDB.setMongoClient(new MongoClient(mongoDB.getUri()));
            mongoDB.setMongoDataBase(mongoDB.getMongoClient().getDatabase("DevSolutionsT3"));
            mongoDB.setMongoCollection(mongoDB.getMongoDataBase().getCollection((URI)));
            mongoDB.getMongoCollection().drop();         
        } catch (MongoSecurityException a) {
            mongoDB.setMongoDataBase(null);
        }
            return mongoDB.getMongoDataBase();
}
    
    public void ConnectionMongo(){
        ConnectionMongoDB connectionmongodb = new ConnectionMongoDB()  ;   
        database = connectionmongodb.connection(); 
    }
    
    public void save(Document document, String collection, MongoDatabase database) {
    MongoCollection<Document> collectionDocument = database.getCollection(collection);
    collectionDocument.insertOne(document);
    }
        
        
}
    
