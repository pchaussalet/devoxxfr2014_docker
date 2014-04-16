module.exports = {
	main: [
	  { post: 'http://localhost/add', form: {firstname: Math.floor(Math.random()*100000), lastname: Math.floor(Math.random()*100000), email: Math.floor(Math.random()*100000), telephone: Math.floor(Math.random()*100000)} },
	  { get: 'http://localhost/' },
	  { get: 'http://localhost/' }
	]
};
