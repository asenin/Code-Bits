java.util.Date = java.text.DateFormat.getDateInstance().parse(date String);

//or

SimpleDateFormat format = new SimpleDateFormat( "dd.MM.yyyy" );
Date date = format.parse( myString );
