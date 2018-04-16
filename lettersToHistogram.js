let n = prompt("Introduce N");
let alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
let printed = 0;

class MyString {
	constructor(input) {
		this.str = input;
	}
	frequency() {
		this.str = this.str.replace(/\s/g, '');
		let punctuationless = this.str.replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/g,"");
		let finalString = punctuationless.replace(/\s{2,}/g,'');
		finalString = finalString.toLowerCase();
		let letters = finalString.split("");
		let key = {};
		let c = letters.length;
		for(let i = 0;i<c;i++){
			if(key[letters[i]]) {
				key[letters[i]]++;
			}
			else {
				key[letters[i]] = 1;
			}
		}
		for(let al in alphabet) {
			printed = 0;
			for(let i in key){
				if(alphabet[al] == i) {
					console.log(i + ': '+key[i]);
					printed = 1;
				} 
			}
			if(printed == 0) {
				console.log(alphabet[al] + ': 0');
			}
		}
	}
	histogram() {
		this.str = this.str.replace(/\s/g, '');
		let punctuationless = this.str.replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/g,"");
		let finalString = punctuationless.replace(/\s{2,}/g,'');
		finalString = finalString.toLowerCase();
		let letters = finalString.split("");
		let key = {};
		let c = letters.length;
		for(let i = 0;i<c;i++){
			if(key[letters[i]]) {
				key[letters[i]]++;
			}
			else {
				key[letters[i]] = 1;
			}
		}
		for(let al in alphabet) {
			printed = 0;
			for(let i in key){
				if(alphabet[al] == i) {
					let asterik = "";
					for(let x = 0; x<key[i]; x++) {
						asterik = asterik + "*";
					}
					console.log(i + ': ' + asterik);
					printed = 1;
				}
			}
			if(printed == 0) {
				console.log(alphabet[al] + ':');
			}
		}
	}
}
if(n == "") {
	n = "Hello, World!";
}
let txt1 = new MyString(n);
//txt1.frequency();
txt1.histogram();