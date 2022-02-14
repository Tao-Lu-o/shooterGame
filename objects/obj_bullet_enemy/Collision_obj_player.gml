/// @description Bullet collides with player

// Decrement player health by the bullet
// damage.
other.hp -= atk;
audio_play_sound(snd_damage,1,false)

// Destroy this bullet.
// Also cause a Destroy event.
instance_destroy(id, true);
