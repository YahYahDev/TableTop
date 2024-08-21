#ifdef GL_ES
precision mediump float;
#endif

float normalizeFloat(float value, float minValue, float maxValue) {
    return (value - minValue) / (maxValue - minValue);
}

uniform vec2 u_resolution;

uniform float u_time;
void main(){

    vec2 position = gl_FragCoord.xy / u_resolution;


    vec3 color = vec3( 0.5 * sin(position.x + position.y) * normalizeFloat(dot(u_time, normalizeFloat(u_time, 0.0, 1.0)), 0.0, 1.0), 0.0, sin(position.x + position.y) * sin(u_time));

    gl_FragColor = vec4(color, 1.0);
}
