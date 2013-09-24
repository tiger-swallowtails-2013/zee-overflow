describe('deafGramma', function () {
  it("asks you to speak up when you are not typing all caps", function() {
    var response = deafGramma("i like cats");
    expect(response).toEqual("SPEAK UP SONNY!");
  });
  it("Tells you not since 1984 when you are shouting", function() {
    var response = deafGramma("I LIKE CATS");
    expect(response).toEqual("NOT SINCE 1984");
  });
});

