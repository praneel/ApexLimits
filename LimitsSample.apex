//This query will never exceed the limit on QueryRows
 Integer queryRowLimit = limits.getLimitQueryRows();
 Integer rowsAlreadyQueried = limits.getQueryRows();
 Integer rowsRemaining = queryRowLimit - rowsAlreadyQueried; 
List<account > q = [ Select Id From Account Limit :rowsRemaining ]; 

//Neither will this condensed one 
List<contact> q =[ Select Id From Contact Limit :(limits.getLimitQueryRows()limits.getQueryRows() ) ];
