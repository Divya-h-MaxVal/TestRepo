({
	// Your renderer method overrides go here
	// 
	unrender: function () {
    this.superUnrender();
    console.log("unrendered");
}
})