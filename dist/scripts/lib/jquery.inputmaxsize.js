(function(){$.fn.inputmaxsize=function(t,i){var n;return null==i&&(i=0),n=parseInt(n,10),this.each(function(){var n,e,h;if(e=$(this),n=$("span",t),h=n.parent(),console.log(h.width(),n.width()),h.width()-i<n.width()){for(;h.width()-i<n.width();)n.text(n.text().slice(0,-1));e.val(n.text())}return this})}}).call(this);
//# sourceMappingURL=data:application/json;charset=utf8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImxpYi9qcXVlcnkuaW5wdXRtYXhzaXplLmNvZmZlZSIsImxpYi9qcXVlcnkuaW5wdXRtYXhzaXplLmpzIl0sIm5hbWVzIjpbIiQiLCJmbiIsImlucHV0bWF4c2l6ZSIsIiRlbGVtZW50VG9XYXRjaCIsIm9mZnNldFdpZHRoIiwibWF4Rm9udFNpemUiLCJwYXJzZUludCIsInRoaXMiLCJlYWNoIiwiaW5uZXJFbGVtZW50IiwiaW5wdXQiLCJwYXJlbnQiLCJjb25zb2xlIiwibG9nIiwid2lkdGgiLCJ0ZXh0Iiwic2xpY2UiLCJ2YWwiLCJjYWxsIl0sIm1hcHBpbmdzIjoiQ0FBRSxXQUFBQSxFQUFFQyxHQUFHQyxhQUFlLFNBQUNDLEVBQWlCQyxHQUNwQyxHQUFBQyxFQ01BLE9BSm1CLE9BQWZELElESGdDQSxFQUFjLEdBQ2xEQyxFQUFjQyxTQUFTRCxFQUFhLElBQ3BDRSxLQUFDQyxLQUFLLFdBQ0osR0FBQUMsR0FBQUMsRUFBQUMsQ0FLQSxJQUxBRCxFQUFRVixFQUFFTyxNQUNWRSxFQUFlVCxFQUFFLE9BQVFHLEdBQ3pCUSxFQUFTRixFQUFhRSxTQUN0QkMsUUFBUUMsSUFBSUYsRUFBT0csUUFBU0wsRUFBYUssU0FFdENILEVBQU9HLFFBQVVWLEVBQWNLLEVBQWFLLFFBQS9DLENBQ0UsS0FBTUgsRUFBT0csUUFBVVYsRUFBY0ssRUFBYUssU0FDaERMLEVBQWFNLEtBQUtOLEVBQWFNLE9BQU9DLE1BQU0sTUFFOUNOLEdBQU1PLElBQUlSLEVBQWFNLFFDT3pCLE1ETkFSLFdDVUhXLEtBQUtYIiwiZmlsZSI6ImxpYi9qcXVlcnkuaW5wdXRtYXhzaXplLmpzIiwic291cmNlc0NvbnRlbnQiOlsiICAkLmZuLmlucHV0bWF4c2l6ZSA9ICgkZWxlbWVudFRvV2F0Y2gsIG9mZnNldFdpZHRoID0gMCkgLT5cbiAgICBtYXhGb250U2l6ZSA9IHBhcnNlSW50KG1heEZvbnRTaXplLCAxMClcbiAgICBAZWFjaCAtPlxuICAgICAgaW5wdXQgPSAkKHRoaXMpXG4gICAgICBpbm5lckVsZW1lbnQgPSAkKCdzcGFuJywgJGVsZW1lbnRUb1dhdGNoKVxuICAgICAgcGFyZW50ID0gaW5uZXJFbGVtZW50LnBhcmVudCgpXG4gICAgICBjb25zb2xlLmxvZyBwYXJlbnQud2lkdGgoKSwgaW5uZXJFbGVtZW50LndpZHRoKClcblxuICAgICAgaWYgcGFyZW50LndpZHRoKCkgLSBvZmZzZXRXaWR0aCA8IGlubmVyRWxlbWVudC53aWR0aCgpXG4gICAgICAgIHdoaWxlIHBhcmVudC53aWR0aCgpIC0gb2Zmc2V0V2lkdGggPCBpbm5lckVsZW1lbnQud2lkdGgoKVxuICAgICAgICAgIGlubmVyRWxlbWVudC50ZXh0KGlubmVyRWxlbWVudC50ZXh0KCkuc2xpY2UoMCwgLTEpKVxuXG4gICAgICAgIGlucHV0LnZhbChpbm5lckVsZW1lbnQudGV4dCgpKVxuICAgICAgdGhpc1xuIiwiKGZ1bmN0aW9uKCkge1xuICAkLmZuLmlucHV0bWF4c2l6ZSA9IGZ1bmN0aW9uKCRlbGVtZW50VG9XYXRjaCwgb2Zmc2V0V2lkdGgpIHtcbiAgICB2YXIgbWF4Rm9udFNpemU7XG4gICAgaWYgKG9mZnNldFdpZHRoID09IG51bGwpIHtcbiAgICAgIG9mZnNldFdpZHRoID0gMDtcbiAgICB9XG4gICAgbWF4Rm9udFNpemUgPSBwYXJzZUludChtYXhGb250U2l6ZSwgMTApO1xuICAgIHJldHVybiB0aGlzLmVhY2goZnVuY3Rpb24oKSB7XG4gICAgICB2YXIgaW5uZXJFbGVtZW50LCBpbnB1dCwgcGFyZW50O1xuICAgICAgaW5wdXQgPSAkKHRoaXMpO1xuICAgICAgaW5uZXJFbGVtZW50ID0gJCgnc3BhbicsICRlbGVtZW50VG9XYXRjaCk7XG4gICAgICBwYXJlbnQgPSBpbm5lckVsZW1lbnQucGFyZW50KCk7XG4gICAgICBjb25zb2xlLmxvZyhwYXJlbnQud2lkdGgoKSwgaW5uZXJFbGVtZW50LndpZHRoKCkpO1xuICAgICAgaWYgKHBhcmVudC53aWR0aCgpIC0gb2Zmc2V0V2lkdGggPCBpbm5lckVsZW1lbnQud2lkdGgoKSkge1xuICAgICAgICB3aGlsZSAocGFyZW50LndpZHRoKCkgLSBvZmZzZXRXaWR0aCA8IGlubmVyRWxlbWVudC53aWR0aCgpKSB7XG4gICAgICAgICAgaW5uZXJFbGVtZW50LnRleHQoaW5uZXJFbGVtZW50LnRleHQoKS5zbGljZSgwLCAtMSkpO1xuICAgICAgICB9XG4gICAgICAgIGlucHV0LnZhbChpbm5lckVsZW1lbnQudGV4dCgpKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiB0aGlzO1xuICAgIH0pO1xuICB9O1xuXG59KS5jYWxsKHRoaXMpO1xuIl19
