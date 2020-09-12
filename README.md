# nordvpn-rotating
NordVPN Rotating with megasync downloading for bypassing Mega download limits
![](https://i.imgur.com/QqE0I1i.jpg)

1.  Connecting to a one of the selected countries server of NordVPN
    * The closer to your location are ofter the faster
```
countries="France Belgium Spain Italy Germany Netherlands Switzerland"
```

2.  shuffing the list and selecting a random one ( for rotating and changing the IP each X time )

```
country="$(shuf -n 1 -e France Belgium Spain Italy Germany Netherland    s Switzerland)"
```

3.  Connecting to the chosen country and runnnig Mega on the background
```
nordvpn connect $country
megasync &
```

4.  Doing that for X time 

5.  Killing mega and doing that again and again
