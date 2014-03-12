import Network.HTTP

main = simpleHTTP (getRequest "http://www.google.com") >>= getResponseBody