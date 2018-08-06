// scroll event




window.addEventListener('scroll', function () {
  console.log('scrolling')
})


// scrollingElement scroll top - sort of liek an offset from the top

document.scrollingElement.scrollTo({
  top: 0,
  behavior: 'smooth'
})