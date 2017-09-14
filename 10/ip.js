function ipCheck(ipString) {
  fourOctets = ipString.split(".");

  if (fourOctets.length != 4) {
    return false;
  }

  for (var i = 0; i < 4; i++) {
    if (parseInt(fourOctets[i]) >= 0 && parseInt(fourOctets[i]) <= 255) {
      continue;
    } else {
      return false;
    }
  }

  return true;
}

function isReserved(ipString) {
  if (!ipCheck(ipString)) { return false;}

  var networkDescriptions = {
    "0.0.0.0/8":       "Current network (only valid as source address)",
    "10.0.0.0/8":      "Private network",
    "100.64.0.0/10":   "Shared Address Space",
    "127.0.0.0/8":     "Loopback",
    "169.254.0.0/16":  "Link-local",
    "172.16.0.0/12":   "Private network",
    "192.0.0.0/24":    "IETF Protocol Assignments",
    "192.0.2.0/24":    "TEST-NET-1, documentation and examples",
    "192.88.99.0/24":  "IPv6 to IPv4 relay (includes 2002::/16)",
    "192.168.0.0/16":  "Private network",
    "198.18.0.0/15":   "Network benchmark tests",
    "198.51.100.0/24": "TEST-NET-2, documentation and examples",
    "203.0.113.0/24":  "TEST-NET-3, documentation and examples",
    "224.0.0.0/4":     "IP multicast (former Class D network)",
    "240.0.0.0/4":     "Reserved (former Class E network)",
    "255.255.255.255": "Broadcast"
  };


  function includes(networkDescriptionsKeys, ipString) {
    for (var i = 0; i < networkDescriptionsKeys.length; i++) {
      if (networkDescriptionsKeys[i] == ipString) {
        return true;
        break;
      }
    }

    return false
  }

  if (includes(Object.keys(networkDescriptions), ipString)) {
    return networkDescriptions[ipString];
  }
  else {
    return "Public Network";
  }
}

<<<<<<< HEAD
console.log(isReserved("255.255.255.25"));
console.log(isReserved("255.255.255.25.23"));
console.log(isReserved("255.255.255.h"));
console.log(isReserved("0.0.0.0/8"));
=======
console.log(ipCheck("255.255.255.25"));
console.log(ipCheck("255.255.255.25.23"));
console.log(ipCheck("255.255.255.h"));
console.log(ipCheck("0.0.0.0/8"));
>>>>>>> 4e97684edd174c396bcb2ee1dd2299208cc36ca2
console.log(isReserved("0.0.0.0/8"));
console.log(isReserved("240.0.0.0/4"));
console.log(isReserved("192.0.2.0/24"));
console.log(isReserved("192.168.0.0/16"));
