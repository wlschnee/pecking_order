$(document).ready(function(){
  $('span#rabbit').effect("bounce", {distance: 100}, "slow")
  $('span#panda').effect("shake", {distance: 5}, "slow" )
  $('span#rabbit').tooltip({
    placement : 'top',
    html : true,
    trigger : 'hover', //<--- you need a trigger other than manual
    delay: { 
       show: "0", 
       hide: "500"
    },
  })
  $('span#panda').tooltip({
    placement : 'top',
    html : true,
    trigger : 'hover', //<--- you need a trigger other than manual
    delay: { 
       show: "0", 
       hide: "500"
    },
  })
  $('span#turtle').tooltip({
    placement : 'top',
    html : true,
    trigger : 'hover', //<--- you need a trigger other than manual
    delay: { 
       show: "0", 
       hide: "500"
    },
  })
})