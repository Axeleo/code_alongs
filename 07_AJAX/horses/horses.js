var horses = [
  {
    name: 'maythehorsebewithu',
    active: true,
    country: 'AUS',
    yearOfBirth: 2000,
    hourlyRate: 30,
    hoursWorked: 2000
  },
  {
    name: 'my wife knows everthing',
    active: true,
    country: 'USA',
    yearOfBirth: 2007,
    hourlyRate: 50,
    hoursWorked: 2500
  },
  {
    name: 'arrrrr',
    active: true,
    country: 'USA',
    yearOfBirth: 2004,
    hourlyRate: 30,
    hoursWorked: 2000
  },
  {
    name: 'hoof hearted',
    active: false,
    country: 'AUS',
    yearOfBirth: 1981,
    hourlyRate: 88,
    hoursWorked: 900
  },
  {
    name: 'pony',
    active: false,
    country: 'AUS',
    yearOfBirth: 2003,
    hourlyRate: 12,
    hoursWorked: 9000
  },
  {
    name: 'sunny boy',
    active: true,
    country: 'AUS',
    yearOfBirth: 2003,
    hourlyRate: 42,
    hoursWorked: 6450
  }
]

// get the total earnings of australian horses


function ausHorseEarnings(horses) {
  let totalEarnings = 0
  horses.forEach(horse => {
    if (horse.country === 'AUS'){
      horseEarnings = horse.hourlyRate * horse.hoursWorked
      if (horseEarnings > 50000){
        totalEarnings += horseEarnings
      }
    }})
  return totalEarnings
}

// alternate

function isAus(horse) {
  return horse.country === 'AUS'
}

function calcEarning(horse) {
  return horse.hourlyRate * horse.hoursWorked
}

function sum(num1, num2) {
  return num1 + num2
}

