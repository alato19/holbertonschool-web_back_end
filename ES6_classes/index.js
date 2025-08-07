class City {
    #location = "Center";

    makePublic() {
        return this.#location;
    }
}

const Tirana = new City();

console.log("---Tirana---", Tirana.location);

console.log("---Tirana---", Tirana.makePublic())