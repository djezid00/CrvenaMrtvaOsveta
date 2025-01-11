// Inherit the parent event
event_inherited();

// Basic properties
hp = 500;
spd = 0; // Enemy is stationary
dir = 0;
face = 0;

// Shooting properties
shoot_interval = 13; // Time between bullets (60 bullets/min = 1 bullet/sec)
shoot_duration = 1000; // Shooting lasts for 20 seconds
cooldown_time = 500; // Cooldown lasts for 10 seconds

shoot_timer = 0; // Timer for bullet intervals
state_timer = 0; // Tracks how long in the current state

// Bullet instance
bulletInst = noone;

// State machine
state = 0; // 0 = Shooting, 1 = Cooldown

sprite[0] = sAngryFatman;
sprite[1] = sAngryFatmanShooting;