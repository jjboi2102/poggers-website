// i stole this from jeffalo :)
['', '-ms-', '-webkit-', '-o-', '-moz-'].forEach(prefix => {
  document.body.style[prefix + 'transform'] = 'rotate(180deg)';
});
export {};
