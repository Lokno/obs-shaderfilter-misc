uniform float speed<
    string label = "Speed";
    string widget_type = "slider";
    float minimum = 0.0;
    float maximum = 1.0;
    float step = 0.001;
> = 0.06;

uniform float thickness<
    string label = "Line Thickness";
    string widget_type = "slider";
    float minimum = 0.0;
    float maximum = 0.1;
    float step = 0.001;
> = 0.006;

uniform float4 Line_Color = {1,0,0,1};
uniform texture2d previous_output;

float4 mainImage(VertData v_in) : TARGET
{
	float4 color;
	float x = 1.0-(elapsed_time_active * speed);

    color = image.Sample(textureSampler, v_in.uv);
    if(abs(v_in.uv.x - x) < thickness)
    {
        color = Line_Color;
    }

	return color;
}
