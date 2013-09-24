describe('DeafGramma', function () {
  it("asks you to speak up when you are not typing all caps", function() {
    var gramma = new DeafGramma();
    gramma.tell("i like cats");
    expect(gramma.response).toEqual("SPEAK UP SONNY!");
  });
  it("Tells you not since 1984 when you are shouting", function() {
    var gramma = new DeafGramma();
    gramma.tell("I LIKE CATS");
    expect(gramma.response).toEqual("NOT SINCE 1984");
  });
});

