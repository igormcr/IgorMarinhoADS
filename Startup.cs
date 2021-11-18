using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IgorMarinho_WebApp.Startup))]
namespace IgorMarinho_WebApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
