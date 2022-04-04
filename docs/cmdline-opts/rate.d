Long: rate
Arg: <max request rate>
Help: Request rate for serial transfers
Category: connection
Example: --rate 2/s $URL
Example: --rate 3/h $URL
Example: --rate 14/m $URL
Added: 7.84.0
See-also: limit-rate
---
Specify the maximum transfer frequency you allow curl to use - in number of
transfer starts per time unit. Without this option, curl will start the next
transfer as fast as possible.

If given several URLs and a transfer goes faster than the allowed rate, curl
will wait until the next transfer is started. This option has no effect when
--parallel is used.

The request rate is provided as "N/U" where N is an integer number and U is a
time unit. Supported units are 's' (second), 'm' (minute), 'h' (hour) and 'd'
/(day, as in a 24 hour unit). The default time unit, if no "/U" is provided,
is number of transfers per hour.

If curl is told to allow 10 requests per minute, it will not start the next
request until 6 seconds have elapsed since the previous transfer was started.

This function uses millisecond resolution. If the allowed frequency is set
more than 1000 per second, it will instead run unrestricted.

If this option is used several times, the last one will be used.
