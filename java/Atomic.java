public class Atomic{
    public static void main(String[] args) {
        int maxRetries = 10;
        List<ODocument> result = db.query("SELECT FROM Client WHERE id = '39w39D32d2d'");
        ODocument address = result.get(0);

        for (int retry = 0; retry < maxRetries; ++retry) {
            try {
                // LOOKUP FOR THE INVOICE VERTEX
                address.field( "street", street );
                address.field( "zip", zip );
                address.field( "city", cityName );
                address.field( "country", countryName );

                address.save();

                // EXIT FROM RETRY LOOP
                break;
            }
            catch( ONeedRetryException e ) {
                // IF SOMEONE UPDATES THE ADDRESS DOCUMENT
                // AT THE SAME TIME, RETRY IT.
            }
        }
    }
}