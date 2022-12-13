// This is the pseudo code for the ttk calculator app

# include <iostream>
# include <cmath>
using namespace std;
int main()
{
    // The parameters of the AK-47
    const float damage = 33; //dps
    int fire_interval = 0.110; // in ms
    int bullet_speed = 800;  // m/s
    int first_range = 15; // meters
    int second_range = 30;
    int third_range = 45;
    int fourth_range = 60;

    float mp_health = 100; // enemy health in multi-player is less than BR
    float one_plate_health = 150; // each shield plate offers +50 hp
    float two_plate_health = 200;
    float three_plate_health = 250;
    float kinetic_armor = 300;

    /* now to calculate ttk:
    hp - dps = remaining health;
    hp/dps = x+1 bullets (c++ truncates values)
    time taken to do damage (tt)= range/bullet speed;
    ttk = (tt)*(x+1) + fire_interval*(x-1)
    C++ truncates our hp/damage
    the damage goes like this: 1st shot is fired, travels y meters and hits target to deliver 33 damage
                               b4 the 2nd shot is fired a 0.11s delay is experienced.
                               2nd shot fired, travels y meters, does 33 damage.
                               repeat process until no hp left
                               So the formula for ttk becomes:
                                    */
    cout <<"It takes " << round(mp_health/damage) + 1 << " to kill in mp \nttk is";


    return 0;




}
