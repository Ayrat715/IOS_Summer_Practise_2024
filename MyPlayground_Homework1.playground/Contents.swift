class Car {
    var brand: String
    var model: String
    var yearOfIssue: Int
    var MileTime: Double
    
    init(brand: String, model: String, yearOfIssue: Int, MileTime: Double) {
        self.brand = brand
        self.model = model
        self.yearOfIssue = yearOfIssue
        self.MileTime = MileTime
    }
    
    func carInfo(){
        print("Автомобиль \(brand) \(model), год выпуска: \(yearOfIssue). Проезжает 1 милю за \(MileTime) секунд")
    }
}

class BMW: Car {
    var enginePower: Int
    var fuelConsumption: Double
    
    init(brand: String, model: String, yearOfIssue: Int, MileTime: Double, enginePower: Int, fuelConsumption: Double) {
        self.enginePower = enginePower
        self.fuelConsumption = fuelConsumption
        super.init(brand: brand, model: model, yearOfIssue: yearOfIssue, MileTime: MileTime)
    }
    
    override func carInfo() {
        super.carInfo()
        print("Мощность двигателя: \(enginePower) л.с., расход топлива: \(fuelConsumption) л/100 км")
    }
}

class Audi: Car {
    var maxSpeed: Int
    var acceleration: Double
    
    init(brand: String, model: String, yearOfIssue: Int, MileTime: Double, maxSpeed: Int, acceleration: Double) {
        self.maxSpeed = maxSpeed
        self.acceleration = acceleration
        super.init(brand: brand, model: model, yearOfIssue: yearOfIssue, MileTime: MileTime)
    }
    
    override func carInfo() {
        super.carInfo()
        print("Максимальная скорость: \(maxSpeed) км/ч, ускорение: \(acceleration) с. до 100 км/ч")
    }
}

class Mercedes: Car {
    var comfortLevel: Int
    var safetyRating: Double
    
    init(brand: String, model: String, yearOfIssue: Int, MileTime: Double, comfortLevel: Int, safetyRating: Double) {
        self.comfortLevel = comfortLevel
        self.safetyRating = safetyRating
        super.init(brand: brand, model: model, yearOfIssue: yearOfIssue, MileTime: MileTime)
    }
    
    override func carInfo() {
        super.carInfo()
        print("Уровень комфорта: \(comfortLevel)/10, уровень безопасности: \(safetyRating)/10")
    }
}

class Tesla: Car {
    var batteryLife: Int
    var autopilotVersion: String
    
    init(brand: String, model: String, yearOfIssue: Int, MileTime: Double, batteryLife: Int, autopilotVersion: String) {
        self.batteryLife = batteryLife
        self.autopilotVersion = autopilotVersion
        super.init(brand: brand, model: model, yearOfIssue: yearOfIssue, MileTime: MileTime)
    }
    
    override func carInfo() {
        super.carInfo()
        print("Запас хода: \(batteryLife) км, версия автопилота: \(autopilotVersion)")
    }
}

func createCars() -> [Car] {
    return [
        BMW(brand: "BMW", model: "X6", yearOfIssue: 2022, MileTime: 8.0, enginePower: 450, fuelConsumption: 10.5),
        Audi(brand: "Audi", model: "Q7", yearOfIssue: 2021, MileTime: 9.1, maxSpeed: 250, acceleration: 4.5),
        Mercedes(brand: "Mercedes", model: "C-Class", yearOfIssue: 2023, MileTime: 7.6, comfortLevel: 9, safetyRating: 5.0),
        Tesla(brand: "Tesla", model: "Model S Plaid", yearOfIssue: 2022, MileTime: 2.8, batteryLife: 600, autopilotVersion: "v10.2"),
        BMW(brand: "BMW", model: "M3", yearOfIssue: 2020, MileTime: 7.4, enginePower: 510, fuelConsumption: 9.0),
        Audi(brand: "Audi", model: "A8", yearOfIssue: 2019, MileTime: 11.1, maxSpeed: 240, acceleration: 5.9),
        Mercedes(brand: "Mercedes", model: "GT 63", yearOfIssue: 2021, MileTime: 2.9, comfortLevel: 8, safetyRating: 4.5),
        Tesla(brand: "Tesla", model: "Model X", yearOfIssue: 2020, MileTime: 3.0, batteryLife: 580, autopilotVersion: "v10.1")
    ]
}

func performRaceRound(cars: [Car]) -> [Car] {
    var winners = [Car]()
    
    for i in stride(from: 0, to: cars.count, by: 2) {
        let car1 = cars[i]
        let car2 = cars[i + 1]
        
        print("Гонка между")
        car1.carInfo()
        print("и")
        car2.carInfo()
        
        let winner = car1.MileTime < car2.MileTime ? car1 : car2
        print("Победитель: \(winner.brand) \(winner.model)\n")
        winners.append(winner)
    }
    
    return winners
}

func raceTournament(cars: [Car]) {
    var remainingCars = cars.shuffled()
    
    print("В турнире участвуют \(remainingCars.count) машин\n")
    
    print("Раунд 1:\n")
    let round1Winners = performRaceRound(cars: remainingCars)
    
    print("Раунд 2:\n")
    let round2Winners = performRaceRound(cars: round1Winners)
    
    print("Rаунд 3 (Финал):\n")
    let finalWinners = performRaceRound(cars: round2Winners)
    
    if let champion = finalWinners.first {
        print("Абсолютный победитель: \(champion.brand) \(champion.model)")
    }
}

let cars = createCars()

raceTournament(cars: cars)
