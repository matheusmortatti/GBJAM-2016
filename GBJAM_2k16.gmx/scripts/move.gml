/// move(x, y, amountx, amounty)

var _x = argument[0];
var _y = argument[1];
var amountx = argument[2];
var amounty = argument[3];

// Horizontal
repeat (abs(amountx)) {
    if (!place_meeting(_x + sign(amountx), _y,  obj_solid)) {
        _x += sign(amountx);
    }
    else {
        amountx = 0;
        break;
    }
}

// Vertical
repeat (abs(amounty)) {
    if (!place_meeting(_x , _y + sign(amounty),  obj_solid)) {
        _y += sign(amounty);
    }
    else {
        amounty = 0;
        break;
    }
}
