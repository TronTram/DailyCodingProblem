var assert = require('assert');

function twoSum(list, target) {
  const setList = new Set(list);

  for (let i = 0; i < list.length; i++) {
    const neededNumber = target - list[i];

    if (setList.has(neededNumber)) {
      return true
    }
  }

  return false;
}

assert.equal(twoSum([10, 7, 1, 2], 17), true);
assert.equal(twoSum([1, 2], 17), false);