class Schedule {
  String coverageArea;
  String wasteBankName;
  String implementationDate;
  String startTime;
  String endTime;
  String imageUrl;

  Schedule({
    required this.coverageArea,
    required this.wasteBankName,
    required this.implementationDate,
    required this.startTime,
    required this.endTime,
    required this.imageUrl,
  });
}

var scheduleList = [
  Schedule(
    coverageArea: 'Sedayu dan sekitarnya',
    wasteBankName: 'Bank Sampah Argomulyo',
    implementationDate: '2024-09-10',
    startTime: '07:00',
    endTime: '12:00',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR0IWKpJs4-SrUxOQQsLx0bj0WfLBhuu5ZXQ&s',
  ),
  Schedule(
    coverageArea: 'Maguwo dan sekitarnya',
    wasteBankName: 'Bank Sampah Sambilegi',
    implementationDate: '2024-10-10',
    startTime: '08:00',
    endTime: '13:00',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqm6_m7IpHe3m85ujEAf35BRFZkv106iLYvQ&s',
  ),
  Schedule(
    coverageArea: 'Bantul dan sekitarnya',
    wasteBankName: 'Bank Publik Sampah Sewon',
    implementationDate: '2024-10-12',
    startTime: '07:45',
    endTime: '11:30',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM7fyHwaJBqIipo90b2AQBGxh9IzwrzjSMBQ&s',
  ),
];
