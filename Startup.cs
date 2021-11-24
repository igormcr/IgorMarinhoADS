using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebApplication1_IgorMarinhoCarneiroRodrigues2021.Startup))]
namespace WebApplication1_IgorMarinhoCarneiroRodrigues2021
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
