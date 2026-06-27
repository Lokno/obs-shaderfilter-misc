uniform float audio_magnitude;

uniform float threshold<
    string label = "Activation Threshold";
    string widget_type = "slider";
    float minimum = 0.0;
    float maximum = 1.0;
    float step = 0.01;
> = 0.2;

uniform float rate_in<
    string label = "Fade In Rate";
    string widget_type = "slider";
    float minimum = 0.0;
    float maximum = 1.0;
    float step = 0.001;
> = 0.02;

uniform float rate_out<
    string label = "Fade Out Rate";
    string widget_type = "slider";
    float minimum = 0.0;
    float maximum = 1.0;
    float step = 0.001;
> = 0.010;

uniform texture2d previous_output;

#define MIN_STEP 0.004

float4 mainImage(VertData v_in) : TARGET
{
    float3 tex = image.Sample(textureSampler, v_in.uv).rgb;
    float prev = previous_output.Sample(textureSampler, v_in.uv).a;

    float inc = (step(threshold,audio_magnitude)-prev);

    if( inc > 0.0 ) inc *= rate_in;
    else inc *= rate_out;
    
    float curr = clamp(0.0,1.0,prev + sign(inc)*max(MIN_STEP,abs(inc)));

    return float4(tex, curr);
}
