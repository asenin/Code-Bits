public static void main(String[]args){
        BufferedWriter out = null;
        try {
            out = new BufferedWriter(new FileWriter(”filename”, true));
            out.write("");
        } catch (IOException e) {
            // error processing code
        } finally {
            if (out != null) {
                out.close();
            }
        }
}