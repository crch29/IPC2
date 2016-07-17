using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(quetzalexpress.Startup))]
namespace quetzalexpress
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
