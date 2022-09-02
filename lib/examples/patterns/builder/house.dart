class House {
  final Windows windows;
  final Dors doors;
  final Wals wals;
  final Roof roof;

  House(this.windows, this.doors, this.wals, this.roof);
}

class Windows {}

class Dors {}

class Wals {}

class Roof {}

class HouseBuilder {
  Windows? windows;
  Dors? dors;
  Wals? wals;
  Roof? roof;

  HouseBuilder buildWals(Wals wals) {
    this.wals = wals;
    return this;
  }

  HouseBuilder buildDors(Dors dors) {
    this.dors = dors;
    return this;
  }

  HouseBuilder buildWindows(Windows windows) {
    this.windows = windows;
    return this;
  }

  HouseBuilder buildRoof(Roof roof) {
    this.roof = roof;
    return this;
  }

  House build() {
    if (windows == null || dors == null || roof == null || wals == null) {
      throw "cant build a house";
    }
    return House(windows!, dors!, wals!, roof!);
  }
}
