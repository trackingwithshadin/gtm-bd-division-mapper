___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "BD State/Division Mapper | Tracking with Shadin",
  "description": "Automatically identifies the State/Division (e.g., Dhaka, Chattogram) based on the district found in the address. Developed by Tracking with Shadin to ensure 100% accurate region tracking for global p",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "fullAddress",
    "displayName": "Full Address Data Layer Variable",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const makeString = require('makeString');

const inputAddress = data.fullAddress;
if (!inputAddress) return undefined;

const address = makeString(inputAddress).toLowerCase();

const cityToDivisionMap = [
    { city: "dhaka", division: "Dhaka" }, { city: "faridpur", division: "Dhaka" }, { city: "gazipur", division: "Dhaka" },
    { city: "gopalganj", division: "Dhaka" }, { city: "kishoreganj", division: "Dhaka" }, { city: "madaripur", division: "Dhaka" },
    { city: "manikganj", division: "Dhaka" }, { city: "munshiganj", division: "Dhaka" }, { city: "narayanganj", division: "Dhaka" },
    { city: "narsingdi", division: "Dhaka" }, { city: "rajbari", division: "Dhaka" }, { city: "shariatpur", division: "Dhaka" },
    { city: "tangail", division: "Dhaka" },
    { city: "chattogram", division: "Chattogram" }, { city: "bandarban", division: "Chattogram" }, { city: "brahmanbaria", division: "Chattogram" },
    { city: "chandpur", division: "Chattogram" }, { city: "cox", division: "Chattogram" }, { city: "cumilla", division: "Chattogram" },
    { city: "feni", division: "Chattogram" }, { city: "khagrachhari", division: "Chattogram" }, { city: "lakshmipur", division: "Chattogram" },
    { city: "noakhali", division: "Chattogram" }, { city: "rangamati", division: "Chattogram" },
    { city: "rajshahi", division: "Rajshahi" }, { city: "bogra", division: "Rajshahi" }, { city: "joypurhat", division: "Rajshahi" },
    { city: "naogaon", division: "Rajshahi" }, { city: "natore", division: "Rajshahi" }, { city: "chapainawabganj", division: "Rajshahi" },
    { city: "pabna", division: "Rajshahi" }, { city: "sirajganj", division: "Rajshahi" },
    { city: "khulna", division: "Khulna" }, { city: "bagerhat", division: "Khulna" }, { city: "chuadanga", division: "Khulna" },
    { city: "jessore", division: "Khulna" }, { city: "jhenaidah", division: "Khulna" }, { city: "kushtia", division: "Khulna" },
    { city: "magura", division: "Khulna" }, { city: "meherpur", division: "Khulna" }, { city: "narail", division: "Khulna" },
    { city: "satkhira", division: "Khulna" },
    { city: "sylhet", division: "Sylhet" }, { city: "habiganj", division: "Sylhet" }, { city: "moulvibazar", division: "Sylhet" },
    { city: "sunamganj", division: "Sylhet" },
    { city: "barishal", division: "Barishal" }, { city: "barguna", division: "Barishal" }, { city: "bhola", division: "Barishal" },
    { city: "jhalokati", division: "Barishal" }, { city: "patuakhali", division: "Barishal" }, { city: "pirojpur", division: "Barishal" },
    { city: "rangpur", division: "Rangpur" }, { city: "dinajpur", division: "Rangpur" }, { city: "gaibandha", division: "Rangpur" },
    { city: "kurigram", division: "Rangpur" }, { city: "lalmonirhat", division: "Rangpur" }, { city: "nilphamari", division: "Rangpur" },
    { city: "panchagarh", division: "Rangpur" }, { city: "thakurgaon", division: "Rangpur" },
    { city: "mymensingh", division: "Mymensingh" }, { city: "jamalpur", division: "Mymensingh" }, { city: "netrokona", division: "Mymensingh" },
    { city: "sherpur", division: "Mymensingh" }
];

for (let i = 0; i < cityToDivisionMap.length; i++) {
    const cityName = cityToDivisionMap[i].city;
    if (address.indexOf(cityName) !== -1) {
        return cityToDivisionMap[i].division;
    }
}

return undefined;


___TESTS___

scenarios: []


___NOTES___

Created on 2/24/2026, 11:13:28 PM


