class LocationDetail {
  String image;
  String name;
  String address;

  LocationDetail({
    required this.image,
    required this.name,
    required this.address,

  });
}

List<LocationDetail> locationItems = [
  LocationDetail(
    image: "Images/spain2.jpg",
    name: 'The Way',
    address: 'Spain',
  ),
  LocationDetail(
    image: "Images/thebridge.png",
    name: 'Loygavegur',
    address: 'Iceland',
  ),
  LocationDetail(
    image: "Images/coratia.png",
    name: 'Oyo Lakes',
    address: 'Croatia',
  ),
  LocationDetail(
    image: "Images/sunrises.png",
    name: 'Sun Rise',
    address: 'UK',
  ),
  LocationDetail(
    image: "Images/eiffel_tower.png",
    name: 'Effiel Tower',
    address: 'Paris France',
  ),
];