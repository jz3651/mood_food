from geopy import Nominatim


address = '642 Bridge Road, Richmond, Melbourne'
locator = Nominatim(user_agent="myGeocoder")
location = locator.geocode(address)
print(location.latitude, location.longitude)
