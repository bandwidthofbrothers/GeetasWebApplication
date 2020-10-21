using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GeetasWebApplication.Startup))]
namespace GeetasWebApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
