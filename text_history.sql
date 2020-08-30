select count(rowid),
       strftime('%Y',datetime(date/1000000000 +
       strftime('%s','2001-01-01'), 'unixepoch','localtime')) as Year,
       strftime('%m',datetime(date/1000000000 +
       strftime('%s','2001-01-01'), 'unixepoch','localtime')) as Month,
       is_from_me

       from message

       group by Year, Month, is_from_me;
