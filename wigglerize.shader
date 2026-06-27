uniform float speed<
    string label = "Speed";
    string widget_type = "slider";
    float minimum = 0.0;
    float maximum = 1.0;
    float step = 0.001;
> = 0.06;

uniform texture2d previous_output;

float4 mainImage(VertData v_in) : TARGET
{
	float4 color;
	float x = 1.0-(elapsed_time_active * speed);

    if( v_in.uv.x < x )
    {
         color = image.Sample(textureSampler, v_in.uv);
    }
    else
    {
         color = previous_output.Sample(textureSampler, v_in.uv);
    }

	return color;
}
