$( document ).ready(function() {

  var menuLeft = document.getElementById('spmenu-s1'),
    showLeftPush = document.getElementById('showLeftPush'),
    body = document.body;

  showLeftPush.onclick = function() {
    classie.toggle(this, 'active');
    classie.toggle(body, 'spmenu-push-toright');
    classie.toggle(menuLeft, 'spmenu-open');
    disableOther('showLeftPush');
  };

  function disableOther(button) {

    if (button !== 'showLeftPush') {
      classie.toggle(showLeftPush, 'disabled');
    }
  }
});

