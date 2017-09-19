song = [["row", 3], ["your", 1], ["boat", 1]];


function row(song){
  new_arr = [];

  song.forEach(function(each_sub_array){
    for (var i = 0; i < each_sub_array[1]; i++) {
      new_arr.push(each_sub_array[0]);
    }
  });

  return new_arr
}


console.log(row(song));
