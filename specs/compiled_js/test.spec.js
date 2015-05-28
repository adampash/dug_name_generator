var Test;

Test = require('./../src/javascript/test.coffee');

describe("A thing", function() {
  it("is true or false", function() {
    return expect(true).toBe(true);
  });
  it("works with requires", function() {
    return expect(Test.init()).toEqual('okay');
  });
  return it("tests something else", function() {
    return expect(Test.foo()).toEqual(true);
  });
});
