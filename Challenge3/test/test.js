var assert = require('assert');
var getkeyValue = require('../index.js');

console.log(getkeyValue);

var object = {
    firstName: "Navneet",
    lastName: "Verma",
    address: {
        home: {
            address: {
                1: "38",
                2: "Cornel road"
            }
        }
    },
    bankdetails : {
        account: {
            type: "Savings",
            branch: "NewCastle",
            bankname: "HSBC",
        }
    }
};
describe('Index', function() {
  describe('#getkeyValue', function() {
    it('Should throw error for invalid JSON', function() {
      assert.throws(function () { getkeyValue("", ["key"]) }, Error, "Invalid JSON");
    });
    it('Should throw error for invalid Keys', function() {
      assert.throws(function () { getkeyValue(object, []) }, Error, "Invalid Keys");
    });
    it('Should give the firstname ', function () {
          assert.equal(getkeyValue(object,['firstName']), object.firstName);
    });  
    it('Should give the  object.address.home.addressLines', function () {
          assert.equal(getkeyValue(object,[ "address", "home", "address"]), object.address.home.address);
    });
    it('Should give the  object.address.home.addressLines[2]', function () {
          assert.equal(getkeyValue(object,[ "address", "home", "address","2"]), object.address.home.address[2]);
    });
    it('Should give the  object.bankdetails.account.type', function () {
      assert.equal(getkeyValue(object,[ "bankdetails", "account", "type"]), object.bankdetails.account.type);
    });    
    it('Should give the null', function () {
          assert.equal(getkeyValue(object,["hello", "nono", "hello"]), null);
    }); 
  });
});