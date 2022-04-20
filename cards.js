/**
 * Returns the value of a pseudorandom playing card.
 * @return {number} Int between 1 and 52
 */
function dealCard() {
  return Math.floor(Math.random() * 52 + 1)
}

function dealN(n) {
  m = 0;
  x = new Array(53);
  x.fill(0);
  while (m < n) {
    x[dealCard()]++;
    m++;
  }
  return x
}

/**
 * Takes the value of a card and returns its suit.
 * @param {number} n 1-52
 * @returns {string} H | C | D | S
 */
function cardSuit(n) {
  s = new Array('H','C','D','S');
  x = Math.floor(n / 13);
  isAce = n % 13 == 0;
  return isAce ? s[(x - 1)] : s[x]
}

/**
 * Takes the value of a card and returns its value.
 * @param {number} n 1-52 
 * @returns {string} 2..10,J,Q,K,A
 */
function cardValue(n) {
  v = new Array('A','2','3','4','5','6','7','8','9','10','J','Q','K');
  return v[(n % 13)];
  }

  function dealN(n) {
  x = new Map();
  while (i=0 < n) {
    y = dealCard();
    c = cardValue(y) + cardSuit(y)
    count = x.has(c) ? x.get(c) : 0
    count++;
    x.set(c, count);
    i++;
  }
  return x
}
