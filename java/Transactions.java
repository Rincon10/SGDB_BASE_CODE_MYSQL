public class Transactions{
    public static void main(String[] args) {
        int maxRetries = 10;
        for (int retry = 0; retry < maxRetries; ++retry) {
            try {
                // LOOKUP FOR THE INVOICE VERTEX
                Vertex invoice = graph.getVertices("invoiceId", 2323);

                // CREATE A NEW ITEM
                Vertex invoiceItem = graph.addVertex("class:InvoiceItem");
                invoiceItem.field("price", 1000);

                // ADD IT TO THE INVOICE
                invoice.addEdge(invoiceItem);

                graph.commit();

                // EXIT FROM RETRY LOOP
                break;
            }
            catch( OConcurrentModificationException e ) {
                // SOMEONE HAS UPDATED THE INVOICE VERTEX
                // AT THE SAME TIME, RETRY IT
            }
        }
    }
}