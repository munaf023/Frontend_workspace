// let a = Math.floor(Math.random() * 3);
// let b = Math.floor(Math.random() * 3);
// let c = Math.floor(Math.random() * 3);

// let adj = {
//     1: "crazy",
//     2: "Amazing",
//     3: "Fire",
// }
// let sname = {
//     1: "Engine",
//     2: "Food",
//     3: "Garment",
// }
// let aword = {
//     1: "Bros",
//     2: "Limited",
//     3: "Hub",
// }

// console.log(`${adj[a]} ${sname[b]} ${aword[c]}`)



let random1 = Math.floor(Math.random() * 3);
let random2 = Math.floor(Math.random() * 3);
let random3 = Math.floor(Math.random() * 3);

const adj = {
  0: "Crazy",
  1: "Amazing",
  2: "Fire",
};

const shop = {
  0: "Engines",
  1: "Foods",
  2: "Garments",
};

const word = {
  0: "Limited",
  1: "Bros",
  2: "Hub",
};

let businessName = adj[random1].concat(` ${shop[random2]} ${word[random3]}`);

console.log(`Your new business name should be : "${businessName}"`);