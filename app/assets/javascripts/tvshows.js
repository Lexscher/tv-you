// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// I'll try to get back to this later
// (function() {
//     console.log("Javascript is running, Francis.")


//     let tvShows = document.querySelectorAll(".index-tvshow"),
//         posters = document.querySelectorAll(".poster");

//     let mouse = {
//         _x: 0,
//         _y: 0,
//         x: 0,
//         y: 0,
//         updatePosition: (event) => {
//         let e = event || window.event;
//         this.x = e.clientX - this._x;
//         this.y = (e.clientY - this._y) * -1;
//         },
//         setOrigin: (e) => {
//         this._x = e.offsetLeft + Math.floor(e.offsetWidth / 2);
//         this._y = e.offsetTop + Math.floor(e.offsetHeight / 2);
//         },
//         show: () => {
//         return "(" + this.x + ", " + this.y + ")";
//         }
//     };
    
//     tvShows.forEach(tvShow => {
//         mouse.setOrigin(tvShow)
//     })

//     let counter = 0;
//     let refreshRate = 10;
//     let isTimeToUpdate = () => {
//         return counter++ % refreshRate === 0;
//     };


//     let onMouseEnterHandler = (event) => {
//         update(event);
//     };

//     let onMouseLeaveHandler = () => {
//         posters.forEach(poster => {
//             poster.style = "";
//         })
//     };

//     let onMouseMoveHandler = (event) => {
//         if (isTimeToUpdate()) {
//         update(event);
//         }
//     };


//     let update = (event) => {
//         mouse.updatePosition(event);
//         updateTransformStyle(
//         (mouse.y / poster.offsetHeight / 2).toFixed(2),
//         (mouse.x / poster.offsetWidth / 2).toFixed(2)
//         );
//     };

//     let updateTransformStyle = (x, y) => {
//         let style = "rotateX(" + x + "deg) rotateY(" + y + "deg)";
//         posters.forEach(poster => {
//             poster.style.transform = style;
//             poster.style.webkitTransform = style;
//             poster.style.mozTranform = style;
//             poster.style.msTransform = style;
//             poster.style.oTransform = style;
//         })
//     };

//     tvShows.forEach(tvShow => {
//         tvShow.onmousemove = onMouseMoveHandler;
//         tvShow.onmouseleave = onMouseLeaveHandler;
//         tvShow.onmouseenter = onMouseEnterHandler;
//     })
// })();
