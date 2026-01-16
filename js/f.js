// i stole this from jeffalo :)
// javascript:(function(){['', '-ms-', '-webkit-', '-o-', '-moz-'].map(function(prefix){document.body.style[prefix + 'transform'] = 'rotate(180deg)';});}())
['', '-ms-', '-webkit-', '-o-', '-moz-'].forEach(prefix => {
  document.body.style[prefix + 'transform'] = 'rotate(180deg)';
});
export {};
